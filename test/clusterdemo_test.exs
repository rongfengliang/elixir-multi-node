defmodule ClusterdemoTest do
  use ExUnit.Case
  doctest Clusterdemo

  test "greets the world" do
    assert Clusterdemo.hello() == :world
  end
end
