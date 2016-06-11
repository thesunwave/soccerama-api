module Soccerama
  class Client
    module Competitions

      def competitions(competition_id = nil, options: nil)
        unless competition_id
          get('/competitions', { include: options })['data']
        else
          get("/competitions/#{competition_id}", { include: options })
        end
      end
    end
  end
end
