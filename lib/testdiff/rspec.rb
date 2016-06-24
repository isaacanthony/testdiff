require 'testdiff/modified/specs'

module Testdiff
  # Runs Rspec on modified files
  module Rspec
    module_function

    def run
      puts 'Running RSpec on modified files...'
      files = Testdiff::Modified::Specs.find
      if files.any?
        exec "rspec #{files.join(' ')}"
      else
        puts 'No modified specs.'
      end
    end
  end
end
