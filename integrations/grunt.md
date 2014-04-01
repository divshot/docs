---
layout: hosting
title: Using Grunt with Divshot Hosting
---

# Using Grunt with Divshot Hosting

<p class="lead"><a href="http://gruntjs.com/">Grunt</a> is a powerful JavaScript task runner that is widely used to automate command-line processes. We maintain an official Divshot Grunt plugin that allows you to run a local Divshot server as well as deploy to Divshot, all seamlessly integrated into your Grunt workflow.</p>

## Getting Started

First, you'll need to add `grunt-divshot` to your NPM development dependencies:

    npm install grunt-divshot --save-dev
    
Next, you'll need to load the Divshot Grunt tasks by adding this line to your `Gruntfile.js`:

```js
grunt.loadNpmTasks('grunt-divshot');
```

## Usage

For up-to-date usage info, check out the [README](https://github.com/divshot/grunt-divshot#readme) on GitHub.