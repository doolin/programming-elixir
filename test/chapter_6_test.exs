defmodule Chapter6Test do
  use ExUnit.Case

  describe "binary search" do
    test "example from book with actual as argument" do
      assert Chop.guess(273, (1..1000)) == 273
    end

    # @tag :skip
    test "example from book" do
      assert Chop.guess(39, (1..1000)) == 273
    end
  end

  describe "factorial" do
    test "0 factorial is 1" do
      assert Factorial.of(0) == 1
    end

    test "3 factorial is 6" do
      assert Factorial.of(3) == 6
    end

    test "negative number raises" do
      assert_raise FunctionClauseError, fn ->
        Factorial.of(-3) == 6
      end
    end
  end

  describe "sum" do
    test "sum 0 to 0" do
      assert Sum.of(0) == 0
    end

    test "sum 0 to 1" do
      assert Sum.of(1) == 1
    end

    test "sum 1 to 3" do
      assert Sum.of(3) == 6
    end
  end

  describe "gcd" do
    test "gcd of 1 and 2 is 1" do
      assert Gcd.of(1, 2) == 1
    end

    test "gcd of 4 and 6 is 2" do
      assert Gcd.of(4, 6) == 2
    end

    test "gcd of 15 and 25 is 5" do
      assert Gcd.of(25, 15) == 5
    end
  end

  describe "exercise 7" do
    test "float to binary in erlang" do
      assert :io_lib_format.fwrite_g(23.5) == '23.5'
    end

    test "get $HOME" do
      assert System.get_env("HOME") == "/Users/doolin"
      assert "HOME" |> System.get_env == "/Users/doolin"
    end

    test "get file extension with regex" do
      assert Regex.named_captures(~r/[a-z]+\.(?<extension>[a-z]+)/, "file.exs") == %{"extension" => "exs"}
      assert Path.extname("file.exs") == ".exs"
    end

    test "get current working directory" do
      assert System.cwd == "/Users/doolin/src/programming-elixir"
    end

    test "system command" do
      assert System.cmd("ls", []) == {"README.md\n_build\nbin\nconfig\ndeps\nlib\nmix.exs\nmix.lock\ntest\n", 0}
    end
  end
end
