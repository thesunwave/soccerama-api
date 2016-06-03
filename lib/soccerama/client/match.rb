module Soccerama
  class Client
    module Match

      def match_by_id(match_id)
        get("/matches/#{match_id}")
      end

      def events_in_match(match_id)
        get("/events/match/#{match_id}")
      end
    end
  end
end
