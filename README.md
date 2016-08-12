[![Gem Version](https://badge.fury.io/rb/jekyll-spotify.svg)](https://badge.fury.io/rb/jekyll-spotify)

# Jekyll Spotify

This Jekyll pluging provides a tag that takes Spotify URI and generates a html snippet to embed player your site.

## Installation

Add gemfile

```
gem 'jekyll-spotify', '~> 0.0.1'
```

Execute

```
bundle
```

Alternative install the gem

```
gem install jekyll-spotify
```

and put this `_config.yml`

```
gems: [jekyll-spotify]
```

## Usage

```
{% spotify spotify:track:3fuNydG9kg2Y09i8Foqq0p %}
```

## Result

output the following code include page

```
<iframe src="https://embed.spotify.com/?uri=spotify%3Atrack%3A3fuNydG9kg2Y09i8Foqq0p" width="300" height="380" frameborder="0" allowtransparency="true"></iframe>
```
