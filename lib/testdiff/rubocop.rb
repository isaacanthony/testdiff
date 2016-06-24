require 'testdiff/modified/ruby_files'

module Testdiff
  # Runs Rubocop on modified files
  module Rubocop
    module_function

    def run
      puts 'Running Rubocop on modified files...'
      files = Testdiff::Modified::RubyFiles.find
      if files.any?
        system "rubocop #{files.join(' ')}"
      else
        puts 'No modified Ruby files.'
      end
    end
  end
end
