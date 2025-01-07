defmodule SampleAppWeb.StaticPageHTML do
  use SampleAppWeb, :html

  embed_templates "static_page_html/*"

  # def get_title() do
  #   "Hello, World!"
  # end
  # def get_title(conn) do
  #   SampleAppWeb.DynamicTextHelpers.page_title(Enum.into(conn.assigns, %{actions: conn.private.phoenix_action}))
  # end
  def get_title(conn) do
    SampleAppWeb.DynamicTextHelpers.page_title(Enum.into(conn.assigns, %{action: conn.private.phoenix_action}))
  end
end
