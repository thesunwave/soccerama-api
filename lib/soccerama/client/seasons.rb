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
      def seasons_by_date(season_id, from_date=nil, to_date=nil, options: nil)
        if !from_date || !to_date
          get("/seasons/#{season_id}", {include: options})
        else
          get("/seasons/#{season_id}/#{from_date}/#{to_date}", {include: options})
        end
      end
    end
  end
end
