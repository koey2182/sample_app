defmodule SampleAppWeb.PageController do
  use SampleAppWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def hello(conn, _params) do
    html(conn, "Hello, World!")
  end
end
