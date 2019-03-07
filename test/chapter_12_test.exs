defmodule Chapter12Test do
  use ExUnit.Case

  test "syntax for if-else statement" do
    result =
      if 1 == 1 do
        "OK"
      else
        "error"
      end
    assert result == "OK"
  end

  test "case statement" do
    dave = %{ name: "Dave", state: "TX", likes: "programming" }
    actual =
      case dave do
        %{state: some_state} = person ->
          "#{person.name} lives in #{some_state}"
        _ ->
          "no match"
      end
    expected = "Dave lives in TX"

    assert expected == actual
  end
end
