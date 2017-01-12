require 'better_alexa_rubykit/request'
require 'better_alexa_rubykit/version'
require 'better_alexa_rubykit/response'
require 'better_alexa_rubykit/intent_request'
require 'better_alexa_rubykit/launch_request'
require 'better_alexa_rubykit/session_ended_request'

module BetterAlexaRubyKit
  # Prints a JSON object.
  def self.print_json(json)
    p json
  end

  # Prints the Gem version.
  def self.print_version
    p BetterAlexaRubyKit::VERSION
  end

  # Returns true if all the Alexa request objects are set.
  def self.valid_alexa?(request_json)
    !request_json.nil? && !request_json['session'].nil? &&
        !request_json['version'].nil? && !request_json['request'].nil?
  end
end
