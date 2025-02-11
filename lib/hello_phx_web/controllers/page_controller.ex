defmodule HelloPhxWeb.PageController do
  use HelloPhxWeb, :controller
  plug :put_view, html: HelloPhxWeb.PageHTML, json: HelloPhxWeb.PageJSON

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end
end
