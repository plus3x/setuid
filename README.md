Privilegex
===

[![Hex.pm Version](http://img.shields.io/hexpm/v/privilegex.svg)](https://hex.pm/packages/privilegex)
[![Build Status](https://secure.travis-ci.org/plus3x/privilegex.png?branch=master)](http://travis-ci.org/plus3x/privilegex)
[![Deps Status](https://beta.hexfaktor.org/badge/all/github/rrrene/inch_ex.svg)](https://beta.hexfaktor.org/github/plus3x/privilegex)
[![Inline docs](http://inch-ci.org/github/rrrene/inch_ex.svg?branch=master)](http://inch-ci.org/github/plus3x/privilegex)
[![Documentation](https://img.shields.io/badge/docs-hexpm-blue.svg)](http://hexdocs.pm/privilegex)
[![Downloads](https://img.shields.io/hexpm/dt/privilegex.svg)](https://hex.pm/packages/privilegex)

Privilegex is a library for changing an elixir process's privileges(setuid/setgid) from the inside

## Usage

```elixir
Privilegex.change "user_name", "group_name"
```

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `privilegex` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:privilegex, "~> 0.1.0"}]
    end
    ```

  2. Ensure `privilegex` is started before your application:

    ```elixir
    def application do
      [applications: [:privilegex]]
    end
    ```

