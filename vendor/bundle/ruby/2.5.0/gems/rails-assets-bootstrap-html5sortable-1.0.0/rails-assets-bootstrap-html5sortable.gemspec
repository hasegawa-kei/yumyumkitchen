# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-assets-bootstrap-html5sortable/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-assets-bootstrap-html5sortable"
  spec.version       = RailsAssetsBootstrapHtml5sortable::VERSION
  spec.authors       = ["rails-assets.org"]
  spec.description   = "Bootstrap HTML5 Sortable lightweight jQuery plugin to create sortable lists and grids using native HTML5 drag and drop API."
  spec.summary       = "Bootstrap HTML5 Sortable lightweight jQuery plugin to create sortable lists and grids using native HTML5 drag and drop API."
  spec.homepage      = "https://github.com/psfpro/html5sortable"
  spec.license       = "MIT"

  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
