defmodule TestappWeb.ProductController do
  use TestappWeb, :controller

  def index(conn, _params) do
    products = [
      %{id: 1, name: "iPhone", price: 1000},
      %{id: 2, name: "MacBook", price: 2000},
      %{id: 3, name: "AirPods", price: 200}
    ]

    render(conn, :index, products: products)
  end

  def show(conn, params) do
    id = params["id"]

    product = %{
      id: id,
      name: "Product #{id}",
      price: 999
    }

    render(conn, :show, product: product)
  end
end
