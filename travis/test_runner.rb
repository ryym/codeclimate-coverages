#!/usr/bin/env ruby

# frozen_string_literal: true
require "English"

# TestRunner
class TestRunner
  def execute
    system "mkdir lcovs"

    system "COVERAGE=1 bin/rails test"
    system "mv coverage/lcov/codeclimate-coverages.lcov lcovs/ruby.lcov"

    system "npm run cover"
    system "mv coverage/lcov.info lcovs/js.lcov"

    system "$(npm bin)/lcov-result-merger 'lcovs/*' > all.lcov"
    system "cat all.lcov"
    system "$(npm bin)/codeclimate-test-reporter < all.lcov"
  end
end

TestRunner.new.execute
