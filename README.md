# Minitest::Expect::Hashkeys

Add a simple assertion to compare the keys of two (possibly deep) hashes

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'minitest-expect_hashkeys'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install minitest-expect_hashkeys

## Usage

assert_deep_hash_key_equality(expected_hash, actual_hash)

OR

actual.must_have_deep_hash_key_equality expected

## Contributing

1. Fork it ( https://github.com/[my-github-username]/minitest-expect-hashkeys/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
