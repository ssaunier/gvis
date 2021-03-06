# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gvis/version"

Gem::Specification.new do |s|
  s.name        = "gvis"
  s.version     = Gvis::VERSION
  s.platform    = Gem::Platform::RUBY
  s.author      = "Jeremy Olliver"
  s.email       = "jeremy.olliver@gmail.com"
  s.homepage    = "http://github.com/jeremyolliver/gvis"
  s.summary     = "Easily embed charts with Google Visualization API"
  s.description = "Easily embed charts with Google Visualization API, using ruby formatted options in your view files"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency 'json'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'coveralls'
  # Although this runs on rails 3, I'm only specifying this as development dependency for now,
  # (instead of runtime dependency) since rails can be vendored and need not be installed/required as gems
  s.add_development_dependency 'actionpack', '> 3.0.0'
end
