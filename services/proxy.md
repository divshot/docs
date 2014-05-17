---
layout: hosting
title: AJAX Proxy Service
---

<div class="alert alert-warning"><b>Beta Alert:</b> This feature is currently in beta and is subject to change.</div>

# AJAX Proxy Service

<p class="lead"><a href="https://developer.mozilla.org/en-US/docs/Web/HTTP/Access_control_CORS">Cross-Origin Resource Sharing</a>
provides a simple way for modern browsers to perform cross-domain AJAX requests.
However, users who need to support older browsers may need an alternative. Divshot's AJAX Proxy
Service allows you to make cross-domain AJAX requests anchored to a same-origin
path on your application.</p>

### Configuring the Proxy

To configure an AJAX proxy you will need to add a `proxy` key to your `divshot.json`
file. This key will be an object that defines a named proxy and properties about it.
For example:

```json
{
  "proxy": {
    "api": {
      "origin":"https://api.my-app.com",
      "headers": {
        "Accept": "application/json"
      },
      "cookies": false,
      "timeout": 30
    }
  }
}
```

Once defined, you can call through to the proxy by making an AJAX request
with the following structure:

    <METHOD> /__/proxy/<NAME>/<PATH>
    
Using the example above, if I wanted to make a `POST` request to the URL
`https://api.my-example.com/users/123`, I could do the following (using
jQuery as a simple example):

```js
$.ajax({
  url: '/__/proxy/api/users/123',
  type: 'POST',
  dataType: 'json',
  success: function(data) {
    // ...
  }
})
```