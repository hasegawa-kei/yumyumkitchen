# log directory
error_log  /var/www/yumyumkitchen/current/log/nginx.error.log;
access_log /var/www/yumyumkitchen/current/log/nginx.access.log; 
# max body size
client_max_body_size 2G;
upstream app_server {
  # for UNIX domain socket setups
  server unix:/var/www/yumyumkitchen/current/lib/.unicorn.sock fail_timeout=0;
}
server {
  listen 80;
  server_name www.yumyumkitchen.work;
  # nginx so increasing this is generally safe...
  keepalive_timeout 5;
  # path for static files
  root /var/www/yumyumkitchen/current/public;
  # page cache loading
  try_files $uri/index.html $uri.html $uri @app;
  location @app {
    # HTTP headers
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header Host $http_host;
    proxy_redirect off;
    proxy_pass http://app_server;
  }
  # Rails error pages
  error_page 500 502 503 504 /500.html;
  location = /500.html {
    root /var/www/yumyumkitchen/current/public;
  }
}