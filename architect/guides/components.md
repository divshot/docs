---
layout: architect
title: Working With Components
description: "Learn more about Divshot's powerful drag-and-drop component panel."
---

# Working With Components

<p class='lead'>Components are the building blocks of Divshot's pages. A component represents a single user interface element such as a button, navigation bar, or alert box.</p>

### What is a Component?

In Divshot, a component is any reusable user interface element. Everything you see on a page in Divshot is made up of components. Components can be nested inside each other (for instance, a "Button Group" component might contain several "Button" components) and some components are only meant to be used inside another component (for instance, a "Menu Item" Bootstrap component is only meant to be used inside a "Menu" component).

![Divshot - Components]({% asset_path components.png %} "Components")

Some components have configurable attributes (see [configuring components](#configuring-components) below) that alter their appearance or behavior. For instance, a Bootstrap "Menu" component may be tabs or pills and also may stack vertically or not.

### Adding Components to the Canvas

To add a component to the canvas, you simply drag it from the component drawer on the right hand side of the Divshot interface onto the canvas. As you drag, you will see a "ghost" version of the component appear. This ghost indicates where the component will be placed when you release the mouse button.

![Divshot - Canvas Component Dragging]({% asset_path canvas-drag.gif %} "Dragging Components to the Canvas")

<div class='alert alert-question alert-info alert-block'>
  <h4>Why doesn't the component drop directly under my mouse?</h4>

  <p>Behind the scenes, Divshot's simple visual interface is building professional-quality HTML output. When developers build HTML pages each element flows onto the page based on the rules of HTML and CSS. By restricting component insertion to this real-world flow we ensure that all code generated with Divshot adheres to web development best practices.</p>
</div>

### Manipulating Existing Components

You can select a component on the canvas by clicking it. The currently selected component will be outlined in blue and will also cause the options available in the [inspector](#configuring-components) to change based on the type of component.

![Divshot - Canvas Component Selecting]({% asset_path canvas-select.gif %} "Selecting Components on the Canvas")

<div class='alert alert-success'><b>Quick Tip:</b> If you want to select a parent of the selected component, you can use the breadcrumb navigation at the top of the canvas to select components up the hierarchy.</div>

Once a component is selected, you can delete it by pressing the **Delete** key on your keyboard. You can also cut (**Ctrl+X**), copy (**Ctrl+C**), and paste (**Ctrl+V**) components. You can **right click** a component to bring up a context menu with options including the ability to instantly view the HTML source of the component.

If there is text content you want to modify on the page, simply **double click** the text you want to edit. You can learn more about this feature in the [Content Editing Guide](/architect/guides/content.html).

<h3 id='configuring-components'>Configuring Components with the Inspector</h3>

![Divshot - Inspector Component Configuration]({% asset_path inspector.gif %} "Configuring Components with the Inspector")

The **Inspector** is a panel in the sidebar that allows you to change both component-specific attributes and generic properties of a component. Any component-specific attributes should be self-descriptive (for instance, the Bootstrap "Button" component has a "Size" attribute in the inspector that lets you change the size of the button). There are some attributes that can be applied to all Divshot components, these are:

* **Classes:** This is a space-separated list of CSS classes to apply to this component. This is especially useful if you have written custom CSS in the [source editor](/architect/guides/source.html#custom-css).
* **ID:** This defines a custom HTML element ID to the selected component. Remember that IDs should be unique on a page, so don't give two components the same ID.
* **Float:** You may want a component to float outside the normal flow of elements. You can choose to float to the right or left of the layout using this option. This is useful, for instance, when adding multiple menus to a navigation bar.
* **Visibility:** Because Divshot has built-in responsive design features, visibility allows you to select which devices you want a component to appear on.

<ul class="pager">
  <li><a href="/architect/guides/pages"><b>Previous:</b> Pages and Folders</a></li>
  <li><a href="/architect/guides/content"><b>Next:</b> Editing Content</a></li>
</ul>