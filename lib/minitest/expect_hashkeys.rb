require "minitest/expect_hashkeys/version"

module Minitest::Assertions

  extend self

  def assert_deep_hash_key_equality(expected, actual, message = nil)
    actual.keys.sort.must_equal(expected.keys.sort, message || "expected #{actual.class} #{actual} to have same keys as Hash #{expected}")
    expected.each do |key, value|
      if value.is_a? Hash
        if actual[key].is_a?(Hash)
          assert_deep_hash_key_equality(value, actual[key])
        else
          flunk("expected Hash #{value}, got #{actual[key]}")
        end
      end
    end
  end
end

Hash.infect_an_assertion :assert_deep_hash_key_equality, :must_have_deep_hash_key_equality
