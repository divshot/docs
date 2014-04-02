---
layout: architect
title: Interface Overview
description: "Get a bird's-eye view of the Divshot user interface."
---

# Overview

<p class='lead'>There are five main components of the Divshot interface: the <b>header</b>, <b>navigator</b>, <b>canvas</b>, <b>inspector</b>, and <b>source editor</b>.</p>

<!-- TODO: New Overview image -->

### Header

The header is where you will go to create new folders and pages, switch which page you're working on, as well as perform account-related activities like logging out or changing your email address.

#### Project Switcher

The left-hand side of the navigation header provides access to projects and organizations. It displays the currently active project (and organization) and, when clicked, will allow you to switch between existing projects and organizations as well as create new projects and organizations.

For more on projects, view the [Managing Projects](/guides/projects.html) guide. For more on organizations, view the [Organizations and Collaboration](/guides/organizations.html) guide.

#### File Tabs

The center part of the header displays your currently open files in your current project. Files that have unsaved changes will have a circle next to them; to save a file just click the tab to activate it and either click the **Save** button or use the **Ctrl+S** keyboard shortcut.

#### Account Menu

The right side of the header displays the name and profile of the currently logged in user, and when clicked brings up access to account settings as well as a way to log off and contact support.

### Navigator

The left-hand sidebar is the **Navigator** and allows you to manage all of the files in your project, as well as export and share your project with others. Divshot projects function very much like folders on your computer, and you can think of the Navigator as the way to explore and manage those files. You can **right click** on a file or folder to perform actions such as rename, delete, etc.

<div class='alert alert-success'>
  <b>Quick Tip:</b> You can also upload files into your project by dragging and dropping them into the navigator sidebar.
</div>

### The Component Sidebar

The right-hand sidebar of the Divshot interface largely features the component drawer and inspector. This list of components represent the building blocks of any Divshot page. In order to add a component to the page, you simply click and drag the desired component from the list of components onto the canvas. See the [Working With Components Guide](/guides/components.html) for more information about how this works in practice.

### The Canvas

The canvas is where your page will take shape. Because Divshot works directly with HTML in the browser, what you see on the canvas is what you get when you export the code. The canvas allows you to select existing components by single clicking, modify existing content by double-clicking, as well as perform context operations by right clicking. For more information about working with the canvas content, see the [Content Guide](/guides/content.html).

### The Source Editor

The Source Editor can be called up by clicking the brackets icon in the page toolbar at any time. On an HTML file the source editor lets you see a split view of the canvas and HTML; on CSS and JS files the source editor takes up the entire viewport.

<ul class="pager">
	<li><a href="/architect"><b>Prev:</b> Help Center Home</a></li>
	<li><a href="/architect/guides/projects"><b>Next:</b> Managing Projects</a></li>
</ul>