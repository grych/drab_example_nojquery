defmodule DrabExampleNojquery.PageController do
  use DrabExampleNojquery.Web, :controller
  use Drab.Controller 

  def index(conn, _params) do
    render conn, "index.html"
  end
end
