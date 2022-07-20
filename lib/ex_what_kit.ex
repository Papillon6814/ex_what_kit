defmodule ExWhatKit do
  @moduledoc """
  Module for deal with whatsapp actions
  """
  alias ExWhatKit.Utils

  @doc """
  Send a simple message by opening browser
  """
  def send_message(phone_number, message) do
    Utils.browser_open("https://web.whatsapp.com/send?phone=#{phone_number}&text=#{message}")
  end
end
