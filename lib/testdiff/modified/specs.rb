require 'testdiff/modified/ruby_files'

module Testdiff
  module Modified
    # Finds all modified Rspec files
    module Specs
      module_function

      def find
        modified.concat(associated)
                .select { |file| File.exist?(file) }
      end

      # private

      def modified
        files.select { |file| file.include?('_spec.rb') }
      end

      def associated
        files.map do |file|
          file.gsub('.rb', '_spec.rb')
              .gsub('app/', 'spec/')
              .gsub('lib/', 'spec/lib/')
        end
      end

      def files
        Testdiff::Modified::RubyFiles.find
      end
    end
  end
end
