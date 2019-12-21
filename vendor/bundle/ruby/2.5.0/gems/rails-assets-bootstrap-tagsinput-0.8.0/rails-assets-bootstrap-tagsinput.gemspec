# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-assets-bootstrap-tagsinput/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-assets-bootstrap-tagsinput"
  spec.version       = RailsAssetsBootstrapTagsinput::VERSION
  spec.authors       = ["rails-assets.org"]
  spec.description   = "jQuery plugin providing a Twitter Bootstrap user interface for managing tags."
  spec.summary       = "jQuery plugin providing a Twitter Bootstrap user interface for managing tags."
  spec.homepage      = "https://github.com/TimSchlechter/bootstrap-tagsinput"
  spec.license       = "MIT"

  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_dependency "rails-assets-jquery", "~> 2.1.1"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
