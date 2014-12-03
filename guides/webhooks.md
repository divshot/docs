---
layout: hosting
title: Webhook Notifications
---

# Webhook Notifications

<p class="lead">Webhooks allow you to propagate notifications when certain events occur in
a Divshot application.</p>

## Adding Webhooks

There are two ways to set up new webhooks for your app: via the dashboard or via
the command-line client. To set up webhooks using the dashboard, simply go to the
settings panel for your app and enter a new webhook URL in the fields provided.

Adding a webhook using the CLI is also very simple:

    divshot hooks:add http://example.com/my/hook

This will add and activate a webhook. You can also list, remove, pause, and resume
webhooks. Run `divshot help hooks` in the terminal for more information.

## Receiving Webhooks

Webhooks are delivered as a `POST` to the URL you specify. Requests are sent with
an `application/json` Content-Type and the raw JSON payload as the request body.

Your webhook receiver endpoint should respond with a `200` status code to indicate
the hook was received properly. If a non `20x` response code is received, we will
re-attempt the webhook delivery up to five times before giving up.

### Example Webhook Receiver

Here's an example of a Webhook receiver using Ruby and Sinatra:

```ruby
require 'sinatra'
require 'json'

post '/divshot/hook' do
  request.body.rewind
  payload = JSON.parse request.body.read

  puts "Received [#{payload['event']}] Divshot webhook."
  status 200
  body ""
end
```

## Webhook Integrations

If you want an automated way to connect a Divshot webhook to your existing tools
such as team chat, check out our [Zapier integration guide](/integrations/zapier).

## Types of Webhooks

Webhooks are records of events. Each webhook is delivered as a JSON payload with
the following schema:

```json
{
  "event":"event_name",
  "data":{}
}
```

Where `data` contains the relevant event-specific information. At this time, there
is only one event type, but more will be added in the future.

### release

The `release` event is triggered whenever a new version of your application is
deployed to any environment. An example payload looks like this:

```json
{
  "event":"release",
  "data": {
    "app": {
      "name":"your-app",
      "id":"abc123"
    },
    "release": {
      "env":"production",
      "version":12,
      "author":"someone@example.com",
      "rollback":false,
      "source":"Divshot CLI",
      "source_env":"staging",
      "timestamp": 1417552837,
      "url":"http://your-app.divshot.io",
      "permanent_url":"http://v12.your-app.divshot.io"
    }
  }
}
```

The `rollback` attribute will be set to the version number being rolled back to
if the release is a rollback, and `source_env` will be the environment from which
the release was promoted if the release is a promotion.