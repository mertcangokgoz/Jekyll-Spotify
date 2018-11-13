# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-spotify/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-spotify"
  spec.version       = Jekyll::Spotify::VERSION
  spec.authors       = ["MertcanGokgoz"]
  spec.email         = ["mertcan.gokgoz@gmail.com"]
  spec.date          = "2018-11-13"
  spec.required_ruby_version = '>= 2.0.0'

  spec.summary       = %q{Jekyll-Spotify Easily output Spotify Embed Player}
  spec.description   = %q{Easily output Spotify Embed Player}
  spec.homepage      = "https://github.com/MertcanGokgoz/Jekyll-Spotify"
  spec.license       = "MIT"

  spec.files         = "lib/spotify.rb"

  spec.add_dependency "jekyll", "~> 3.0"
  spec.add_development_dependency "bundler", "~> 1.6"
end
