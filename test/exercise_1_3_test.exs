defmodule Exercise13Test do
  use ExUnit.Case

  # Note: many of these tests appear to be tautologies, and
  # perhaps they are. However, the reason for these tests is
  # to record personal progress through the book, such that
  # I have a record for each of the situations presented in
  # the exercises.
  describe "Exercise:Pattern Matching-3" do
    test '[a, b, a] = [1, 2, 3] raises match error' do
      a = 2
      list = [1, 2, 3]
      assert_raise MatchError, fn ->
        [a, _b, a] = list
      end
    end

    test "[a, b, a] = [1, 1, 2] raises match error" do
      a = 2
      list = [1, 1, 2]
      assert_raise MatchError, fn ->
        [a, _b, a] = list
      end
    end

    test "reassignment works" do
      a = 2
      a = 1
      assert a == 1
    end

    test "^a works" do
      a = 2
      ^a = 2
      assert a == 2
    end

    test "^a = 1 raises" do
      a = 2
      assert_raise MatchError, fn ->
        ^a = 1
      end
    end

    test "^a = 2 - a raises" do
      a = 2
      assert_raise MatchError, fn ->
        ^a = 2 - a
      end
    end
  end
end
