defmodule WidgetTest do
  use ExUnit.Case
  doctest Widget

  test "greets the world" do
    assert Widget.hello() == :world
  end
end
