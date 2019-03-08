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

  test "case statement pattern matching" do
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

  test "case statement used as a guard" do
    dave = %{name: "Dave", age: 27}
    actual =
      case dave do
        person = %{age: age} when is_number(age) and age >= 21 ->
          "Enter, #{person.name}!"
        _->
          "no admission"
      end
    expected = "Enter, Dave!"

    assert expected == actual
  end
end
