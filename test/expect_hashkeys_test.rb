require 'minitest_helper'

describe "assert_deep_hash_key_equality" do
  it "exists" do
    exp = {a: 1}
    act = {a: 1}
    assert_deep_hash_key_equality(exp, act)
  end
  it "is equal for a simple hash" do
    exp = {a: '1', b: '2', c: 3}
    assert_deep_hash_key_equality(exp, exp)
    l = lambda { assert_deep_hash_key_equality(exp, {d: 1}) }
    error = assert_raises(Minitest::Assertion, &l)
    error.message.must_match(/have same keys/)
  end

  it "is equal for a nested hash" do
    exp = {a: 1, b: '2',
           c: {d: '3', e: 'four'}
    }
    assert_deep_hash_key_equality(exp, exp)
    l = lambda { assert_deep_hash_key_equality(exp, {a: 1, b: {d: '3'}}) }
    error = assert_raises(Minitest::Assertion, &l)
    error.message.must_match(/have same keys/)
  end
end
