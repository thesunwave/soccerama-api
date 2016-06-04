module Soccerama
  class Client
    module Teams

      def teams_by_season(season_id)
        get("/teams/season/#{season_id}")['data']
      end

      def teams_by_id(team_id)
        get("/teams/#{team_id}")
      end

      def matches_by_team_season(team_id, season_id)
        get("/teams/#{team_id}/season/#{season_id}")
      end
    end
  end
end
