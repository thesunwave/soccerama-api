module Soccerama
  class Client
    module Livescores

      def fixtures_for_today(options: nil)
        get("/livescore", { include: options }).fetch('fixtures')
      end

      def currently_played(options: nil)
        get("/livescore/now", { include: options }).fetch('fixtures')
      end

      def fixtures_for_date(date, options: nil)
        get("/livescore/date/#{date}", { include: options }).fetch('fixtures')
      end

      def find_by_id(match_id, options: nil)
        get("/livescore/match/#{match_id}", { include: options })
      end
    end
  end
end
