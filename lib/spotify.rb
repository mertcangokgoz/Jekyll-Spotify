# Title: Simple Spotify tag for Jekyll
# Author: Mertcan GOKGOZ https://mertcangokgoz.com
# Description: Easily output Spotify Embed Player.
#
# Syntax: {% spotify [spotify-uri] %}
#
# Example: {% spotify spotify:track:3fuNydG9kg2Y09i8Foqq0p %}
#
#
# Output: <iframe src="https://embed.spotify.com/?uri=spotify%3Atrack%3A3fuNydG9kg2Y09i8Foqq0p"
#           width="300" height="380" frameborder="0" allowtransparency="true"></iframe>
#

module Jekyll
  class Spotify < Liquid::Tag
    @width = 300
    @height = 300

    def initialize(name, id, tokens)
      super
      @id = id
    end

    def render(context)
      %(<iframe src="https://embed.spotify.com/?uri=#{@id}" width="#{@width}" height="#{@height}" frameborder="0" allowtransparency="true"></iframe>)
    end
  end
end

Liquid::Template.register_tag('spotify', Jekyll::Spotify)
