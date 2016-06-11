module Soccerama
  class Client
    module Match

      def match_by_id(match_id, options: nil)
        get("/matches/#{match_id}", { include: options })
      end

      def events_in_match(match_id)
        get("/events/match/#{match_id}", { include: options })
      end
    end
  end
end
