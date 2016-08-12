# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-spotify/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-spotify"
  spec.version       = Jekyll::Spotify::VERSION
  spec.authors       = ["MertcanGokgoz"]
  spec.email         = ["mertcan.gokgoz@gmail.com"]

  spec.summary       = %q{Easily output Spotify Embed Player}
  spec.description   = %q{Easily output Spotify Embed Player}
  spec.homepage      = "https://github.com/MertcanGokgoz/Jekyll-Spotify"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'jekyll' , "~> 3.0"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
