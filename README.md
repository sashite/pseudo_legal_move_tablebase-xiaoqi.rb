# PseudoLegalMoveTablebase::Xiaoqi.rb

[![Version](https://img.shields.io/github/v/tag/sashite/pseudo_legal_move_tablebase-xiaoqi.rb?label=Version&logo=github)](https://github.com/sashite/pseudo_legal_move_tablebase-xiaoqi.rb/releases)
[![Yard documentation](https://img.shields.io/badge/Yard-documentation-blue.svg?logo=github)](https://rubydoc.info/github/sashite/pseudo_legal_move_tablebase-xiaoqi.rb/main)
[![CI](https://github.com/sashite/pseudo_legal_move_tablebase-xiaoqi.rb/workflows/CI/badge.svg?branch=main)](https://github.com/sashite/pseudo_legal_move_tablebase-xiaoqi.rb/actions?query=workflow%3Aci+branch%3Amain)
[![RuboCop](https://github.com/sashite/pseudo_legal_move_tablebase-xiaoqi.rb/workflows/RuboCop/badge.svg?branch=main)](https://github.com/sashite/pseudo_legal_move_tablebase-xiaoqi.rb/actions?query=workflow%3Arubocop+branch%3Amain)
[![License](https://img.shields.io/github/license/sashite/pseudo_legal_move_tablebase-xiaoqi.rb?label=License&logo=github)](https://github.com/sashite/pseudo_legal_move_tablebase-xiaoqi.rb/raw/main/LICENSE.md)

> A computerized database that contains precalculated exhaustive pseudo-legal moves of Xiǎoqi positions.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "pseudo_legal_move_tablebase-xiaoqi"
```

And then execute:

```sh
bundle
```

Or install it yourself as:

```sh
gem install pseudo_legal_move_tablebase-xiaoqi
```

## Examples

Let's list the conditions for a red King to move from square `0` to square `1`:

```ruby
PseudoLegalMoveTablebase::Xiaoqi::DB.dig("X:-K", 0, 1) # => [{1=>:enemy}, {1=>nil}]
```

This move is allowed if one of these conditions is met:

- an enemy is present on square `1` (capture);
- the square `1` is a free square.

Let's list the conditions for a black Rook to move from square `0` to square `2`:

```ruby
PseudoLegalMoveTablebase::Xiaoqi::DB.dig("x:r", 0, 2) # => [{1=>nil, 2=>:enemy}, {1=>nil, 2=>nil}]
```

This move is allowed if one of these conditions is met:

- the square `1` is a free square, and an enemy is present on square `2` (capture);
- the square `1` is a free square, and the square `2` is a free square.

Let's list the conditions for a black Bombard to move from square `0` to square `2`:

```ruby
PseudoLegalMoveTablebase::Xiaoqi::DB.dig("x:b", 0, 2) # => [{1=>:occupied, 2=>:enemy}, {1=>nil, 2=>nil}]
```

This move is allowed if one of these conditions is met:

- the square `1` is occupied by a piece, and an enemy is present on square `2` (capture);
- the square `1` is a free square, and the square `2` is a free square.

## License

The code is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## About Sashite

This [gem](https://rubygems.org/gems/pseudo_legal_move_tablebase-xiaoqi) is maintained by [Sashite](https://sashite.com/).

With some [lines of code](https://github.com/sashite/), let's share the beauty of Chinese, Japanese and Western cultures through the game of chess!
