defmodule JunElixirTestWeb.PageController do
  use JunElixirTestWeb, :controller

  def index(conn, _params) do
    render conn, "page_view.html"
  end
end