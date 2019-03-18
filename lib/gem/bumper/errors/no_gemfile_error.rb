module Gem
  module Bumper
    class NoGemfileError < NoMethodError
      def initialize
        super 'A Valid Gemfile was not found.'
      end
    end
  end
end
