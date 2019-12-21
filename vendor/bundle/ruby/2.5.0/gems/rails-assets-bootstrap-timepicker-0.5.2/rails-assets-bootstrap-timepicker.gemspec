# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails-assets-bootstrap-timepicker/version'

Gem::Specification.new do |spec|
  spec.name          = "rails-assets-bootstrap-timepicker"
  spec.version       = RailsAssetsBootstrapTimepicker::VERSION
  spec.authors       = ["rails-assets.org"]
  spec.description   = "A timepicker component for Twitter Bootstrap"
  spec.summary       = "A timepicker component for Twitter Bootstrap"
  spec.homepage      = "https://github.com/jdewit/bootstrap-timepicker"
  spec.license       = "MIT"

  spec.files         = `find ./* -type f | cut -b 3-`.split($/)
  spec.require_paths = ["lib"]

  spec.add_dependency "rails-assets-bootstrap", ">= 3.0", "< 4"
  spec.add_dependency "rails-assets-jquery", ">= 2.0", "< 3"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
