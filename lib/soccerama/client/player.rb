module Soccerama
  class Client
    module Player

      def players_by_team_and_season(team_id, season_id)
        get("/players/team/#{team_id}/season/#{season_id}")
      end

      def players_by_team(team_id)
        get("/players/team/#{team_id}")
      end

      def player_by_id(player_id)
        get("/players/#{player_id}")
      end
    end
  end
end
