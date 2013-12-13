---
layout: default
title: Using Grunt with Divshot.io
---

# Using Grunt with Divshot.io

[Grunt](http://gruntjs.com/) is a powerful JavaScript task runner that is widely used
to automate command-line processes. We maintain an official Divshot Grunt plugin that
allows you to run a local Divshot server as well as deploy to Divshot, all seamlessly
integrated into your Grunt workflow.

## Getting Started

First, you'll need to add `grunt-divshot` to your NPM development dependencies:

    npm add grunt-divshot --save-dev
    
Next, you'll need to load the Divshot Grunt tasks by adding this line to your `Gruntfile.js`:

```js
grunt.loadNpmTasks('grunt-divshot');
```

## Usage

For up-to-date usage info, check out the [README](https://github.com/divshot/grunt-divshot) on
GitHub.