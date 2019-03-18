require "gem/bumper/version"

require "gem/bumper/errors/gem_not_found_error"
require "gem/bumper/errors/no_gemfile_error"

module Gem
  module Bumper
    def self.update(gem_name, version)
      binding.pry

      # Find the gem in the Gemfile

      # Update the Version

      # Run Bundle install

      # Add Gemfile & lock

      # Commit
    end
  end
end
