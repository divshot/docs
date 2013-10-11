---
layout: default
title: Using Grunt with Divshot.io
---

# Using Grunt with Divshot.io

[Grunt](http://gruntjs.com/) is a powerful JavaScript task runner that is widely used
to automate command-line processes. To use it with Divshot.io, just follow the
directions below.

## Getting Started

First, you'll need to add `grunt-divshot` to your NPM development dependencies:

    npm add grunt-divshot --saveDev
    
Next, you'll need to load the Divshot Grunt tasks by adding this line to your `Gruntfile.js`:

```js
grunt.loadNpmTasks('grunt-divshot');
```