defmodule ExWhatKitTest do
  use ExUnit.Case
  doctest ExWhatKit

  test "greets the world" do
    assert ExWhatKit.hello() == :world
  end
end
