---
layout: http
title: HTTP Requests
---


# Making Requests

> Before making requests, see the <a href="overview/authentication">authentication documentation</a> to find out how to aunticate your client's requsets.

# Request Parameters / Entities

## GET Requests

If the endpoint specifies params, provide them in a query string:

```
GET /endpoint/path?param1=value&param2=value
```

## PUT/POST Requests

POST requests expect a JSON encoded payload.

If an endpoint specified parameters: 'name', 'superpower', the following payload would be appropriate:

```
{
  "name": "Clyde Stubblefield",
  "superpower": "Funky Drumming"
}
```

## Failure Modes

Any request may fail. General failure modes are enumerated here.
See specific endpoints for more detailed failure modes.
