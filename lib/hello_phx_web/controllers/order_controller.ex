defmodule HelloPhxWeb.OrderController do
  use HelloPhxWeb, :controller

  alias HelloPhx.ShoppingCart
  alias HelloPhx.Orders

  def create(conn, _params) do
    case Orders.complete_order(conn.assigns.cart) do
      {:ok, order} ->
        conn
        |> put_flash(:info, "Order #{order.id} created")
        |> redirect(to: ~p"/orders/#{order.id}")

      {:error, _changeset} ->
        conn
        |> put_flash(:error, "There was an error creating your order")
        |> redirect(to: ~p"/cart")
    end
  end

  def show(conn, %{"id" => id}) do
    order = Orders.get_order!(conn.assigns.current_uuid, id)
    render(conn, :show, order: order)
  end
end
