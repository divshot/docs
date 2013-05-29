---
layout: guides
title: Scripts and Styles
description: "Divshot allows you to add custom stylesheets and scripts to your projects. Here's how."
---

<h1 class='page-header'>Scripts and Styles</h1>

<p class='lead'>Divshot allows you to add custom stylesheets and scripts to your projects.</p>

### Creating a Script or Stylesheet

To create a new script or stylesheet in your project, click the plus button in the left-hand
Navigator and then select **New File**. In the dialog that appears, select your desired extension
using the dropdown menu and then type out the name of the file you want to create. After that, simply
click the **Create File** button.

<div class='alert alert-success'><b>Quick Tip:</b> If you want to organize your files into folders,
use backslashes (for example <code>css/app.css</code>) in the filename. It just works!</div>

### Using Scripts and Styles

To use your scripts and styles in an HTML page, you can simply drag it onto the canvas from the 
Navigator and drop. CSS files will automatically be linked in the `<head>` element and JavaScript files
will automatically be included just before the `</body>` tag. You can alternately drag the files
into the source editor to place them directly.

### Working With CSS Preprocessors

When you create a SASS, LESS, SCSS, or Stylus file, Divshot will automatically compile a CSS file at the
same location. You should always use the CSS file, not the uncompiled file when dragging onto the canvas.

<ul class="pager">
  <li><a href="/guides/content.html"><b>Prev:</b> Editing Content</a></li>
  <li><a href="/guides/export.html"><b>Next:</b> Sharing and Exporting</a></li>
</ul>