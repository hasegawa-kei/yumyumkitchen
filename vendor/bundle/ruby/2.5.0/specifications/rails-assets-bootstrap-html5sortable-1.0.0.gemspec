# -*- encoding: utf-8 -*-
# stub: rails-assets-bootstrap-html5sortable 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rails-assets-bootstrap-html5sortable".freeze
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["rails-assets.org".freeze]
  s.date = "2016-05-22"
  s.description = "Bootstrap HTML5 Sortable lightweight jQuery plugin to create sortable lists and grids using native HTML5 drag and drop API.".freeze
  s.homepage = "https://github.com/psfpro/html5sortable".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Bootstrap HTML5 Sortable lightweight jQuery plugin to create sortable lists and grids using native HTML5 drag and drop API.".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
