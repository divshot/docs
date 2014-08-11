---
layout: hosting
title: Form to Email Service
---

<div class="alert alert-warning"><b>Beta Alert:</b> This feature is currently in beta and is subject to change.</div>

# Form to Email Service

<p class="lead">Many websites have need of a simple form that causes an email
to be sent. Divshot's Form service makes it simple to collect data via email
for contact forms, beta signups, and more.</p>

## Configuration

To utilize the forms service, you'll need to define a `forms` key in your `divshot.json`
file. This key will be an object with form names and specific details for each form.
An example:

```json
{
  "forms": {
    "contact": {
      "to":"info@your-company.com",
      "reply_to": "{{email}}",
      "subject": "Contact Received from {{name}}",
      "html":"<b>Name:</b> {{name}}",
      "text":"Name: {{name}}",
      "success":"/contact-received",
      "failure":"/contact-failure"
    }
  }
}
```

This allows you to create simple HTML forms that, when submitted, will
send a customized email and then redirect the user to a success or failure
page. To utilize the above form, for example, we might have something like
this in our page:

```html
<form method="POST" action="/__/forms/contact">
  <label>Name:</label> <input name="name" type="text">
  <label>Email:</label> <input name="email" type="submit">
  <button type="submit">Contact Us</button>
</form>
```

That's it! When a user fills out the form and submits it, we'll send an
email to the configured email address.

## Templating

The `subject`, `reply_to`, `html`, and `text` fields are all rendered
using [Handlebars](http://handlebarsjs.com/). If you don't supply
`html` or `text` we will automatically format a simple list of the
submitted form information.

**Note:** To prevent spam and other abuse, the `to` address is only
configurable in `divshot.json`. It is not templatable.