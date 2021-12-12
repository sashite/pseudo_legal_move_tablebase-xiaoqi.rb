# frozen_string_literal: true

require "simplecov"

SimpleCov.command_name "Brutal test suite"
SimpleCov.start

require "./lib/pseudo_legal_move_tablebase/xiaoqi"

# ------------------------------------------------------------------------------

actual = begin
  PseudoLegalMoveTablebase::Xiaoqi::DB
end

raise if actual.keys != ["X:-K", "X:B", "X:N", "X:P", "X:Q", "X:R", "x:-k", "x:b", "x:n", "x:p", "x:q", "x:r"]
