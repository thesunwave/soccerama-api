module Soccerama
  class Client
    module Results
      def results(season_id, options: nil)
        endpoint = "/seasons/results/#{season_id}"
        get(endpoint, { include: options })
      end
    end
  end
end