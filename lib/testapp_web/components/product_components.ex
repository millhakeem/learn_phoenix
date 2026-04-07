defmodule TestappWeb.ProductComponents do
  @moduledoc """
  Reusable product components for displaying product information.
  """

  use Phoenix.Component

  def product_card(assigns) do
    ~H"""
    <a href={"/products/#{@product.id}"} style="text-decoration: none; color: inherit;">
      <div style="border: 1px solid #ccc; padding: 12px; margin-bottom: 10px;">
        <h3>{@product.name}</h3>
        <p>Price: ${@product.price}</p>
      </div>
    </a>
    """
  end
end
