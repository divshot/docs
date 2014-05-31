---
layout: hosting
title: "Frequently Asked Questions"
---

<p class="lead">Looking for answers? Hopefully they can be found here.</p>

### Why does my application say "404 Not Found" when I visit?

There are two common causes of this issue. First, make sure that you have
an **index.html** file (either in your Architect project or in your project
folder for uploads via web or command-line). If you don't have an index.html
file, that doesn't mean that your files aren't there, you'll just need to
type in the full path to them.

For example, if my app has only the file **hello.html**, I would need to
go to (for example) `http://my-app.divshot.io/hello.html` to see the file.

If you are uploading a `.zip` file, you need to make sure that you are
zipping the contents of your project folder, not the folder itself. If you
open the `.zip` file on your computer, you should **not** see a single
folder with your project's name.