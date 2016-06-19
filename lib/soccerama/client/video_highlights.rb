module Soccerama
  class Client
    module VideoHighlights
      def video(match_id)
        endpoint = "/videos/match/#{match_id}"
        get(endpoint).fetch('data')
      end
    end
  end
end