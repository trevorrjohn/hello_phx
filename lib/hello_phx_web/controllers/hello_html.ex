defmodule HelloPhxWeb.HelloHTML do
  @moduledoc """
  This module contains pages rendered by HelloController.

  See the `hello_html` directory for all templates available.
  """
  use HelloPhxWeb, :html

  embed_templates "hello_html/*"

  attr :message, :string, required: true

  def greet(assigns) do
    ~H"""
    <h1 class="text-2xl">Hi there: <%= @messenger %></h1>
    """
  end
  #
  # def index(assigns) do
  #   ~H"""
  #   <h1>Hello Foo Bar!</h1>
  #   """
  # end
end
