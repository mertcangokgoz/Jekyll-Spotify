# Jekyll Spotify [![Gem Version](https://badge.fury.io/rb/jekyll-spotify.svg)](https://badge.fury.io/rb/jekyll-spotify)

This Jekyll pluging provides a tag that takes Spotify URI and generates a html snippet to embed player your site.

## Installation

Add gemfile

```
gem 'jekyll-spotify'
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

or

```
{% spotify spotify:track:3fuNydG9kg2Y09i8Foqq0p 200 300 %}
```

## Result

output the following code include page

```
<iframe src="https://embed.spotify.com/?uri=spotify%3Atrack%3A3fuNydG9kg2Y09i8Foqq0p" width="100%" height="300" frameborder="0" allowtransparency="true"></iframe>
```
