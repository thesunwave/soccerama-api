module Soccerama
  module Exceptions
    UnpaidPlanException = Class.new(StandardError)
    InvalidRequest = Class.new(StandardError)
  end
end
