module Soccerama
  class Client
    module Teams

      def teams_by_season(season_id, options: nil)
        get("/teams/season/#{season_id}", { include: options })['data']
      end

      def teams_by_id(team_id, options: nil)
        get("/teams/#{team_id}", { include: options })
      end

      def matches_by_team_season(team_id, season_id, options: nil)
        get("/teams/#{team_id}/season/#{season_id}", { include: options })
      end
    end
  end
end
