defmodule DrabExampleNojquery.PageCommander do
  use Drab.Commander, onload: :page_loaded, modules: []
  require Logger

  def page_loaded(socket) do
    socket |> execjs("console.log('hello from the other side')")
  end

  def clicked(socket, payload) do 
    socket |> execjs("alert('clicked the button: #{payload|>inspect}')")
  end
end
