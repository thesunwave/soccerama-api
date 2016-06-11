module Soccerama
  class Client
    module Connection

      def get(path, options = {})
        req :get, path, options
      end

      private

      def req(http_method, path, options = {})
        normalizer = HTTParty::Request::NON_RAILS_QUERY_STRING_NORMALIZER
        options[:api_token] = @api_token
        response = self.class.send(http_method, path, query: normalizer[options])
        resp = JSON.parse(response.body)
        if resp['error']
          if resp['error']['code'] == 401
            raise Soccerama::Exceptions::UnpaidPlanException
          elsif resp['error']['code'] == 500
            raise Soccerama::Exceptions::InvalidRequest
          end
        else
          resp
        end
      end
    end
  end
end
