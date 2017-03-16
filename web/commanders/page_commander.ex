defmodule DrabExampleNojquery.PageCommander do
  use Drab.Commander, modules: []
  require Logger

  onload :page_loaded

  def page_loaded(socket) do
    socket |> execjs("console.log('hello from the other side')")
  end

  def clicked(socket, payload) do 
    socket |> execjs("alert('clicked the button: #{payload|>inspect}')")
  end
end
