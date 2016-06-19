module Soccerama
  class Client
    module Commentaries
      def commentaries(match_id)
        get("/commentaries/match/#{match_id}").fetch('commentaries')
      end
    end
  end
end
