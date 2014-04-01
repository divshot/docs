---
layout: hosting
title: Using Yeoman with Divshot Hosting
---

# Using Yeoman with Divshot Hosting

<p class="lead"><a href="http://yeoman.io">Yeoman</a> is a powerful workflow for developing web apps using Yo (scaffolding), Grunt (builds), and Bower (package management). Yo provides "generators" to help you scaffold new apps. Generators write your Grunt configuration and pull in relevant Grunt tasks.</p>

## Getting Started

To run a local Divshot server and deploy to Divshot from Yeoman's generated Gruntfile, you'll first need to integrate the [Divshot Grunt plugin](/integrations/grunt). To get started, add `grunt-divshot` to your NPM development dependencies:

    npm install grunt-divshot --save-dev

Yeoman's Gruntfile should load the Divshot Grunt tasks automatically. Next, you'll need to set up the Divshot server in your `Gruntfile.js`. Add the following section to the data object passed into `grunt.initConfig()`:

```js
divshot: {
  server: {
    options: {
      port: 9000,
      hostname: 'localhost',
      root: '<%= yeoman.app %>',
      clean_urls: true,
      routes: {
        '**/*.html': 'index.html'
      },
      cache_control: {}
    }
  }
},
```

For an overview of Divshot Grunt configuration options, check out the [README](https://github.com/divshot/grunt-divshot#readme) on GitHub.

Finally, you'll need to make adjustments to your Gruntfile based on the Yeoman generator you're using. We'll cover the most popular generators.

## Angular Generator

*Use the example [Angular Gruntfile](https://gist.github.com/fastdivision/8344071) or follow the steps below:*

In order to run a local Divshot server, you'll have to replace Connect by changing `connect:livereload` to `divshot:server` under the Grunt `serve` task:

```js
grunt.registerTask('serve', function (target) {
  if (target === 'dist') {
    return grunt.task.run(['build', 'connect:dist:keepalive']);
  }

  grunt.task.run([
    'clean:server',
    'concurrent:server',
    'autoprefixer',
    'divshot:server',
    'watch'
  ]);
});
```

When building locally for Angular apps, [grunt-contrib-connect](https://github.com/gruntjs/grunt-contrib-connect) serves files from two directories: `/.tmp` and `/app`. Since Divshot Grunt only accepts one directory, we'll have to copy over any additional files from `/app` to `/.tmp`. Add a new section to the `copy` task:

```js
copy: {
  server: {
    expand: true,
    cwd: '<%= yeoman.app %>',
    dest: '.tmp/',
    src: [
      '*.{ico,png,txt}',
      '{,**/*}*.html',
      '{,**/*}*.css',
      '{,**/*}*.js',
      'bower_components/**/*',
      'icons/**/*',
      'images/**/*'
    ]
  }
```

Under the `concurrent` task, change `copy:styles` to `copy:server`:

```js
concurrent: {
  server: [
    'copy:server'
  ],
``` 

Lastly, we need to make sure Divshot Grunt serves files from the `/.tmp` directory. Update `root` from `'<%= yeoman.app %>'` to `'.tmp'` under `divshot:server`:

```js
divshot: {
  server: {
    options: {
      ...
      root: '.tmp'
      ...
    }
  }
}
```

*Want to make sure you followed the steps correctly? Refer to the example [Angular Gruntfile](https://gist.github.com/fastdivision/8344071).*