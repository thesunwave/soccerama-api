module Soccerama
  class Client
    module Connection

      def get(path)
        request :get, path
      end

      private

      def request(http_method, path, options = {})
        options[api_token: @api_token]
        response = self.class.send(http_method, path)
        resp = JSON.parse(response.body)
        unless resp['error'].nil?
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
