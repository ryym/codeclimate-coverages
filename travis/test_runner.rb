#!/usr/bin/env ruby

# frozen_string_literal: true
require "English"

# TestRunner
class TestRunner
  def execute
    # system "COVERAGE=1 bin/rails test"
    system "npm run cover"
    system "$(npm bin)/codeclimate-test-reporter < coverage/lcov.info"
  end
end

TestRunner.new.execute
