defmodule Exercise12Test do
  use ExUnit.Case
  # doctest ProgrammingElixir

  # Note: many of these tests appear to be tautologies, and
  # perhaps they are. However, the reason for these tests is
  # to record personal progress through the book, such that
  # I have a record for each of the situations presented in
  # the exercises.
  describe "Exercise:Pattern Matching-2" do
    test '[a, b, a] = [1, 2, 3] raises match error' do
      list = [1, 2, 3]
      assert_raise MatchError, fn ->
        [a, _b, a] = list
      end
    end

    test 'another match error' do
      list = [1, 1, 2]
      assert_raise MatchError, fn ->
        [a, _b, a] = list
      end
    end

    test 'matching works' do
      list = [1, 2, 1]
      [a, b, a] = list
      assert [a, b, a] == [1, 2, 1]
    end
  end
end
