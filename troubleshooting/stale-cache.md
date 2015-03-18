---
layout: hosting
title: Stale Cache
---

# Stale Cache

<p class="lead">If you're experiencing issues with your content not updating, we've implemented a solution below to manually clear your cache.</p>

Divshot was built for reliability, and sometimes it may serve stale cache. Serving stale content is better than serving a 404 or no content at all.

## Purging Cache in the CLI

```
divshot purge [env]
```

Where `[env]` is `development`, `staging`, or `production`. To purge everything, run `divshot purge` by itself.

See the blog post: [Improved Cache Management](https://divshot.com/blog/announcements/improved-cache-management/)