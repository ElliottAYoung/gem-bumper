require "pry"

require "gem/bumper/version"

require "gem/bumper/errors/gem_not_found_error"
require "gem/bumper/errors/no_gemfile_error"

module Gem
  module Bumper
    def self.update(gem_name, version)
      gemfile_contents = File.read('Gemfile')

      # Find the gem in the Gemfile
      gem_line = gemfile_contents.split("\n").find { |gemfile_line| gemfile_line.include?(gem_name) }
      raise Gem::Bumper::GemNotFoundError.new(gem_name) if gem_line.nil?

      # Find the Version
      old_version = gem_line.match("tag: ('\.+')")[1]
      updated_gem_line = gem_line.gsub(old_version, "'#{version}'")

      # Update the Version
      gemfile_contents.gsub!(gem_line, updated_gem_line)
      File.open('Gemfile', 'w') { |gemfile| gemfile.write(gemfile_contents) }
    end
  end
end
