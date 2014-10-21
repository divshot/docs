---
layout: hosting
title: Using AngularJS with Divshot Hosting
---

# Using AngularJS with Divshot Hosting

<p class="lead">AngularJS is a popular open-source framework for building dynamic web apps. In this guide we'll
show you how Divshot and Angular work nicely together.</p>

## Clean URLs with HTML5 pushState

With Divshot it's easy to set up clean URLs for your Angular app. Inject `$locationProvider` and set `html5Mode` in your Angular config file:

```javascript
myApp.config(function($routeProvider, $locationProvider) {
  $locationProvider.html5Mode(true);
  $routeProvider
    .when('/page1', { template: 'page1.html', controller: 'Page1Ctrl' })
    .when('/page2', { template: 'page2.html', controller: 'Page2Ctrl' });
});
```

Next, set up `routes` in your `divshot.json` [configuration file](/guides/configuration) as seen below:

```json
{
  "name": "my-app-name",
  "routes": {
    "**": "index.html"
  }
}
```

That's it! You can now access custom routes declared using `$routeProvider` without the `.html` extension.