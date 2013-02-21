---
layout: guides
title: Pages and Folders
---

<h1 class='page-header'>Pages and Folders</h1>

<p class='lead'>Divshot organizes your work into <b>folders</b> and <b>pages</b>. Pages are the primary document created by Divshot; each page exports directly to a single HTML file.</p>

### Creating a Page

One of the first actions you'll likely want to perform is to create a new page. To do this, click the page dropdown in the top navigation bar. This will open up a list of your existing pages as well as offer a button to **Create a Page**. Clicking on this button will open the **New Page Dialog**.

![Divshot - New Page Dialog]({% asset_path new-page-dialog.png %} "New Page Dialog")

The new page dialog allows you to modify the following attributes of a page:

* **Source:** Each page can be created from scratch (Blank Page), by duplicating the current page (Clone Current Page), from a globally supplied template (such as "Landing Page"), or from a [user-created template](#custom-templates). Simply click the option you wish to utilize.
* **Page Name:** Each page should have a descriptive name that will help you remember what content it contains.
* **Folder:** You can choose to put a page into an existing folder when it is created (for information about creating folders, [see below](#folders)).

<div class='alert alert-info alert-question'>
  <h4>Why is there no save button in Divshot?</h4>
  <p>Divshot works similar to online tools such as Google Documents by constantly saving in the background. We don't want you to have to worry about clicking save or losing all your work if your browser crashes. While the page is saving, the small page icon in the page dropdown will show an ellipsis, and a checkmark when saving is complete.</p>
</div>

### Modifying Page Options

You can change a page's name and folder after creation by accessing the **Page Options Dialog**. To open the page options dialog, click on the page dropdown and then click on the gear icon for the page you wish to edit. The page options dialog allows you to modify the page name and folder.

![Divshot - Page Options]({% asset_path page-options.gif %} "Page Options")

The **Use as Template** checkbox indicates that you wish to use the chosen page as a template for additional pages. If checked, this page will appear as a template option in the **New Page Dialog**.

### Page Templates

When working on a project it can often be helpful to create a common starting point containing shared user interface elements. In Divshot, these common starting points are called **Templates**. While there are a few templates available by default, templates are most powerful when created in service of your specific project needs.

To create a page template, simply create a page as normal and then open the **Page Options Dialog** as described in the preceding section. Check the box that says "Use as Page Template" and save your changes.

![Divshot - Page Options Dialog]({% asset_path page-options-dialog.png %} "Page Options Dialog")

<div class='alert alert-info alert-question'>
  <h4>Do changes to my template also change pages based on that template (or vice versa)?</h4>
  <p>No. At this time when you create a page based on a template the template's source code is duplicated into a new page. We may introduce more advanced templating functionality in the future.</p>
</div> 

### Folders

Folders are simply groups of similar pages that exist to help you organize your work. Folders are also used to help determine batch exports (see the [Exporting and Previewing Guide](/guides/export.html) for more information). To create a new folder, simply click the folder dropdown, type the folder name in the text field at the bottom, and click "Create Folder". Once a folder is created, new and existing pages can be assigned to it.

To switch between folders, you can click the folder dropdown and simply select a folder. This will filter the page dropdown to only display pages within that folder. Note that each folder has a number next to it indicating the number of pages it contains.

<div class='alert alert-success'><b>Quick Tip:</b> The *All Pages* option at the top of the folder list will show all pages, regardless of div.</folder>

<ul class="pager">
  <li><a href="/guides/overview.html"><b>Previous:</b> Interface Overview</a</li>
  <li><a href="/guides/components.html"><b>Next:</b> Working With Components</a</li>
</ul>