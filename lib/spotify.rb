# Title: Simple Spotify tag for Jekyll
# Author: Mertcan GOKGOZ https://mertcangokgoz.com
# Description: Easily output Spotify Embed Player.
#
# Syntax: {% spotify [spotify-uri] [width height] %}
#
# Example: {% spotify spotify:track:3fuNydG9kg2Y09i8Foqq0p  %}
# Example2: {% spotify spotify:track:3fuNydG9kg2Y09i8Foqq0p 200 300 %}
#
#
# Output: <iframe src="https://embed.spotify.com/?uri=spotify%3Atrack%3A3fuNydG9kg2Y09i8Foqq0p"
#           width="100%" height="300" frameborder="0" allowtransparency="true"></iframe>
#

module Jekyll
  class Spotify < Liquid::Tag

    def initialize(tag_name, id, tokens)
        super
        @id       = id
    end

    def render(context)
      @id, @width, @height = @id.split(' ').map(&:strip)

      if @width.nil? && @height.nil?
        @width = '100%'
        @height = '300'
      end

      if @id
        %(<iframe src=\"https://embed.spotify.com/?uri=#{@id}\" width=\"#{@width}\" height=\"#{@height}\" frameborder=\"0\" allowtransparency=\"true\"></iframe>)
      else
        %(Error input, expected syntax: {% spotify id [width] [height] %})
      end
    end
  end
end

Liquid::Template.register_tag('spotify', Jekyll::Spotify)
