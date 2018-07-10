defmodule ElixirServer.Mixfile do
  use Mix.Project

  def project do
    [
      app: :elixir_server,
      escript: escript(),
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def escript do
    [main_module: MyApp.CLI]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [ 
      extra_applications: [:logger, :httpotion, :crypto],
      mod: {ElixirServer, []},
      # env: [cowboy_port: 8080]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      {:cowboy, "~> 1.1.2"},
      {:plug, "~> 1.3.4"},
      {:httpoison, "~> 0.13"},
      {:httpotion, "~> 3.0.2"},
      {:random_bytes, "~> 1.0"},
      {:socket, "~> 0.3"}
    ]
  end
end
