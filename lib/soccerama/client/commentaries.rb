module Soccerama
  class Client
    module Commentaries
      def commentaries(match_id)
        get("/commentaries/match/#{match_id}")['commentaries']
      end
    end
  end
end
