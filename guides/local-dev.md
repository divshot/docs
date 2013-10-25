---
layout: default
title: Local Development for Divshot.io
---

# Local Development for Divshot.io

It's easy to use Divshot.io's advanced hosting features when developing your application
locally. Divshot.io runs on our own open source static server, [superstatic](https://github.com/divshot/superstatic),
which is automatically packaged in with the Divshot Command Line Interface.

Once you've installed the CLI, running a server locally is as simple as:

    divshot server

If run inside a Divshot.io application directory, it will automatically read your `divshot.json`
and serve files appropriately.