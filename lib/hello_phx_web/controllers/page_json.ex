defmodule HelloPhxWeb.PageJSON do
  @moduledoc """
  This module contains pages rendered by PageController.

  See the `page_html` directory for all templates available.
  """
  def home(_assings) do
    %{
      message: "Welcome to Phoenix!"
    }
  end
end
