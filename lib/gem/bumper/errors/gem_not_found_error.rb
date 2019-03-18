module Gem
  module Bumper
    class GemNotFoundError < NoMethodError
      def initialize(name)
        super "Gem #{name} was not found in the given Gemfile."
      end
    end
  end
end
