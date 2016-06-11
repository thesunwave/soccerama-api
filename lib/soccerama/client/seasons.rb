require 'soccerama/client/connection'

module Soccerama
  class Client
    module Seasons

      def seasons(season_id = nil, options: nil)
        unless season_id
          get('/seasons', { include: options })['data']
        else
          get("/seasons/#{season_id}", { include: options })
        end
      end
    end
  end
end
