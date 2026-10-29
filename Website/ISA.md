---
title: "kingsleyobi.com — Frontend Ideal State Artifact (ISA)"
subtitle: "Website structure, components and design-system specification"
version: 0.1.0
status: ready-to-build (reference verification pending)
date: 2026-10-29
---

# kingsleyobi.com — Frontend Ideal State Artifact

**Version** 0.1.0 · **Date** 2026-10-29 · **Status** ready to build; checking against the reference site is still to do (see §1.3 and §15)

## Summary

This ISA is the canonical frontend specification for **https://kingsleyobi.com**: a fast, static, long-form personal website with nine page templates, 28 reusable components, one token-based design system with light and dark themes, and 40 testable acceptance criteria (§14). It defines structure, markup, components, styling and behaviour. It does not define written content, branding copy or personal positioning.

Done means: every template in §4 renders from the components in §6–7, uses only the tokens in §8, and passes every acceptance criterion in §14 on the deployed site.

---

## 1. Scope and reverse-engineering methodology

### 1.1 Scope

In scope: page templates, DOM hierarchy, semantic markup, reusable components, CSS and design tokens, responsive behaviour, navigation, interactivity, accessibility, source-file structure and acceptance tests.

Out of scope: the reference site's author's philosophy, identity, writing system and content model; any copying of the reference site's text, images, logos, fonts or code; and building the site itself (this document comes first).

### 1.2 Intended method

The brief specifies a direct inspection of https://danielmiessler.com:

1. Discover page types from its navigation, `robots.txt` and `sitemap.xml`.
2. For each page type, capture three separate kinds of evidence:
   - **Page source**: the server HTML response, before scripts run.
   - **Rendered DOM**: the document after scripts run, captured in headless Chromium.
   - **Computed styles**: `getComputedStyle` values for key elements at 1440 px and 390 px viewport widths, with screenshots at each width.
3. Record only observed components, and translate the patterns into original specifications.

### 1.3 What actually happened, and how to read this document

The live inspection **could not be performed**. This session's network policy refused every connection to `danielmiessler.com` (an HTTPS CONNECT returned 403 at the egress proxy, and the fetch tool failed DNS resolution). The principal asked for the ISA to be produced anyway so the build can start.

So the specification is an **original design** built on established, standards-based patterns for minimalist long-form personal sites. **None of its structural or visual values were taken from the reference site.** Every requirement carries an evidence tag:

| Tag | Meaning |
|---|---|
| **[O]** | Observed on the reference site. Only one fact qualifies, via a search-engine index (§2, §15). |
| **[R]** | Original recommendation: a concrete design decision made for kingsleyobi.com. Binding for the build. |
| **[V]** | Recommendation to verify against the reference site once access exists (§15.4). Binding for the build until the check is done; may be revised afterwards. |

`RESEARCH.md` is deferred until the inspection can run. §15.4 gives the protocol that will produce it.

---

## 2. Pages and templates inspected

| Reference page type | Intended source | Status |
|---|---|---|
| Homepage | `https://danielmiessler.com/` | Not inspected: network blocked |
| Article (individual post) | e.g. [/p/considering-using-danielmiessler-com-instead-of-dmiessler-com](https://danielmiessler.com/p/considering-using-danielmiessler-com-instead-of-dmiessler-com) | Not inspected. **[O]** The search index shows posts are served under a `/p/<slug>` path |
| Blog archive / listing | discover via nav or sitemap | Not inspected |
| About / standard page | discover via nav or sitemap | Not inspected |
| Projects listing / detail | discover via nav or sitemap | Not inspected |
| Category / tag archive | discover via nav or sitemap | Not inspected |
| Search / navigation UI | discover via header | Not inspected |
| `robots.txt`, `sitemap.xml` | site root | Not fetched |

**The only observed fact is the `/p/<slug>` article URL pattern [O].** It is recorded as evidence only and does not decide kingsleyobi.com's URL design (§4.9 uses `/writing/<slug>/`).

---

## 3. Site-wide layout and DOM hierarchy

### 3.1 Layout model [R]

- A single-column, centred, reading-first layout. Content width is set by role, not by page:
  - `--w-prose` for running text.
  - `--w-wide` for listings, cards and wide figures.
  - `--w-page` for the header and footer frame.
- The header and footer are identical on every template. Only `<main>` varies.
- No sidebars at any width. The article table of contents sits inline on narrow screens and becomes a sticky side rail only at ≥ 75 rem (§9).

### 3.2 Site-wide DOM tree [R]

```text
html[lang="en"][data-theme]
└── body.site
    ├── a.skip-link[href="#main"]
    ├── header.site-header                  (banner landmark)
    │   └── div.container.container--page
    │       ├── a.site-brand[href="/"]       (wordmark text, aria-label="Kingsley Obi — home")
    │       ├── nav.primary-nav[aria-label="Primary"]
    │       │   ├── button.nav-toggle[aria-expanded][aria-controls="primary-menu"]  (< 40rem only)
    │       │   └── ul#primary-menu.primary-nav__list
    │       │       └── li > a.primary-nav__link[aria-current="page"?]
    │       └── div.header-actions
    │           ├── a.icon-button[href="/search/"][aria-label="Search"]
    │           └── button.theme-toggle[aria-pressed]
    ├── main#main.site-main[tabindex="-1"]   (main landmark; template-specific)
    └── footer.site-footer                   (contentinfo landmark)
        └── div.container.container--page
            ├── nav.footer-nav[aria-label="Footer"] > ul > li > a
            ├── ul.social-links > li > a[aria-label]
            └── p.site-footer__legal  (© year, licence, RSS link)
```

### 3.3 Container primitive [R]

```html
<div class="container container--prose">…</div>   <!-- max-width: var(--w-prose) -->
<div class="container container--wide">…</div>    <!-- max-width: var(--w-wide)  -->
<div class="container container--page">…</div>    <!-- max-width: var(--w-page)  -->
```

Every container gets `margin-inline: auto` and `padding-inline: var(--gutter)`. Containers never nest inside one another. A wide element inside prose uses the `.bleed-wide` utility (§8.7).

---

## 4. Page-template specifications

All templates share `SiteHeader`, `SiteFooter`, `SkipLink` and the `BaseLayout` document shell (§12). Each row below lists the components unique to that template.

### 4.1 Template summary [R]

| # | Template | URL pattern | `<main>` children (in order) | Unique components |
|---|---|---|---|---|
| T1 | Home | `/` | Hero · Recent writing · Featured projects · Contact CTA | `Hero`, `SectionHeader`, `CTABlock` |
| T2 | Standard page | `/about/`, `/now/`, `/contact/`, `/colophon/` | PageHeader · Prose | none (base only) |
| T3 | Writing archive | `/writing/`, `/writing/page/<n>/` | PageHeader · TopicFilter · PostList · Pagination | `PostListItem`, `Pagination`, `TopicFilter` |
| T4 | Article | `/writing/<slug>/` | ArticleHeader · TOC · Prose · ArticleFooter · RelatedPosts · PrevNext | `ArticleHeader`, `ArticleMeta`, `TOC`, `CodeBlock`, `Callout`, `Figure`, `RelatedPosts`, `PrevNext` |
| T5 | Projects listing | `/projects/` | PageHeader · ProjectGrid | `ProjectCard` |
| T6 | Project detail | `/projects/<slug>/` | Breadcrumb · ProjectHeader · Prose · ProjectFacts · RelatedPosts | `Breadcrumb`, `ProjectHeader`, `ProjectFacts` |
| T7 | Topic archive | `/topics/`, `/topics/<topic>/` | PageHeader · PostList (or TopicIndex) · Pagination | `TopicIndex` |
| T8 | Search | `/search/` | PageHeader · SearchBox · SearchResults | `SearchBox`, `SearchResults` |
| T9 | Not found | `/404.html` | PageHeader · Prose · SearchBox · link home | none |

Machine endpoints: `/rss.xml`, `/sitemap-index.xml`, `/robots.txt` [R].

### 4.2 T1 Home [R]

```text
main#main.site-main.template-home
├── section.hero[aria-labelledby="hero-title"]  > div.container--wide
│   ├── h1#hero-title.hero__title
│   ├── p.hero__lede
│   └── div.hero__actions > a.button.button--primary + a.button.button--ghost
├── section.home-section[aria-labelledby="recent-title"] > div.container--wide
│   ├── header.section-header > h2#recent-title + a.section-header__more
│   └── ol.post-list > li.post-list-item × 5
├── section.home-section[aria-labelledby="projects-title"] > div.container--wide
│   ├── header.section-header > h2#projects-title + a.section-header__more
│   └── ul.card-grid > li > article.project-card × 3
└── section.cta-block[aria-labelledby="cta-title"] > div.container--prose
```

Variation: if there are no projects, the projects section is omitted entirely. It never renders empty.

### 4.3 T2 Standard page [R]

```text
main#main.site-main.template-page
└── article.page > div.container--prose
    ├── header.page-header > h1.page-header__title + p.page-header__lede?
    └── div.prose  (Markdown-rendered body)
```

### 4.4 T3 Writing archive [R]

```text
main#main.site-main.template-archive
└── div.container--wide
    ├── header.page-header > h1 + p.page-header__lede + p.page-header__count
    ├── nav.topic-filter[aria-label="Filter by topic"] > ul > li > a.tag
    ├── ol.post-list[reversed]  > li.post-list-item × 20
    └── nav.pagination[aria-label="Pagination"]
```

Variation: if there are 20 posts or fewer, pagination is not rendered. Alternative layout: `post-list--grouped` adds `h2.post-list__year` group headings by year.

### 4.5 T4 Article [R]

```text
main#main.site-main.template-article
└── article.article[itemscope?] 
    ├── header.article-header > div.container--prose
    │   ├── nav.breadcrumb? (optional, off by default)
    │   ├── h1.article-header__title
    │   ├── p.article-header__dek?
    │   └── div.article-meta
    │       ├── time[datetime]  (published)
    │       ├── time[datetime]? (updated — "Updated <date>")
    │       ├── span.article-meta__reading-time
    │       └── ul.tag-list > li > a.tag[rel="tag"]
    ├── figure.article-hero? > img + figcaption   (optional, .bleed-wide)
    ├── div.article-layout   (grid at ≥ 75rem)
    │   ├── nav.toc[aria-labelledby="toc-title"]   (only if ≥ 3 h2)
    │   └── div.prose.container--prose  (h2/h3, p, lists, figure, pre, blockquote, table, aside.callout)
    └── footer.article-footer > div.container--prose
        ├── ul.tag-list
        ├── p.article-footer__share  (copy-link button; optional)
        ├── section.related-posts[aria-labelledby]  > ul > li > article.post-card × 3
        └── nav.prev-next[aria-label="More writing"] > a[rel="prev"] + a[rel="next"]
```

Variations: `article--no-toc` (fewer than 3 `h2`), `article--with-hero`, `article--note` (a short form: no TOC, no hero, no reading time).

### 4.6 T5 Projects listing [R]

```text
main#main.site-main.template-projects > div.container--wide
├── header.page-header
└── ul.card-grid > li > article.project-card × n   (status filter optional: active / archived)
```

### 4.7 T6 Project detail [R]

```text
main#main.site-main.template-project
└── article.project > div.container--prose
    ├── nav.breadcrumb[aria-label="Breadcrumb"] > ol > li × 3  (Home / Projects / <title>)
    ├── header.project-header > h1 + p.dek + ul.badge-list + div.project-header__links (a.button × 1–3)
    ├── dl.project-facts   (Role, Period, Status, Stack/Methods, Partners)
    ├── div.prose
    └── section.related-posts?
```

### 4.8 T7–T9 [R]

- **T7 Topic archive:** `/topics/` renders `ul.topic-index` (topic name plus post count). `/topics/<topic>/` reuses T3 and changes only the heading ("Topic: <name>") and the canonical URL.
- **T8 Search:** a static, client-side index (Pagefind is recommended, §13). The page works without JavaScript: a `<noscript>` message links to `/writing/` and `/topics/`.
- **T9 Not found:** a standard page with a SearchBox and a link home. It returns HTTP 404 status.

### 4.9 URL and routing rules [R]

- Trailing slash on every HTML route. Slugs are lowercase kebab-case ASCII.
- Article slugs never change after publication. A renamed slug gets a 301 entry in `public/_redirects` (or the host's equivalent).
- Each page has exactly one canonical URL: `<link rel="canonical">` is absolute and uses `https://kingsleyobi.com`.

---

## 5. HTML element and semantic markup requirements

### 5.1 Document head [R]

```html
<!doctype html>
<html lang="en" data-theme="light">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>{Page title} — Kingsley Obi</title>
  <meta name="description" content="{≤ 160 chars}">
  <link rel="canonical" href="https://kingsleyobi.com{path}">
  <meta name="color-scheme" content="light dark">
  <meta name="theme-color" content="#ffffff" media="(prefers-color-scheme: light)">
  <meta name="theme-color" content="#0f1115" media="(prefers-color-scheme: dark)">
  <link rel="icon" href="/favicon.svg" type="image/svg+xml">
  <link rel="alternate" type="application/rss+xml" title="Kingsley Obi — Writing" href="/rss.xml">
  <meta property="og:type" content="website|article">
  <meta property="og:title" content="{title}">
  <meta property="og:description" content="{description}">
  <meta property="og:url" content="https://kingsleyobi.com{path}">
  <meta property="og:image" content="https://kingsleyobi.com/og/{slug}.png">
  <meta name="twitter:card" content="summary_large_image">
  <link rel="preload" href="/fonts/{body}.woff2" as="font" type="font/woff2" crossorigin>
  <script>/* inline theme bootstrap, §10.3 — runs before first paint */</script>
  <link rel="stylesheet" href="/styles/{hash}.css">
  <script type="application/ld+json">{ /* Person on home, BlogPosting on articles */ }</script>
</head>
```

### 5.2 Landmarks and elements [R]

| Requirement | Rule |
|---|---|
| Landmarks | Exactly one each of `header.site-header`, `main#main` and `footer.site-footer` per page. Every `nav` has a unique `aria-label`. |
| Headings | Exactly one `h1` per page. Levels never skip (h2 → h4 is forbidden). Section headings inside `main` start at `h2`. Card titles inside listings are `h2` (archive) or `h3` (inside a sectioned home or related block). |
| Lists | Post lists are `ol`. Card grids, tag lists, nav menus and social links are `ul`. Project facts are `dl`. |
| Dates | Every date is a `time[datetime="YYYY-MM-DD"]`. The display format is `29 Oct 2026`. |
| Links vs buttons | `a[href]` navigates; `button[type="button"]` acts (toggle, copy). Never `div[onclick]`. |
| Images | `img` always has `alt` (empty only if decorative), `width`, `height`, `loading="lazy"` (except the hero/LCP image, which gets `fetchpriority="high"`) and `decoding="async"`. Content images are wrapped in `figure` with an optional `figcaption`. |
| Tables | Prose tables are wrapped in `div.table-wrap[role="region"][tabindex="0"][aria-label]` for horizontal scroll. Each has a `caption` or a preceding heading, and `th[scope]`. |
| Code | Block: `pre > code.language-{lang}`. Inline: `code`. |
| Quotes | `blockquote` with optional `cite` / `figcaption` attribution in a `figure`. |
| Embeds | `iframe` only via the `Embed` component: `title` is required, `loading="lazy"`, wrapped in `div.embed` for aspect ratio. |
| Forms | Every input has a visible `label`. Search uses `form[role="search"]`. |
| External links | `rel="noopener"`. No `target="_blank"` unless the content needs it; if used, a visually hidden "(opens in new tab)" is added. |

---

## 6. Reusable component inventory

The evidence column tags every component **[R]**: none were observed on the reference site (§1.3). The *Verify* column marks the components whose presence and form on the reference site should be checked first [V].

| # | Component | Purpose | Templates | Root element / class | Variants | Interactive | Verify |
|---|---|---|---|---|---|---|---|
| C1 | SkipLink | Jump past header | all | `a.skip-link` | none | focus reveal | |
| C2 | SiteHeader | Brand, nav, actions | all | `header.site-header` | `--sticky` (off by default) | none | V |
| C3 | PrimaryNav | Main navigation | all | `nav.primary-nav` | desktop inline / mobile disclosure | toggle | V |
| C4 | ThemeToggle | Light/dark switch | all | `button.theme-toggle` | icon only | toggle + persist | V |
| C5 | SiteFooter | Footer nav, social, legal | all | `footer.site-footer` | none | none | V |
| C6 | PageHeader | Page title block | T2, T3, T5, T7–T9 | `header.page-header` | `--with-lede`, `--with-count` | none | |
| C7 | Hero | Home introduction | T1 | `section.hero` | `--with-portrait` | none | V |
| C8 | SectionHeader | Titled section with "see all" | T1 | `header.section-header` | none | none | |
| C9 | PostListItem | Compact post row | T1, T3, T7 | `li.post-list-item` | `--with-excerpt`, `--compact` | none | V |
| C10 | PostCard | Visual post teaser | T4 related | `article.post-card` | `--with-image` | whole-card link | |
| C11 | ProjectCard | Project teaser | T1, T5 | `article.project-card` | `--featured`, `--archived` | whole-card link | V |
| C12 | ArticleHeader | Article title block | T4 | `header.article-header` | `--with-dek` | none | V |
| C13 | ArticleMeta | Dates, reading time, tags | T4, C9 | `div.article-meta` | `--inline` | none | V |
| C14 | TagList / Tag | Topic links | T3, T4, T6 | `ul.tag-list > li > a.tag` | `--active` | none | V |
| C15 | TOC | In-article navigation | T4 | `nav.toc` | inline / sticky rail | scroll-spy (progressive) | V |
| C16 | Prose | Rendered Markdown typography | T2, T4, T6 | `div.prose` | none | none | V |
| C17 | CodeBlock | Highlighted code | T4 | `figure.code-block` | `--with-filename` | copy button | V |
| C18 | Callout | Note/tip/warning | T4, T6 | `aside.callout` | `--note`, `--tip`, `--warning` | none | V |
| C19 | Figure / Embed | Images, video | T4, T6 | `figure.figure`, `div.embed` | `--wide`, `--full` | none | |
| C20 | Pagination | Paged archives | T3, T7 | `nav.pagination` | none | none | V |
| C21 | PrevNext | Adjacent articles | T4 | `nav.prev-next` | none | none | V |
| C22 | RelatedPosts | Related content | T4, T6 | `section.related-posts` | none | none | V |
| C23 | Breadcrumb | Hierarchy trail | T6 | `nav.breadcrumb` | none | none | |
| C24 | Button | Calls to action | T1, T6, CTA | `a.button` / `button.button` | `--primary`, `--ghost`, `--small` | states §8.8 | |
| C25 | SearchBox / Results | Site search | T8, T9 | `form.search-box[role=search]` | none | live results | V |
| C26 | CTABlock | Contact / subscribe prompt | T1, T4 footer (optional) | `section.cta-block` | `--subtle` | none | V |
| C27 | ProjectFacts | Key/value project data | T6 | `dl.project-facts` | none | none | |
| C28 | Badge | Status labels | T5, T6 | `span.badge` | `--active`, `--archived` | none | |

---

## 7. Component structure and variants

All snippets are **target markup [R]** for the kingsleyobi.com build. Class naming is BEM-style (`block__element--modifier`).

### C1 SkipLink

```html
<a class="skip-link" href="#main">Skip to content</a>
```

Visually hidden until focused. When focused it appears at the top-left with `--shadow-md`, above everything (`z-index: 100`).

### C2–C4 SiteHeader, PrimaryNav, ThemeToggle

```html
<header class="site-header">
  <div class="container container--page site-header__inner">
    <a class="site-brand" href="/" aria-label="Kingsley Obi — home">Kingsley Obi</a>
    <nav class="primary-nav" aria-label="Primary">
      <button class="nav-toggle" type="button" aria-expanded="false" aria-controls="primary-menu">
        <span class="visually-hidden">Menu</span><svg aria-hidden="true">…</svg>
      </button>
      <ul id="primary-menu" class="primary-nav__list">
        <li><a class="primary-nav__link" href="/writing/" aria-current="page">Writing</a></li>
        <li><a class="primary-nav__link" href="/projects/">Projects</a></li>
        <li><a class="primary-nav__link" href="/about/">About</a></li>
        <li><a class="primary-nav__link" href="/contact/">Contact</a></li>
      </ul>
    </nav>
    <div class="header-actions">
      <a class="icon-button" href="/search/" aria-label="Search"><svg aria-hidden="true">…</svg></a>
      <button class="theme-toggle icon-button" type="button" aria-pressed="false" aria-label="Dark theme">
        <svg aria-hidden="true">…</svg>
      </button>
    </div>
  </div>
</header>
```

- Layout: flex, `justify-content: space-between`, `align-items: center`, height `--header-h` (4 rem).
- `aria-current="page"` is set on the link for the current section (prefix match, so `/writing/x/` marks Writing).
- Below 40 rem: the toggle is visible and the list is hidden until `aria-expanded="true"`. Above 40 rem: the toggle has `display:none` and the list is an inline flex row with `gap: var(--space-6)`.

### C6 PageHeader

```html
<header class="page-header">
  <h1 class="page-header__title">Writing</h1>
  <p class="page-header__lede">Short description of the section.</p>
  <p class="page-header__count">42 posts</p>
</header>
```

### C9 PostListItem

```html
<li class="post-list-item">
  <article>
    <h2 class="post-list-item__title"><a href="/writing/slug/">Post title</a></h2>
    <div class="article-meta article-meta--inline">
      <time datetime="2026-10-29">29 Oct 2026</time>
      <span aria-hidden="true">·</span><span>6 min read</span>
    </div>
    <p class="post-list-item__excerpt">One- to two-line excerpt.</p>  <!-- --with-excerpt only -->
  </article>
</li>
```

At ≥ 60 rem, `--compact` becomes a two-column grid (`grid-template-columns: 8rem 1fr`) with the date on the left.

### C10–C11 PostCard and ProjectCard

```html
<article class="project-card">
  <img class="project-card__media" src="…" alt="" width="640" height="360" loading="lazy">
  <div class="project-card__body">
    <h3 class="project-card__title"><a class="card-link" href="/projects/slug/">Project name</a></h3>
    <p class="project-card__summary">One-sentence summary.</p>
    <ul class="badge-list"><li><span class="badge badge--active">Active</span></li></ul>
  </div>
</article>
```

- The whole card is clickable through `.card-link::after { content:""; position:absolute; inset:0 }`. There is only one link per card.
- Styling: `--surface` background, `1px solid var(--border)`, `--radius-lg`. On hover or focus-within: border becomes `--accent` and `translateY(-2px)` (disabled under `prefers-reduced-motion`).
- Media aspect ratio is fixed at **16:9** (`aspect-ratio: 16 / 9; object-fit: cover`).

### C12–C14 ArticleHeader, ArticleMeta, TagList

```html
<header class="article-header">
  <div class="container container--prose">
    <h1 class="article-header__title">Article title</h1>
    <p class="article-header__dek">Optional one-sentence standfirst.</p>
    <div class="article-meta">
      <span>Published <time datetime="2026-10-01">1 Oct 2026</time></span>
      <span>Updated <time datetime="2026-10-20">20 Oct 2026</time></span>
      <span class="article-meta__reading-time">8 min read</span>
      <ul class="tag-list" aria-label="Topics">
        <li><a class="tag" href="/topics/evaluation/" rel="tag">evaluation</a></li>
      </ul>
    </div>
  </div>
</header>
```

### C15 TOC

```html
<nav class="toc" aria-labelledby="toc-title">
  <h2 id="toc-title" class="toc__title">On this page</h2>
  <ol class="toc__list">
    <li><a href="#section-id">Section</a>
      <ol><li><a href="#sub-id">Subsection</a></li></ol>
    </li>
  </ol>
</nav>
```

- Generated at build time from `h2`/`h3` (depth 2). Rendered only if the article has ≥ 3 `h2`.
- Below 75 rem: inside a `details.toc-disclosure` (closed by default) above the prose. At ≥ 75 rem: `position: sticky; top: calc(var(--header-h) + var(--space-6))` in the left rail.
- Scroll-spy is a progressive enhancement: an `IntersectionObserver` sets `aria-current="true"` on the active link. Without JavaScript the TOC still works.

### C16 Prose

Rules applied inside `.prose` only:

- Flow spacing: `> * + * { margin-block-start: var(--space-5) }`; `h2` gets `margin-block-start: var(--space-10)`; `h3` gets `var(--space-8)`.
- Headings have anchor links: `h2[id] > a.heading-anchor[aria-label="Link to section"]`, visible on hover or focus.
- Links are underlined (`text-decoration-thickness: 1px; text-underline-offset: 0.2em`), coloured `--accent`.
- Lists: `padding-inline-start: 1.25em`, `li + li { margin-top: var(--space-2) }`.
- `blockquote`: `border-inline-start: 3px solid var(--accent)`, `padding-inline-start: var(--space-5)`, `color: var(--text-muted)`, italic off.
- `hr`: `1px solid var(--border)`, `margin-block: var(--space-10)`.

### C17 CodeBlock

```html
<figure class="code-block">
  <figcaption class="code-block__filename">src/styles/tokens.css</figcaption>  <!-- --with-filename -->
  <pre tabindex="0"><code class="language-css">…</code></pre>
  <button class="code-block__copy button button--small" type="button">Copy</button>
</figure>
```

- Syntax highlighting happens at build time (no runtime highlighter). Themes follow `--code-*` tokens in both colour modes.
- `pre` uses `overflow-x: auto` (no wrapping), `font-size: var(--fs-sm)`, `padding: var(--space-5)`, `--radius-md`.
- After clicking, the copy button text changes to "Copied" for 2 s, announced through an `aria-live="polite"` region. It is hidden when `navigator.clipboard` is unavailable.

### C18 Callout

```html
<aside class="callout callout--note" aria-label="Note">
  <p class="callout__title">Note</p>
  <p>Callout body.</p>
</aside>
```

Variants change only `--callout-accent` (note = `--accent`, tip = `--success`, warning = `--warning`). Styling: `border-inline-start: 4px solid var(--callout-accent)`, `background: var(--surface)`, `--radius-md`. Written in Markdown as `> [!NOTE]`, `> [!TIP]`, `> [!WARNING]` and transformed at build time.

### C20–C21 Pagination and PrevNext

```html
<nav class="pagination" aria-label="Pagination">
  <a class="pagination__prev" href="/writing/" rel="prev">← Newer</a>
  <ol class="pagination__pages">
    <li><a href="/writing/">1</a></li>
    <li><a href="/writing/page/2/" aria-current="page">2</a></li>
    <li><a href="/writing/page/3/">3</a></li>
  </ol>
  <a class="pagination__next" href="/writing/page/3/" rel="next">Older →</a>
</nav>
```

When there is no previous or next page, that control is omitted, not shown disabled. PrevNext uses the same pattern with article titles as link text.

### C23 Breadcrumb

```html
<nav class="breadcrumb" aria-label="Breadcrumb">
  <ol>
    <li><a href="/">Home</a></li>
    <li><a href="/projects/">Projects</a></li>
    <li><a href="/projects/slug/" aria-current="page">Project name</a></li>
  </ol>
</nav>
```

Separators are added with CSS (`li + li::before { content: "/" }`) and are not in the DOM text. It is paired with `BreadcrumbList` JSON-LD.

### C24 Button

| Variant | Background | Text | Border | Hover / focus |
|---|---|---|---|---|
| `--primary` | `--accent` | `--on-accent` | none | bg `--accent-strong` |
| `--ghost` | transparent | `--text` | `1px solid var(--border-strong)` | border `--accent`, text `--accent` |
| `--small` | inherits | inherits | inherits | padding `--space-1 --space-3`, `--fs-sm` |

Base: `display:inline-flex; align-items:center; gap:var(--space-2); min-height:2.75rem; padding:var(--space-3) var(--space-5); border-radius:var(--radius-md); font-weight:600`.

### C25 SearchBox

```html
<form class="search-box" role="search" action="/search/" method="get">
  <label for="q">Search the site</label>
  <input id="q" name="q" type="search" autocomplete="off">
  <button class="button button--primary" type="submit">Search</button>
</form>
<div class="search-results" aria-live="polite"></div>
```

`?q=` in the URL is honoured on load, so results are shareable.

### C27 ProjectFacts

```html
<dl class="project-facts">
  <div><dt>Role</dt><dd>…</dd></div>
  <div><dt>Period</dt><dd><time datetime="2025-01">Jan 2025</time> – present</dd></div>
  <div><dt>Status</dt><dd><span class="badge badge--active">Active</span></dd></div>
</dl>
```

At ≥ 40 rem this is a two-column grid (`grid-template-columns: max-content 1fr`).

---

## 8. CSS and design-token specifications

All values are **original [R]**. All tokens live in `src/styles/tokens.css` as custom properties on `:root`. Components reference tokens only; a raw hex value or px size outside `tokens.css` is a defect (acceptance criterion AC-25).

### 8.1 Typography

| Token | Value | Use |
|---|---|---|
| `--font-sans` | `"Inter", ui-sans-serif, system-ui, -apple-system, "Segoe UI", Roboto, sans-serif` | UI, headings, nav, meta |
| `--font-serif` | `"Source Serif 4", ui-serif, Georgia, "Times New Roman", serif` | Long-form prose body |
| `--font-mono` | `"JetBrains Mono", ui-monospace, SFMono-Regular, Menlo, Consolas, monospace` | Code |

All three are SIL OFL fonts, **self-hosted** as `woff2` variable fonts with `font-display: swap`. Only the body font is preloaded.

Weights: 400 body, 600 UI emphasis and buttons, 700 headings.

### 8.2 Type scale (fluid, ~1.25 ratio)

| Token | Mobile (≤ 40rem) | Desktop (≥ 75rem) | CSS value | Line height |
|---|---|---|---|---|
| `--fs-xs` | 0.8125rem | 0.8125rem | `0.8125rem` | 1.4 |
| `--fs-sm` | 0.875rem | 0.9375rem | `clamp(0.875rem, 0.85rem + 0.1vw, 0.9375rem)` | 1.5 |
| `--fs-base` | 1.0625rem | 1.1875rem | `clamp(1.0625rem, 1rem + 0.3vw, 1.1875rem)` | 1.7 (prose) / 1.5 (UI) |
| `--fs-lg` | 1.1875rem | 1.375rem | `clamp(1.1875rem, 1.1rem + 0.4vw, 1.375rem)` | 1.5 |
| `--fs-h3` | 1.25rem | 1.5rem | `clamp(1.25rem, 1.15rem + 0.5vw, 1.5rem)` | 1.3 |
| `--fs-h2` | 1.5rem | 1.875rem | `clamp(1.5rem, 1.3rem + 0.9vw, 1.875rem)` | 1.25 |
| `--fs-h1` | 2rem | 2.75rem | `clamp(2rem, 1.6rem + 1.8vw, 2.75rem)` | 1.15 |
| `--fs-display` | 2.375rem | 3.5rem | `clamp(2.375rem, 1.8rem + 2.6vw, 3.5rem)` | 1.1 |

Headings use `--font-sans` at weight 700 with `letter-spacing: -0.015em` (h1/display `-0.02em`) and `text-wrap: balance`. Prose paragraphs use `text-wrap: pretty`.

### 8.3 Widths and frame

| Token | Value | Notes |
|---|---|---|
| `--w-prose` | `42rem` (≈ 672 px; ~68–72 characters at `--fs-base` serif) | Running text |
| `--w-wide` | `60rem` (960 px) | Listings, card grids, wide figures |
| `--w-page` | `75rem` (1200 px) | Header/footer frame, article grid |
| `--gutter` | `clamp(1rem, 4vw, 2rem)` | Inline page padding |
| `--header-h` | `4rem` | Header height |
| `--toc-w` | `14rem` | Sticky TOC rail width |

### 8.4 Spacing scale (4 px base)

`--space-1: 0.25rem` · `--space-2: 0.5rem` · `--space-3: 0.75rem` · `--space-4: 1rem` · `--space-5: 1.25rem` · `--space-6: 1.5rem` · `--space-8: 2rem` · `--space-10: 2.5rem` · `--space-12: 3rem` · `--space-16: 4rem` · `--space-24: 6rem`

Vertical rhythm: `main` gets `padding-block: var(--space-12) var(--space-24)`. Home sections are separated by `--space-16`. A page header gets `margin-block-end: var(--space-10)`.

### 8.5 Colour tokens

| Token | Light | Dark | Use / contrast target |
|---|---|---|---|
| `--bg` | `#ffffff` | `#0f1115` | Page background |
| `--surface` | `#f6f7f9` | `#171a21` | Cards, callouts, code |
| `--text` | `#1a1d23` | `#e6e8ec` | Body text (≥ 12:1) |
| `--text-muted` | `#5b6270` | `#a3a9b5` | Meta, captions (≥ 4.5:1 on `--bg` and `--surface`) |
| `--border` | `#e3e6eb` | `#2a2f3a` | Hairlines, card borders |
| `--border-strong` | `#c9ced6` | `#3b4250` | Ghost buttons, inputs |
| `--accent` | `#1f5fbf` | `#7fb0ff` | Links, primary actions (≥ 4.5:1 on `--bg`) |
| `--accent-strong` | `#174a96` | `#a9c9ff` | Hover/active |
| `--on-accent` | `#ffffff` | `#0f1115` | Text on accent |
| `--focus` | `#1f5fbf` | `#7fb0ff` | Focus ring |
| `--success` | `#1e7a46` | `#6fd39a` | Tip callout, active badge |
| `--warning` | `#a15c00` | `#f2b864` | Warning callout |
| `--code-bg` | `#f3f4f6` | `#161a22` | Code block background |
| `--selection` | `#cfe0fb` | `#27406b` | `::selection` |

The contrast targets above are requirements. Each pair must be measured and pass during the build (AC-20). If a pair fails, the value changes, not the target.

### 8.6 Borders, radii, shadows, motion

| Token | Value |
|---|---|
| `--radius-sm` / `--radius-md` / `--radius-lg` / `--radius-pill` | `4px` / `8px` / `12px` / `999px` |
| `--border-w` | `1px` |
| `--shadow-sm` | `0 1px 2px rgb(0 0 0 / 0.06)` (dark: `0 1px 2px rgb(0 0 0 / 0.5)`) |
| `--shadow-md` | `0 4px 16px rgb(0 0 0 / 0.08)` (dark: `0 4px 16px rgb(0 0 0 / 0.6)`) |
| `--ease` | `cubic-bezier(0.2, 0, 0, 1)` |
| `--dur-fast` / `--dur` | `120ms` / `200ms` |

Shadows are used only on raised interactive surfaces (skip link, mobile menu panel, card hover). Base cards are flat with a border.

### 8.7 Layout utilities

```css
.container        { margin-inline: auto; padding-inline: var(--gutter); }
.container--prose { max-width: calc(var(--w-prose) + 2 * var(--gutter)); }
.container--wide  { max-width: calc(var(--w-wide)  + 2 * var(--gutter)); }
.container--page  { max-width: calc(var(--w-page)  + 2 * var(--gutter)); }
.card-grid { display: grid; gap: var(--space-6);
             grid-template-columns: repeat(auto-fill, minmax(min(100%, 18rem), 1fr)); }
.bleed-wide { width: min(var(--w-wide), 100vw - 2 * var(--gutter));
              margin-inline: calc((min(var(--w-wide), 100vw - 2 * var(--gutter)) - 100%) / -2); }
.visually-hidden { position:absolute; width:1px; height:1px; overflow:hidden;
                   clip-path: inset(50%); white-space:nowrap; }
```

### 8.8 Link and interactive states

| State | Rule |
|---|---|
| Link default | `color: var(--accent)`, underlined in prose; nav and card links not underlined |
| Hover | `color: var(--accent-strong)`; underline thickness 2px |
| Focus-visible | `outline: 2px solid var(--focus); outline-offset: 2px; border-radius: var(--radius-sm)` on every focusable element; never `outline: none` without this replacement |
| Active nav | `aria-current="page"` → `color: var(--text)`, `font-weight: 600`, 2px underline in `--accent` offset 0.4em |
| Visited | Not styled differently |
| Disabled button | `opacity: 0.5; cursor: not-allowed` plus the `disabled` attribute |

### 8.9 Images and media

- Formats: AVIF with a WebP fallback through `<picture>`, generated at build time at widths 480 / 768 / 1200 / 1600, with `sizes` set to match the container.
- Fixed ratios: card media 16:9, article hero 2:1, portrait 1:1 (`--radius-pill` when circular), embeds 16:9.
- Inside prose, images get `max-width: 100%; height: auto; border-radius: var(--radius-md)`.
- Icons are inline SVG, `currentColor`, 1.25 rem, `aria-hidden="true"` with an accessible name on the parent control. Icon fonts are not used.

### 8.10 Themes

- Two themes, `light` and `dark`, set by `html[data-theme]`. The default follows `prefers-color-scheme`; the user's explicit choice is persisted (§10.3).
- Tokens are redefined under `:root[data-theme="dark"]`. Components contain no theme-specific rules.

---

## 9. Responsive layout requirements

### 9.1 Breakpoints [R]

| Name | Min width | Changes |
|---|---|---|
| base | 0 | Single column; nav collapsed behind toggle; TOC in `details`; card grid 1 column |
| `sm` | `40rem` (640 px) | Inline nav row; ProjectFacts two-column; card grid 2 columns where space allows |
| `md` | `60rem` (960 px) | PostListItem `--compact` date column; card grid up to 3 columns |
| `lg` | `75rem` (1200 px) | Article grid with sticky TOC rail: `grid-template-columns: var(--toc-w) minmax(0, var(--w-prose)) 1fr` |

Media queries use `em`/`rem` units (`@media (min-width: 40rem)`), not px. Component-internal layout may use container queries (`@container`), with the card grid as the container.

### 9.2 Rules [R]

- No horizontal page scroll at any width from 320 px to 2560 px. Wide content (tables, code, embeds) scrolls inside its own wrapper.
- Tap targets are ≥ 44 × 44 CSS px for nav, toggles, buttons and pagination.
- The mobile menu opens as a full-width panel under the header (`position:absolute; inset-inline:0; top:var(--header-h)`), not as an overlay drawer. The body does not scroll-lock.
- The article hero image is full container width on mobile and uses `.bleed-wide` at ≥ 60 rem.
- Type is fluid (§8.2), so no breakpoint changes font sizes directly.

---

## 10. Navigation and interactive-component requirements

### 10.1 Navigation structure [R]

- Primary nav, in order: **Writing · Projects · About · Contact**, plus the Search icon and ThemeToggle. The final labels are the principal's choice (§15.3).
- Footer nav: Writing · Projects · Topics · About · Contact · RSS · Colophon.
- The brand wordmark always links to `/`.

### 10.2 JavaScript budget [R]

- Total JS sent on any non-search page: **≤ 10 KB gzipped**, all progressive enhancement. Every page is fully readable and navigable with JavaScript disabled.
- Islands: `nav-toggle`, `theme-toggle`, `toc-spy`, `code-copy`, plus `search` on T8 only (the Pagefind bundle is loaded only there).

### 10.3 Behaviour contracts [R]

| Component | Contract |
|---|---|
| NavToggle | Click toggles `aria-expanded` and the list's visibility. `Escape` closes it and returns focus to the toggle. Resizing to ≥ 40 rem resets it to closed. Without JS, the list renders expanded (the toggle is hidden by a `no-js` class removed on boot). |
| ThemeToggle | Cycles light ↔ dark. Stores `localStorage["theme"]` inside try/catch. An inline head script applies the stored theme or the OS preference **before first paint** (no flash). `aria-pressed="true"` means dark. A change in OS preference is followed only while no explicit choice is stored. |
| TOC spy | `IntersectionObserver` with `rootMargin: "0px 0px -70% 0px"`. Exactly one link has `aria-current="true"`. It does not change the URL hash while scrolling. |
| Heading anchors | Every `h2`/`h3` in prose gets a stable `id` (slugified, deduplicated). Anchors scroll with `scroll-margin-top: calc(var(--header-h) + var(--space-4))`. |
| Code copy | Copies the `code` text content, announces "Copied", and resets after 2 s. |
| Search | Debounced 150 ms. Shows up to 10 results with title, excerpt and highlighted terms. Results are keyboard reachable. The query syncs to `?q=`. |
| Smooth scroll | `scroll-behavior: smooth` only inside `@media (prefers-reduced-motion: no-preference)`. |

---

## 11. Accessibility requirements

The target is **WCAG 2.2 Level AA** [R].

1. Landmarks and headings follow §5.2. The skip link is the first focusable element and moves focus to `main#main`.
2. Contrast: text ≥ 4.5:1, large text and UI components and focus indicators ≥ 3:1, in **both** themes.
3. Focus is always visible (§8.8). Focus order follows DOM order. There are no keyboard traps, including in the mobile menu.
4. Every interactive control has an accessible name. Icon-only controls use `aria-label`. State is exposed with `aria-expanded`, `aria-pressed` and `aria-current`.
5. Motion: every transition and transform is disabled under `prefers-reduced-motion: reduce`.
6. Images: meaningful images have descriptive `alt`; decorative images have `alt=""`. Charts and diagrams also have a text equivalent in a caption or the surrounding prose.
7. Text resizes to 200% without loss of content and reflows at 320 CSS px (WCAG 1.4.10).
8. Target size is ≥ 24 × 24 CSS px everywhere (WCAG 2.5.8), and ≥ 44 × 44 for primary controls (§9.2).
9. Language is declared with `html[lang]`. A passage in another language uses `lang` on its element.
10. Embedded media: video has captions; iframes have a `title`.

---

## 12. Proposed component hierarchy for kingsleyobi.com

```text
BaseLayout (html/head/body, SEO, theme bootstrap)
├── SkipLink
├── SiteHeader
│   ├── SiteBrand
│   ├── PrimaryNav ── NavToggle
│   └── HeaderActions ── IconButton(Search) · ThemeToggle
├── <slot: main>
│   ├── HomeLayout ─ Hero · SectionHeader · PostList(PostListItem) · CardGrid(ProjectCard) · CTABlock
│   ├── PageLayout ─ PageHeader · Prose
│   ├── ArchiveLayout ─ PageHeader · TopicFilter(TagList) · PostList(PostListItem) · Pagination
│   ├── ArticleLayout ─ ArticleHeader(ArticleMeta, TagList) · Figure? · TOC? · Prose
│   │                   (CodeBlock · Callout · Figure · Embed · TableWrap) · ArticleFooter
│   │                   (TagList · RelatedPosts(PostCard) · PrevNext)
│   ├── ProjectsLayout ─ PageHeader · CardGrid(ProjectCard(Badge))
│   ├── ProjectLayout ─ Breadcrumb · ProjectHeader(Badge, Button) · ProjectFacts · Prose · RelatedPosts
│   ├── TopicLayout ─ (ArchiveLayout | TopicIndex)
│   └── SearchLayout ─ PageHeader · SearchBox · SearchResults
└── SiteFooter ─ FooterNav · SocialLinks · Legal
```

Primitives used by everything: `Container`, `Button`, `Icon`, `Tag`, `Badge`, `Time`.

---

## 13. Recommended project and source-file structure

**Recommendation [R]: Astro (static output) + plain CSS with custom properties + Markdown/MDX content collections + Pagefind search.** Why: it outputs static HTML with zero JavaScript by default (fits §10.2); its typed content collections enforce the frontmatter in §13.2; its built-in image pipeline covers §8.9; and it deploys to any static host. Any static-site generator that meets §14 is acceptable. The stack is not dictated by the reference site, whose technology was not observed (§15).

### 13.1 File tree

```text
~/Projects/Website/
├── ISA.md                      ← this specification (canonical)
├── ISA.html                    ← HTML rendering of this specification
├── RESEARCH.md                 ← deferred until the reference inspection can run (§15.4)
├── package.json  bun.lock  astro.config.mjs  tsconfig.json
├── public/
│   ├── favicon.svg  robots.txt  _redirects
│   └── fonts/  inter-var.woff2  source-serif-4-var.woff2  jetbrains-mono-var.woff2
├── src/
│   ├── content/
│   │   ├── config.ts           ← collection schemas (zod)
│   │   ├── writing/*.md(x)
│   │   ├── projects/*.md(x)
│   │   └── pages/*.md          ← about, now, contact, colophon
│   ├── layouts/   BaseLayout.astro  PageLayout.astro  ArticleLayout.astro  ArchiveLayout.astro
│   │              ProjectLayout.astro  ProjectsLayout.astro  SearchLayout.astro
│   ├── components/
│   │   ├── site/      SkipLink  SiteHeader  PrimaryNav  NavToggle  ThemeToggle  SiteFooter
│   │   ├── content/   Prose  ArticleHeader  ArticleMeta  TOC  CodeBlock  Callout  Figure  Embed  TableWrap
│   │   ├── listing/   PostList  PostListItem  PostCard  ProjectCard  CardGrid  Pagination  PrevNext
│   │   │              RelatedPosts  TopicFilter  TopicIndex
│   │   └── ui/        Button  IconButton  Icon  Tag  TagList  Badge  Breadcrumb  Time  SearchBox  CTABlock
│   ├── pages/
│   │   ├── index.astro  404.astro  search.astro  rss.xml.ts
│   │   ├── [page].astro                     ← standard pages from content/pages
│   │   ├── writing/index.astro  writing/page/[n].astro  writing/[slug].astro
│   │   ├── projects/index.astro  projects/[slug].astro
│   │   └── topics/index.astro  topics/[topic]/[...page].astro
│   ├── scripts/   theme-boot.ts (inlined)  nav-toggle.ts  toc-spy.ts  code-copy.ts
│   ├── styles/    tokens.css  reset.css  base.css  layout.css  prose.css  components/*.css  print.css
│   └── lib/       reading-time.ts  slugify.ts  toc.ts  remark-callouts.ts  seo.ts
└── tests/
    ├── e2e/       templates.spec.ts  nav.spec.ts  theme.spec.ts  responsive.spec.ts
    ├── a11y/      axe.spec.ts
    └── lint/      tokens-only.test.ts  html-validate.config.json
```

### 13.2 Content frontmatter contracts [R]

| Collection | Required | Optional |
|---|---|---|
| `writing` | `title`, `description` (≤ 160), `pubDate`, `topics[]` (≥ 1) | `updatedDate`, `dek`, `hero{src,alt}`, `draft`, `form: "article" \| "note"` |
| `projects` | `title`, `summary`, `status: "active" \| "archived"`, `period{start,end?}`, `role` | `cover{src,alt}`, `links[]`, `featured`, `stack[]` |
| `pages` | `title`, `description` | `lede` |

A build fails on a schema violation (AC-30).

---

## 14. Testable frontend acceptance criteria

Each criterion names the probe that would prove it false. "All templates" means one representative URL per T1–T9, listed in `tests/e2e/fixtures.ts`.

| ID | Criterion | Probe (falsifier) |
|---|---|---|
| AC-01 | Every template T1–T9 builds and serves HTTP 200 (404 page serves 404) | Playwright: request each fixture URL; assert status |
| AC-02 | Every page has exactly one `header.site-header`, `main#main`, `footer.site-footer` and one `h1` | Playwright DOM count assertions on all templates |
| AC-03 | No heading level is skipped on any page | Script walks `h1–h6` in order; fails if a level jumps by more than 1 |
| AC-04 | Every `nav` has a unique accessible name | Playwright `getByRole('navigation')` names are unique per page |
| AC-05 | Skip link is the first Tab stop and moves focus into `main` | Playwright: press Tab, Enter; assert `document.activeElement` is within `#main` |
| AC-06 | The current section's nav link carries `aria-current="page"` on its section and descendants | Visit `/writing/` and one article; assert the attribute on the Writing link only |
| AC-07 | Generated HTML is valid | `html-validate` over `dist/**/*.html`: 0 errors |
| AC-08 | Article pages have a `time[datetime]` publish date, reading time and ≥ 1 `a.tag[rel=tag]` | DOM assertions on every `writing/*` page |
| AC-09 | TOC renders iff the article has ≥ 3 `h2`, and every TOC link resolves to an existing `id` | Build-time test over all articles |
| AC-10 | All in-page and internal links resolve (no 404s) | Link checker (e.g. `lychee --offline dist`): 0 broken |
| AC-11 | Archive paginates at 20 items; no pagination when ≤ 20; `rel=prev/next` correct | Fixture with 45 posts → 3 pages; assert counts and rels |
| AC-12 | Topic pages list exactly the posts tagged with that topic | Build-time test comparing collection data to rendered lists |
| AC-13 | `rss.xml` is valid RSS 2.0 and lists the latest 20 non-draft posts | Feed validator + count assertion |
| AC-14 | Drafts never appear in any output | Fixture draft; grep `dist/` for its slug: 0 matches |
| AC-15 | Every page has a title, a meta description ≤ 160 chars, an absolute canonical URL and Open Graph title/description/image | DOM assertions on all templates |
| AC-16 | Articles include valid `BlogPosting` JSON-LD; home includes `Person`; project detail includes `BreadcrumbList` | Parse JSON-LD; schema validation |
| AC-17 | No horizontal page scroll at 320, 390, 768, 1024, 1440 and 2560 px | Playwright: `scrollWidth <= clientWidth` at each width on all templates |
| AC-18 | Nav is collapsed behind the toggle below 40 rem and inline at ≥ 40 rem | Playwright at 390 and 1024 px: toggle visibility and list visibility |
| AC-19 | Sticky TOC rail appears only at ≥ 75 rem; below that the TOC is a closed `details` | Playwright at 1024 and 1440 px on a long article |
| AC-20 | Every token colour pair in §8.5 meets its contrast target in both themes | Contrast script over the token pairs; plus axe `color-contrast` |
| AC-21 | 0 axe-core violations (WCAG 2.0/2.1/2.2 A + AA tags) on all templates in both themes | `@axe-core/playwright` run on every fixture × theme |
| AC-22 | Every focusable element shows a visible focus indicator | Playwright: Tab through each template; assert computed `outline-style != none` for each focused element |
| AC-23 | Primary controls are ≥ 44 × 44 px; all targets ≥ 24 × 24 px | Playwright bounding-box check on `a, button, input` |
| AC-24 | With `prefers-reduced-motion: reduce`, no element has a non-zero transition/animation duration | Playwright `emulateMedia({ reducedMotion: 'reduce' })` + computed-style scan |
| AC-25 | No raw colour or px spacing values outside `tokens.css` (except `1px` borders and `0`) | Stylelint rule (`color-no-hex`, `declaration-property-unit-allowed-list`) on `src/styles/**` minus tokens |
| AC-26 | Theme follows the OS preference by default; an explicit choice persists across reloads; no flash of the wrong theme | Playwright with `colorScheme: 'dark'`; toggle; reload; assert `data-theme` before `DOMContentLoaded` |
| AC-27 | Mobile menu: `aria-expanded` toggles, `Escape` closes it and returns focus, no focus trap | Playwright keyboard test at 390 px |
| AC-28 | Site is fully navigable with JavaScript disabled (menu expanded, TOC present, all links work) | Playwright `javaScriptEnabled: false` on all templates |
| AC-29 | JS shipped on non-search pages ≤ 10 KB gzipped; search loads its index only on `/search/` | Build-output size check; network log per template |
| AC-30 | Content schema violations fail the build | Fixture with a missing `pubDate` → `astro build` exits non-zero |
| AC-31 | Every content `img` has `alt`, `width`, `height`; only the LCP image is not lazy | DOM assertions on all templates |
| AC-32 | Images are served as AVIF/WebP with `srcset` at ≥ 3 widths | DOM assertion on `picture > source[type]` |
| AC-33 | Lighthouse (mobile) on all templates: Performance ≥ 95, Accessibility 100, Best Practices ≥ 95, SEO 100 | `lhci autorun` against the preview build |
| AC-34 | Core Web Vitals in lab: LCP < 2.0 s, CLS < 0.05, TBT < 100 ms (mobile, simulated 4G) | Lighthouse CI assertions |
| AC-35 | Code blocks scroll horizontally inside their wrapper, are keyboard-focusable and the copy button copies the exact code | Playwright: overflow check, Tab focus, clipboard read |
| AC-36 | Callout Markdown syntax renders `aside.callout--{note,tip,warning}` with an accessible name | Build fixture with all three; DOM assertions |
| AC-37 | Search returns the fixture post for its unique title word and syncs `?q=` | Playwright on `/search/?q=<word>` |
| AC-38 | Heading anchors exist for every prose `h2/h3`, ids are unique, and jump targets are not hidden under the header | DOM check + scroll position assertion |
| AC-39 | Print stylesheet hides header nav, footer nav and interactive controls, and prints link URLs in prose | Playwright `emulateMedia({ media: 'print' })` snapshot assertions |
| AC-40 | No reference-site text, images, logos, fonts or code are present in the repository | Manual review checklist at first release + font licence check (only OFL fonts in `public/fonts`) |

---

## 15. Evidence references, assumptions, and unresolved technical questions

### 15.1 Evidence references

| ID | Source | What it supports | Type |
|---|---|---|---|
| E1 | Search index result for [https://danielmiessler.com/p/considering-using-danielmiessler-com-instead-of-dmiessler-com](https://danielmiessler.com/p/considering-using-danielmiessler-com-instead-of-dmiessler-com) | Articles on the reference site are served under `/p/<slug>` | **[O]** secondary (search index), not a browser inspection |
| E2 | Connection attempts to `https://danielmiessler.com/`, `/robots.txt`, `/sitemap.xml` (2026-10-29) | The inspection was blocked by the session's network policy | Session log |
| E3 | WCAG 2.2 — https://www.w3.org/TR/WCAG22/ | §11 targets, AC-20–24 | Standard |
| E4 | WAI-ARIA Authoring Practices: Disclosure (menu button), Breadcrumb patterns — https://www.w3.org/WAI/ARIA/apg/patterns/ | C3, C23 behaviour | Standard |
| E5 | HTML Living Standard — https://html.spec.whatwg.org/ | §5 semantics | Standard |

No component, layout value, token or technology claim in this document comes from the reference site.

### 15.2 Assumptions

1. The site is primarily long-form writing plus a projects portfolio. If it is mainly a portfolio or a service site, T1 and T5 change.
2. The site is English only (`lang="en"`). Translation requires a locale routing layer that is not specified here.
3. It is hosted as static files (Cloudflare Pages, Netlify or similar), with no server-side rendering or user accounts.
4. There is no comment system, newsletter backend or analytics. The CTABlock links to a contact page or `mailto:`. A newsletter integration needs a provider decision.
5. Content is authored in Markdown in the repository.

### 15.3 Unresolved questions

| # | Question | Owner | Default if unanswered |
|---|---|---|---|
| Q1 | What are the final nav labels and sections (e.g. Writing vs Blog, Work vs Projects, adding Speaking or Publications)? | Principal | Writing · Projects · About · Contact |
| Q2 | Is there a newsletter or subscription? Which provider? | Principal | None; CTABlock → `/contact/` |
| Q3 | What brand: a wordmark only or a logo mark; and the accent colour? | Principal | Text wordmark; accent `#1f5fbf` |
| Q4 | Hosting provider and domain DNS setup? | Principal | Cloudflare Pages |
| Q5 | Analytics (privacy-preserving or none)? | Principal | None |
| Q6 | Is existing content being migrated from somewhere (URLs to redirect)? | Principal | No migration |
| Q7 | Reference-site structure: its templates, nav pattern, TOC presence, dark mode, breakpoints and stack | Research | Unverified; see §15.4 |

### 15.4 Reference verification protocol (to produce `RESEARCH.md`)

Run once `danielmiessler.com` is allowed in the session's network settings (or against dated `web.archive.org` snapshots, labelled as such):

1. Fetch `robots.txt` and `sitemap.xml`; choose one URL per page type in §2.
2. For each URL, save the **page source** (raw response plus headers) and the **rendered DOM** (headless Chromium after network idle) as separate files.
3. At 1440 px and 390 px, record a screenshot and `getComputedStyle` for `body`, `h1–h3`, `p`, `a`, `header`, `nav`, `main`, `footer`, cards, `pre` and buttons: font family, size, weight, line height, colours, max-width, margins, padding, borders, radii, shadows.
4. Extract all `@media` queries from the loaded stylesheets to get exact breakpoints. Check `prefers-color-scheme` and theme toggles.
5. Record technology evidence only from observable artefacts (`<meta name="generator">`, asset paths, response headers, script globals).
6. Compare the findings against every **[V]** item in §6, then revise this ISA with a version bump and a change log. Anything adopted from the reference site must be re-implemented originally (AC-40).

---

## Change log

| Version | Date | Change |
|---|---|---|
| 0.1.0 | 2026-10-29 | First ready-to-build specification. Reference inspection blocked; all design values original [R]; verification items marked [V]. |
