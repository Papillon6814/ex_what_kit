defmodule ExWhatKit do
  @moduledoc """
  Documentation for `ExWhatKit`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ExWhatKit.hello()
      :world

  """
  def hello do
    :world
  end

  def browser_open(url) do
    win_cmd_args = ["/c", "start", String.replace(url, "&", "^&")]

    cmd_args =
      case :os.type() do
        {:win32, _} ->
          {"cmd", win_cmd_args}

        {:unix, :darwin} ->
          {"open", [url]}

        {:unix, _} ->
          cond do
            System.find_executable("xdg-open") -> {"xdg-open", [url]}
            # When inside WSL
            System.find_executable("cmd.exe") -> {"cmd.exe", win_cmd_args}
            true -> nil
          end
      end

    case cmd_args do
      {cmd, args} -> System.cmd(cmd, args)
      nil -> Logger.warn("could not open the browser, no open command found in the system")
    end

    :ok
  end
end
