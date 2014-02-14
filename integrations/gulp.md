---
layout: default
title: Using Gulp with Divshot.io
---

# Using Gulp with Divshot Hosting

[Gulp](http://gulpjs.com) is a streaming build system for Node.js that offers many great features.
Due to its simple, programmable nature, you can integrate Divshot with your Gulp processes in no
time!

## Running a Local Server

Oftentimes you'll want to be able to run your local development server while also running a `watch`
task. We can use Node's process spawning to do this very easily. Just add the task below to your
`gulpfile.js`:

```javascript
gulp.task('server', function(cb) {
   var spawn = require('child_process').spawn;
   var log = function(data){ console.log("[Divshot] " + data.toString().trim()); }
    
   var server = spawn('divshot', ['server', '--port', '3000']);
  
   server.on('error', function(error) { console.log(error.stack) });
   server.stdout.on('data', log);
   server.stderr.on('data', log);
});
```

This simple task will allow you to run `gulp server` and have it function just like running `divshot server`.
Note that in this example we have specified that the server should run on port 3000. You can adapt this or
add any other command line arguments as suits your application.

## Combining with Other Tasks

Once you've defined your server task, you may want to combine it with another task. This is simple and works
just like any other gulp task. For instance, if we had a `watch` task for compiling our scripts, etc. we could
integrate that with the Divshot server like so:

```javascript
gulp.task('dev', ['watch','server']);
```

It's as simple as that!