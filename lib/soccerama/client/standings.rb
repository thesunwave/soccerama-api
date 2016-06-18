module Soccerama
  class Client
    module Standings
      def standings(season_id)
        endpoint = "/standings/season/#{season_id}"
        get(endpoint).fetch('data')
      end
    end
  end
end