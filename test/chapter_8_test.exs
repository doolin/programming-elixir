# Chapter 8. Maps, Keyword Lists, Sets, and Structs • 80
#
# Chapter 8 does not have any exercises, so the tests here
# are constructed from the iex examples in the book. It would
# be worthwhile to derive a problem set for the chapter.

# Page 80. Keyword lists.
defmodule Canvas do
  @defaults [ fg: "black", bg: "white", font: "Merriweather" ]

  def draw_text(_text, options \\ []) do
    options = Keyword.merge(@defaults, options)

    # IO.puts "Drawing text #{inspect(text)}"
    # IO.puts "Foreground:  #{options[:fg]}"
    # IO.puts "Background:  #{Keyword.get(options, :bg)}"
    # IO.puts "Font:        #{Keyword.get(options, :font)}"
    # IO.puts "Pattern:     #{Keyword.get(options, :pattern, "solid")}"
    # IO.puts "Style:       #{inspect Keyword.get_values(options, :style)}"
    %{ fg: options[:fg] }
  end
end

defmodule Chapter8Test do
  use ExUnit.Case

  describe "Canvas.draw_test" do
    test "check option merging" do
      result =Canvas.draw_text("hello", fg: "red", style: "italic", style: "bold")
      assert result == %{ fg: "red" }
    end
  end

  # Yes, this is "framework testing," and no, it's not for you.
  # It's for me, so I can systematically work my way through
  # common API methods.
  describe "maps" do
    def map do
      %{ name: "Dave", likes: "Programming", where: "Dallas" }
    end

    test "keys for dave's map" do
      # map = %{ name: "Dave", likes: "Programming", where: "Dallas" }
      assert Map.keys(map()) == [:likes, :name, :where]
    end

    test "values for dave's map" do
      # map = %{ name: "Dave", likes: "Programming", where: "Dallas" }
      assert Map.values(map()) == ["Programming", "Dave", "Dallas"]
    end

    test "map deferencing" do
      assert map()[:name] == "Dave"
    end
  end
end
