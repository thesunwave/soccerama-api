module Soccerama
  class Client
    module Competitions

      def competitions(competition_id = nil)
        if competition_id.nil?
          get('/competitions')['data']
        else
          get("/competitions/#{competition_id}")
        end
      end
    end
  end
end
