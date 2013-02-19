---
layout: guides
title: Working With Components
---

<h1 class='page-header'>Working With Components</h1>

<p class='lead'>Components are the building blocks of Divshot's pages. A component represents a single user interface element such as a button, navigation bar, or alert box.</p>

### What is a Component?

In Divshot, a component is any reusable user interface element. Everything you see on a page in Divshot is made up of components. Components can be nested inside each other (for instance, a "Button Group" component might contain several "Button" components) and some components are only meant to be used inside another component (for instance, a "Menu Item" Bootstrap component is only meant to be used inside a "Menu" component).

Some components have configurable attributes (see [configuring components](#configuring-components) below) that alter their appearance or behavior. For instance, a Bootstrap "Menu" component may be tabs or pills and also may stack vertically or not.

### Adding Components to the Canvas

To add a component to the canvas, you simply drag it from the component drawer on the right hand side of the Divshot interface onto the canvas. As you drag, you will see a "ghost" version of the component appear. This ghost indicates where the component will be placed when you release the mouse button.

<div class='alert alert-question alert-block'>
  <h4>Why doesn't the component drop directly under my mouse?</h4>

  <p>Behind the scenes, Divshot's simple visual interface is building professional-quality HTML output. When developers build HTML pages each element flows onto the page based on the rules of HTML and CSS. By restricting component insertion to this real-world flow we ensure that all code generated with Divshot adheres to web development best practices.</p>
</div>

