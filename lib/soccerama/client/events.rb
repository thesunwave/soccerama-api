module Soccerama
  class Client
    module Events
      def events(match_id, options: nil)
        endpoint = "/events/match/#{match}"
        get(endpoint, { include: options }).fetch('data')
      end
    end
  end
end