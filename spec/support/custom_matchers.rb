# frozen_string_literal: true

RSpec::Matchers.define :a_regex_that_matches do |string|
  match { |registration| registration[:contains] =~ string }
end
