defmodule DrabExampleNojquery.PageCommander do
  use Drab.Commander, modules: []
  require Logger

  onload :page_loaded

  def page_loaded(socket) do
    socket |> exec_js("console.log('hello from the other side')")
  end

  def clicked(socket, payload) do
    socket |> exec_js("alert('clicked the button: #{payload|>inspect}')")
  end
end
