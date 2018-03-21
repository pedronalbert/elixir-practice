defmodule Definer do
  defmacro custom_def(name) do
    quote do
      def unquote(name)(), do: unquote(name)
    end
  end
end
