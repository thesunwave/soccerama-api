require 'soccerama/client/connection'
require 'soccerama/client/competitions'
require 'soccerama/client/seasons'
require 'soccerama/client/teams'
require 'soccerama/client/match'
require 'soccerama/client/player'
require 'soccerama/exceptions'

module Soccerama
  class Client
    include HTTParty
    include Soccerama::Client::Connection
    include Soccerama::Client::Competitions
    include Soccerama::Client::Seasons
    include Soccerama::Client::Teams
    include Soccerama::Client::Match
    include Soccerama::Client::Player

    URL_PREFIX = 'https://api.soccerama.pro/%{api_version}/'
    format :json

    attr_reader :api_token

    def initialize(api_token = nil, api_version = 'v1.1')
      @api_token ||= api_token || ENV['SOCCERAMA_API_TOKEN']
      @url = URL_PREFIX % { api_version: api_version }
      self.class.base_uri(@url)
      self.class.default_options.merge!(query: { api_token: @api_token })
    end
  end
end
