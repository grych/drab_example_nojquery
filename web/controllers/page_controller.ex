defmodule DrabExampleNojquery.PageController do
  use DrabExampleNojquery.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
