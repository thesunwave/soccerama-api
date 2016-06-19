module Soccerama
  class Client
    module Statistics
      def statistics(match_id, options: nil)
        endpoint = "statistics/match/#{match_id}"
        get(endpoint, { include: options })
      end
    end
  end
end