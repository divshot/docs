---
layout: guides
title: Using the Source Editor
---

<h1 class='page-header'>Using the Source Editor</h1>

<p class='lead'>Divshot's powerful source editor allows you full control over your page, letting you edit HTML, CSS, and JavaScript directly with immediate preview.</p>

<h3 id='html'>Editing HTML</h3>

Divshot is the only visual editor of its kind that allows for direct full-page editing of the source code while you work. To edit HTML source, simply click the **Source Editor** icon in the top navigation bar of the Divshot interface. This will toggle the source editor open or closed.

![Divshot - Source Editor Button]({% asset_path source-editor-button.png %} "Source Editor Button")

<div class='alert alert-info alert-question'>
  <h4>Why does my source code reformat as I use the visual editor?</h4>
  <p>We want Divshot's source code output to be as clean as possible, so we're constantly running it through an algorithm to clean it up, provide proper indentation, etc. We hope to add tunable attributes to this process in the future to allow you to set your own favorite code style rules.</p>
</div>

Notice that as you edit HTML in the source editor the visual editor immediately updates to reflect changes. In addition, as you add recognizable components to the source the visual editor will automatically detect them and make them available. For instance, if you add `<a class='btn'>Hello</a>` to the source editor, Divshot will recognize that you have created a new Bootstrap "Button" component and you will be able to manipulate its configuration in the inspector.

![Divshot - Source Editor HTML]({% asset_path source-editor-html.png %} "Source Editor HTML")

<h3 id='css'>Editing CSS</h3>

The CSS editor allows you to create custom styles to change the look and feel of your page. To access the editor simply click the "CSS" tab at the top of the source code editor. In addition to supporting plain CSS, we also support the popular [LESS](), [SASS](), [SCSS](), and [Stylus]() CSS preprocessor syntaxes. You can choose which preprocessor you wish to use by selecting it with the dropdown on the right-hand side of the source editor's top toolbar.

![Divshot - Source Editor Menu]({% asset_path source-editor-menu.png %} "Source Editor Menu")

<div class='alert alert-success'><b>Quick Tip:</b> You can create custom styles for classes or IDs using the source editor and then apply those classes quickly by selecting a component and using the inspector.</div>

Note that it may take a few seconds after writing custom styles for it to apply to the canvas. This processing delay allows us to compile the source code for preprocessors and place the file in a secure place on our content delivery network.

<h3 id='js'>Editing JavaScript</h3>

The JavaScript editor allows you to add behavior to your Divshot page. Simply click the "JS" tab at the top of the source code editor to access the JavaScript editor. In addition to supporting plain JavaScript we also support adding CoffeeScript. If you wish to use CoffeeScript simply select it from the dropdown at the top right of the source code editor.

![Divshot - Source Editor Menu JavaScript]({% asset_path source-editor-menu-js.png %} "Source Editor Menu JavaScript")

Presently the JavaScript generated from the source editor is inserted just before the closing `</head>` tag. You should have access to jQuery and all Twitter Bootstrap JavaScript functionality.

<div class='alert alert-info alert-question'>
  <h4>Can I add my own JavaScript libraries to Divshot?</h4>
  <p>Not yet, but this is functionality that we do plan to add at a later time.</p>
</div>

Note that JavaScript is **not** executed in the canvas but rather only upon preview or export. This is both for application security and to ensure that the HTML content is not manipulated to an unusable state by JavaScript libraries.

<ul class="pager">
  <li><a href="/guides/content.html"><b>Previous:</b> Editing Content</a</li>
  <li><a href="/guides/export.html"><b>Next:</b> Preview and Export</a</li>
</ul>