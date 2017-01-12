# AlexaRubykit
[![Gem Version](https://badge.fury.io/rb/better_alexa_rubykit.svg)](https://badge.fury.io/rb/better_alexa_rubykit.svg)[![Build Status](https://travis-ci.org/kjanoudi/better_alexa_rubykit.svg?branch=master)](https://travis-ci.org/kjanoudi/better_alexa_rubykit)

This gem implements a quick back-end service for deploying applications for Amazon's Echo (Alexa).

## Installation

### For Ruby Projects:

Add this line to your application's Gemfile:

```ruby
gem 'better_alexa_rubykit'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install better_alexa_rubykit

## Usage

This Gem provides methods to create and handle request and response objects to be used in your container of choice.

Sample usage:

```ruby
require 'better_alexa_rubykit'
response = BetterAlexaRubykit::Response.new
response.add_speech('Ruby is running ready!')
response.build_response
```

Will generate a valid outputspeech response in JSON format:

``` JSON
$ {"version":"1.0","response":{"outputSpeech":{"type":"PlainText","text":"Ruby is running ready!"},"shouldEndSession":true}}
```

## Troubleshooting

There are two sources of troubleshooting information: the Amazon Echo app/website and the EBS logs that you can get from
the management console.
- "Error in SSL handshake" : Make sure your used the FQDN when you generated the SSL and it's also the active SSL in EBS.
- "Error communicating with the application" : Query the EBS logs from the management console and create an issue on GitHub.

## Contributing

1. Decide to work on the "dev" (unstable) branch or "master" (stable)
1. Fork it ( https://github.com/kjanoudi/better_alexa_rubykit/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request


# <a name="team-members"></a>Special Thanks To
* "Damian Finol" <damian.finol@gmail.com> for providing the majority of the codebase via his original repo, [https://github.com/damianFC/alexa-rubykit/](https://github.com/damianFC/alexa-rubykit/)
