require 'soccerama/client/connection'

module Soccerama
  class Client
    module Seasons

      def seasons(season_id = nil)
        if season_id.nil?
          get('/seasons')
        else
          get("/seasons/#{season_id}")
        end
      end
    end
  end
end
