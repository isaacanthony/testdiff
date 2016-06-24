require 'testdiff/version'
require 'testdiff/rubocop'
require 'testdiff/rspec'

# Tests modified files
module Testdiff
  module_function

  def run(tests)
    if tests.empty?
      run(%w(rubocop rspec))
    else
      tests.each do |test|
        run_test(test)
        puts
      end
    end
  end

  # private

  def run_test(test)
    case test.to_s.downcase
    when 'rubocop'
      Rubocop.run
    when 'rspec'
      Rspec.run
    else
      puts "Unknown test: #{test}."
    end
  end
end
