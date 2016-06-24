module Testdiff
  module Modified
    # Finds all modified Ruby files
    module RubyFiles
      module_function

      def find
        `git status --porcelain | cut -c4- | grep '.rb'`
          .split("\n")
          .select { |file| File.exist?(file) }
      end
    end
  end
end
