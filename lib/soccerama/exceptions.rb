module Soccerama
  module Exceptions
    class UnpaidPlanException < Class.new(StandardError); end
    class InvalidRequest < Class.new(StandardError); end
  end
end
