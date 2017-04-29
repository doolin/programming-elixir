defmodule ProgrammingElixirTest do
  use ExUnit.Case
  doctest ProgrammingElixir

  # Note: many of these tests appear to be tautologies, and
  # perhaps they are. However, the reason for these tests is
  # to record personal progress through the book, such that
  # I have a record for each of the situations presented in
  # the exercises.
  describe "Exercise:Pattern Matching-1" do
    test 'matching works with array' do
      a = [1, 2, 3]
      assert a == [1, 2, 3]
    end

    test 'Page 14: matching works with integer' do
      a = 4
      assert a == 4
    end

    test 'Page 14: 4 = a works after a and 4 are matched' do
      a = 4
      4 = a
      assert 4 == a
    end

    # This is producing "warning: no clause will ever match"
    # I think that since it didn't match, a and b won't be
    # bound. That is, having it raise the MatchError preclude
    # any further use of the lhs within the matching attempt.
    # Just a hunch.
    test 'match error on incompatible list' do
      list = [1, 2, 3]
      assert_raise MatchError, fn ->
        [_a, 1, _b] = list
      end
    end

    # This is producing "warning: no clause will ever match"
    test 'find MatchError' do
      assert_raise MatchError, fn ->
        [_a, _b] = [1, 2, 3]
      end
    end

    test 'a matches nested list' do
      a = [[1, 2, 3]]
      assert a == [[1, 2, 3]]
    end

    test '[a] matches nested list' do
      [a] = [[1, 2, 3]]
      assert [a] == [[1, 2, 3]]
      assert _a = [1, 2, 3]
    end

    @tag :pending
    test '[[a]] matches nested list' do
      assert_raise MatchError, fn ->
        raise MatchError
        # [[a]] == [[1, 2, 3]]
      end
      # assert _a = [1, 2, 3]
    end
  end
end
