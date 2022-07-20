defmodule ExWhatKit.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_what_kit,
      version: "0.1.0",
      elixir: "~> 1.13",
      description: "Whatsapp Automation tool",
      start_permanent: Mix.env() == :prod,
      package: package(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:ex_doc, "~> 0.22.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      maintainers: ["Papillon6814"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/Papillon6814/ex_what_kit"}
    ]
  end
end
