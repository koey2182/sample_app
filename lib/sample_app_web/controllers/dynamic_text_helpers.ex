defmodule SampleAppWeb.DynamicTextHelpers do
  @base_title "Phoenix Tutorial Sample App"

  def page_title(assigns) do
    assigns
    |> get_page_title()
    |> put_base_title()
  end

  defp put_base_title(nil), do: @base_title
  defp put_base_title(title), do: [title, " | ", @base_title]

  defp get_page_title(%{action: :home}), do: "Home"
  defp get_page_title(%{action: _}), do: nil
  defp get_page_title(_), do: nil
end
