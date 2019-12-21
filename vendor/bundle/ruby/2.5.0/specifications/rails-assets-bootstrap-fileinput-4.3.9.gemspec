# -*- encoding: utf-8 -*-
# stub: rails-assets-bootstrap-fileinput 4.3.9 ruby lib

Gem::Specification.new do |s|
  s.name = "rails-assets-bootstrap-fileinput".freeze
  s.version = "4.3.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["rails-assets.org".freeze]
  s.date = "2017-04-03"
  s.description = "An enhanced HTML 5 file input for Bootstrap 3.x with file preview, multiple selection, ajax uploads, and more features.".freeze
  s.homepage = "https://github.com/kartik-v/bootstrap-fileinput".freeze
  s.licenses = ["BSD-3-Clause".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "An enhanced HTML 5 file input for Bootstrap 3.x with file preview, multiple selection, ajax uploads, and more features.".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails-assets-jquery>.freeze, [">= 1.9.0"])
      s.add_runtime_dependency(%q<rails-assets-bootstrap>.freeze, ["~> 3"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rails-assets-jquery>.freeze, [">= 1.9.0"])
      s.add_dependency(%q<rails-assets-bootstrap>.freeze, ["~> 3"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rails-assets-jquery>.freeze, [">= 1.9.0"])
    s.add_dependency(%q<rails-assets-bootstrap>.freeze, ["~> 3"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
