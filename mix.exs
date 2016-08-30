defmodule Mix.Tasks.Compile.Privilegex do
  def run(_) do
    File.rm_rf! "priv"
    File.mkdir "priv"

    {result, _errcode} = System.cmd("make", ["priv/privilegex.so"], stderr_to_stdout: true)

    IO.binwrite(result)

    Mix.Project.build_structure
  end
end

defmodule Privilegex.Mixfile do
  use Mix.Project

  @version "0.1.0"

  @description """
  Library for changing process privilages(setuid/setguid)
  """

  def project do
    [app: :privilegex,
     name: "Privilegex",
     version: @version,
     compilers: [:privilegex] ++ Mix.compilers,
     elixir: "~> 1.3",
     description: @description,
     package: package,
     deps: deps,
     source_url: "https://github.com/plus3x/privilegex",
     homepage_url: "https://github.com/plus3x/privilegex"]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{:credo, "~> 0.4", only: [:dev, :test]}]
  end

  defp package do
    [maintainers: ["Vladislav Petrov"],
     licenses: ["MIT"],
     links: %{github: "https://github.com/plus3x/privilegex"},
     files: ~w(lib src priv LICENSE.md mix.exs README.md)]
  end
end
