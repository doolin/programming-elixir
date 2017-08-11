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

defmodule HotelRoom do
  def book(%{name: name, height: height})
  when height > 1.9 do
    "Need extra long bed for #{name}"
  end

  def book(%{name: name, height: height})
  when height < 1.3 do
    "Need low shower controls for #{name}"
  end

  def book(person) do
    "Need regular bed for #{person.name}"
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

  describe "pattern matching maps" do
    test "simple pattern match" do
      person = %{ name: "Dave", height: 1.88 }
      %{name: a_name, height: _ } = person
      assert a_name == "Dave"
    end

    test "find a MatchError when key is not present" do
      assert_raise MatchError, fn ->
        person = %{ name: "Dave", height: 1.88 }
        %{ name: _, weight: _ } = person
      end
    end

    test "pattern match into array of maps" do
      people = [
        %{ name: "Grumpy", height: 1.24 },
        %{ name: "Dave", height: 1.88 },
        %{ name: "Dopey", height: 1.32},
        %{ name: "Shaquille", height: 2.16 },
        %{ name: "Sneezy", height: 1.28 }
      ]

      # ah er...
      not_dwarves = for person = %{ height: height } <- people, height > 1.5 do
        person
      end

      assert not_dwarves == [
        %{ name: "Dave", height: 1.88 },
        %{ name: "Shaquille", height: 2.16 },
      ]
    end

    test "use patterns on function calls" do
      people = [
        %{ name: "Grumpy", height: 1.24 },
        %{ name: "Dave", height: 1.88 },
        %{ name: "Dopey", height: 1.32},
        %{ name: "Shaquille", height: 2.16 },
        %{ name: "Sneezy", height: 1.28 }
      ]

      bookings = people |> Enum.map(&HotelRoom.book/1)
      assert bookings == [
        "Need low shower controls for Grumpy",
        "Need regular bed for Dave",
        "Need regular bed for Dopey",
        "Need extra long bed for Shaquille",
        "Need low shower controls for Sneezy"
      ]
    end
  end

  describe "pattern match variable keys" do
    test "extract keys with pin operator" do
      data = %{ name: "Dave", state: "TX", likes: "Elixir" }
      values = for key <- [:name, :likes] do
        %{ ^key => value } = data
        value
      end
      assert values == ["Dave", "Elixir"]
    end
  end

  describe "updating a map" do
    test "update map value" do
      m = %{ a: 2, b: 2, c: 3 }
      m1 = %{ m | b: "two" }
      assert m1 == %{ a: 1, b: "two", c: 3 }
    end
  end
end
