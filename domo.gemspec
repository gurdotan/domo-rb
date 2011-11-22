# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.push(lib) unless $:.include?(lib)
require 'rake/gempackagetask'
require './lib/domo/version'

 
Gem::Specification.new do |s|
  s.name        	 = "domo"
  s.version     	 = Domo::VERSION
  s.platform    	 = Gem::Platform::RUBY
  s.date			 = Time.now.utc.strftime("%Y-%m-%d")
  s.authors     	 = ["Gur Dotan"]
  s.email       	 = "gurdotan@gmail.com"
  s.homepage    	 = "http://github.com/gurdotan/domo.rb"
  s.summary     	 = "Utility functions for domain strings"
  s.require_path 	 = ["lib"]
  s.has_rdoc 		 = false
  s.extra_rdoc_files = ["README.md"]
  s.files         	 = `git ls-files`.split("\n")
  s.test_files    	 = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.required_rubygems_version = ">= 1.3.6"
  s.add_development_dependency "rspec"
end

