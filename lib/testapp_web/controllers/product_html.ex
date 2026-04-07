defmodule TestappWeb.ProductHTML do
  use TestappWeb, :html

  import TestappWeb.ProductComponents

  embed_templates "product_html/*"
end
