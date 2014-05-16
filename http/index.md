---
layout: http
title: HTTP Documentation
---

# Divshot Hosting HTTP API Documentation

The Divshot Hosting API exposes programmable access to the Divshot Hosting platform for static applications.

This index will provide a brief overview of the domain objects in the API, and the standard operational workflow.

## Domain

All of Divshot hosting stems from the [App](entities/App) entity.

An App has a name, which is used as the subdomain in urls.

An App has multiple environments (currently `dev`, `staging`, and `production).

In each environment, an application has a serially versioned list of [Releases](entities/Release).

An App has a collection of [Builds](entities/Build), which are immutable collections of files. Each release references exactly one Build, and two releases may references the same Build. In this way a Build can be 'promoted' between environments with the assurance the files served will be the same.

## Workflow

The typical workflow for deploying via the API is:

1. Create a build [POST /apps/:app_id/builds](POST/apps/:app_id/builds)
1. Upload files to the `loadpoint` server. The loadpoint server URL and Authorization header is given in the Build entity data.
1. Finalize the build. Once finalized, builds are immutable. [PUT /apps/:app_id/builds/:id/finalize](PUT/apps/:app_id/builds/:id/finalize)
1. Create a release [POST /apps/:app_id/releases](POST/apps/:app_id/releases/:env)

SDKs are available for interacting with the API and uploading data to the loadpoint server.
