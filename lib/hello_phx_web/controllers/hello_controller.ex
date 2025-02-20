defmodule HelloPhxWeb.HelloController do
  use HelloPhxWeb, :controller

  plug HelloPhxWeb.Plugs.Locale, "en" when action in [:index]

  def index(conn, _params) do
    render(conn, :index)
  end

  def show(conn, %{"message" => message}) do
    render(conn, :show, message: message)
  end
end
