module Soccerama
  class Client
    module Countries

      def countries(country_id = nil, options: nil)
        endpoint = '/countries'
        endpoint += "/#{id}" if country_id
        get(endpoint, { include: options }).fetch('data')
      end
    end
  end
end
