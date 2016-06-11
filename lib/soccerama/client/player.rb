module Soccerama
  class Client
    module Player

      def players_by_team_and_season(team_id, season_id, options: nil)
        get("/players/team/#{team_id}/season/#{season_id}", { include: options })
      end

      def players_by_team(team_id, options: nil)
        get("/players/team/#{team_id}", { include: options })
      end

      def player_by_id(player_id, options: nil)
        get("/players/#{player_id}", { include: options })
      end
    end
  end
end
