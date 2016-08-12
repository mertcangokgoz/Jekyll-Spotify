# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-spotify/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-spotify"
  spec.version       = Jekyll::Spotify::VERSION
  spec.authors       = ["MertcanGokgoz"]
  spec.email         = ["mertcan.gokgoz@gmail.com"]
  spec.date          = "2016-08-13"
  spec.rubygems_version = "2.4.6"

  spec.summary       = %q{Jekyll-Spotify Easily output Spotify Embed Player}
  spec.description   = %q{Easily output Spotify Embed Player}
  spec.homepage      = "https://github.com/MertcanGokgoz/Jekyll-Spotify"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "jekyll", ">= 3.1.0", "< 3.2.0"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rubocop", "~> 0.42"
end
