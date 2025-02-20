defmodule HelloPhxWeb.CartHTML do
  use HelloPhxWeb, :html

  alias HelloPhx.ShoppingCart

  # The following line is required for Phoenix to be able to find the templates.
  # It is not needed if you are using the default `lib/hello_phx_web/templates` directory.
  embed_templates "cart_html/*"

  def currency_to_str(%Decimal{} = val), do: "$#{Decimal.round(val, 2)}"
end
