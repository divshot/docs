---
layout: http
title: HTTP Errors
---

# Errors

divshot.io errors respond with a JSON payload. Following is an example of such a payload.

```json
{
  "status": 404,
  "error": "Error Message",
  "documentation": "http://example.org/path-to-relevant-documentation"
}
```

The `status` is duplicated from the headers and the `error` contains a helpful message. `documentation` is a url linking directly to the relevant page of this documentation.

In some cases the `error` will be a nested object. In this case specific issues with attributes from the request will be elucidated individually.

In a particularly mal-formed request you might see errors like this:

```json
{
  "status": 403,
  "error": {
    "application": ["can't be blank"],
    "build": ["can't be blank"],
    "env": ["can't be blank"],
    "version": ["must be unique"]
  },
  "documentation": "http://example.org/path-to-relevant-documentation"
}
```

In these cases it is best to consult the documentation for attribute requirements. The documentation link will take you to the correct page.