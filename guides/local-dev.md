---
layout: hosting
title: Local Development for Divshot
---

# Local Development for Divshot

<p class="lead">It's easy to use Divshot's advanced hosting features when developing locally.</p>

Divshot runs on our home-grown open source static server, [superstatic](https://github.com/divshot/superstatic),
which is automatically packaged in with the Divshot Command Line Interface.

Once you've installed the CLI, running a server locally is as simple as:

    divshot server

If run inside a Divshot application directory, it will automatically read your `divshot.json`
and serve files appropriately.

You can also specify the following command-line options:

* `-p, --port PORT` - run the server on a custom port
* `-h, --host HOST` - run the server on a custom host
* `--no-cache` - do not serve any `Cache-Control` headers