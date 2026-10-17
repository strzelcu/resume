# Resume

Personal CV of Tomasz Strzelecki, published at [strzelcu.github.io/resume](https://strzelcu.github.io/resume/). It includes contact details, professional experience, education, skills, languages, work preferences, and free-time interests.

## Editing and building

- `_data/data.yml`: CV content and contact details.
- `_data/labels.yaml`: section headings.
- `_config.yml`: site URL, metadata, and colour scheme.
- `_includes/` and `_layouts/`: page templates.
- `_sass/`: custom styles and six colour palettes, using the current Sass module API.
- `assets/vendor/bootstrap/`: Bootstrap CSS and its original MIT license.

Install Ruby **4.0.7** from `.ruby-version`, then run:

```sh
gem install bundler -v 4.0.23
bundle install
bundle exec jekyll serve --baseurl /resume
```

Open `http://127.0.0.1:4000/resume/`. To reproduce the production build:

```sh
JEKYLL_ENV=production bundle exec jekyll build --baseurl /resume
```

GitHub Actions builds and publishes the site on pushes to `master` or a manual workflow run. The site is built with Jekyll directly: the `github-pages` gem was removed because its older dependency set prevented upgrading the build tools. GitHub Pages still hosts the resulting static site.

`Gemfile.lock` records the compatible Ruby dependencies for the Linux CI runner. Other platforms can be added with `bundle lock --add-platform arm64-darwin` (for example, Apple Silicon). To update Ruby dependencies, run `bundle update`, rebuild, and commit the lockfile. Jekyll's compatibility requirements still apply to transitive packages; for example, Jekyll 4.4.1 requires Liquid 4.x.

## Tools, versions, and authors

Versions below were verified against the official RubyGems and npm registries and GitHub releases on **2026-10-17**. Prereleases are excluded. This table covers direct dependencies, external resources, and deployment tools; the complete Ruby dependency graph is recorded in `Gemfile.lock`.

| Tool or resource | Version / source | Author / maintainers | Purpose |
| --- | --- | --- | --- |
| [Pillar](https://github.com/xriley/pillar-theme) | Custom adaptation migrated to Bootstrap 5; [current upstream reference](https://github.com/xriley/pillar-theme/blob/dbe51083f1566b748c7b3cf81f3d1069b634608e/assets/scss/pillar-1.scss) identifies itself as Bootstrap 5 v3.0 | Xiaoying Riley / 3rd Wave Media | Original CV design; personal content and Jekyll templates are maintained here |
| [Bootstrap](https://github.com/twbs/bootstrap/releases/tag/v5.3.8) | **5.3.8** | The Bootstrap Authors; originally Mark Otto and Jacob Thornton | Responsive layout and utilities; local CSS, no Bootstrap JavaScript |
| [Font Awesome Free](https://github.com/FortAwesome/Font-Awesome/releases/tag/7.3.1) | **7.3.1** | Dave Gandy and the Font Awesome team | SVG icons, loaded from a versioned jsDelivr URL with SHA-384 integrity verification |
| [Roboto / Google Fonts](https://fonts.google.com/specimen/Roboto) | Current Google Fonts CSS2 API; `display=swap` | Christian Robertson and the Roboto Project Authors; Google Fonts contributors | Font served dynamically by Google without a fixed package version |
| [Ruby](https://github.com/ruby/ruby/releases/tag/v4.0.7) | **4.0.7** | Yukihiro Matsumoto and Ruby contributors | Build runtime |
| [Bundler](https://rubygems.org/gems/bundler/versions/4.0.23) | **4.0.23** | André Arko, Carl Lerche, Yehuda Katz, and contributors | Dependency management |
| [Jekyll](https://rubygems.org/gems/jekyll/versions/4.4.1) | **4.4.1** | Tom Preston-Werner and contributors | Static site generator |
| [jekyll-seo-tag](https://rubygems.org/gems/jekyll-seo-tag/versions/2.9.1) | **2.9.1** | Ben Balter and contributors | SEO metadata |
| [jekyll-sitemap](https://rubygems.org/gems/jekyll-sitemap/versions/1.4.0) | **1.4.0** | GitHub, Inc. and contributors | Sitemap generation |
| [jekyll-sass-converter](https://rubygems.org/gems/jekyll-sass-converter/versions/3.1.0) | **3.1.0** | Parker Moore and Jekyll contributors | Sass integration |
| [Dart Sass / sass-embedded](https://github.com/sass/dart-sass/releases/tag/1.105.2) | **1.105.2** | Natalie Weizenbaum and Sass contributors; Ruby wrapper by なつき (ntkme) and contributors | Stylesheet compiler; Sass was originally created by Hampton Catlin and Natalie Weizenbaum |
| [BigDecimal](https://rubygems.org/gems/bigdecimal/versions/4.1.3) | **4.1.3** | Shigeo Kobayashi, Kenta Murata, and contributors | Ruby numeric dependency |
| [Rake](https://rubygems.org/gems/rake/versions/13.4.2) | **13.4.2** | Jim Weirich and contributors | Ruby development/build dependency |
| [Git](https://git-scm.com/) | Managed by the environment and hosted runner | Linus Torvalds, Junio C Hamano, and contributors | Version control |
| [GitHub Pages / GitHub Actions](https://github.com/) | Hosted services updated by GitHub | GitHub | Hosting and CI/CD |
| [jsDelivr](https://www.jsdelivr.com/) | Hosted service; icon URL pins the package version | Dmitriy Akulov and jsDelivr contributors | Icon script delivery |

### Deployment actions

Actions are pinned to the immutable commit associated with each release. Their version information is documented here rather than in code comments.

| Action | Release | Pinned commit | Authors / maintainers |
| --- | --- | --- | --- |
| [actions/checkout](https://github.com/actions/checkout) | **v7.0.1** | `3d3c42e5aac5ba805825da76410c181273ba90b1` | GitHub Actions contributors |
| [ruby/setup-ruby](https://github.com/ruby/setup-ruby) | **v1.329.0** | `651ff0d62c5c79bed6d53ec518387aae20e72c1a` | Benoit Daloze and contributors |
| [actions/configure-pages](https://github.com/actions/configure-pages) | **v6.0.0** | `45bfe0192ca1faeb007ade9deae92b16b8254a0d` | GitHub Actions contributors |
| [actions/upload-pages-artifact](https://github.com/actions/upload-pages-artifact) | **v5.0.0** | `fc324d3547104276b827a68afc52ff2a11cc49c9` | GitHub Actions contributors |
| [actions/deploy-pages](https://github.com/actions/deploy-pages) | **v5.0.1** | `368f82528645a54fb793d4d04e342629a3f51346` | GitHub Actions contributors |

## Migration notes

- Bootstrap 4.1.2 was replaced by 5.3.8. Templates use Bootstrap 5 spacing, alignment, badge, and font-weight utilities; flex utilities replace the media-object layout.
- Font Awesome 5.1.1 was replaced by 7.3.1, including current icon names and style prefixes.
- Sass uses `@use`, `sass:color`, and CSS border radii instead of legacy imports, global colour functions, and Bootstrap mixins.
- Unused Bootstrap JavaScript and test fixtures were removed, including references to jQuery, Popper.js, QUnit, Sinon, and Karma.
- HTML5 Shiv and Respond.js were removed with the obsolete Internet Explorer conditional markup.
- The unused HTML compression layout and legacy Retina.js-related mixins were removed.
- CV content, the profile photo, the template author's footer credit, and the `/resume/` URL are preserved.

When updating Bootstrap CSS, obtain it from the official npm package, retain `assets/vendor/bootstrap/LICENSE`, and update this inventory. For Font Awesome, update both the versioned script URL and its SHA-384 integrity value in `_includes/head.html`.

## Attribution and licenses

- **Pillar:** Original author: Xiaoying Riley. Copyright: 3rd Wave Media. The inherited template identifies its license as [Creative Commons Attribution 3.0](https://creativecommons.org/licenses/by/3.0/). The [upstream author and license terms](https://github.com/xriley/pillar-theme#author--license) require the footer attribution for free use. This site adapts its content, templates, styles, and deployment; the footer link is retained.
- **Bootstrap 5.3.8:** Copyright (c) 2011–2025 The Bootstrap Authors. MIT License; the complete notice is included in [`assets/vendor/bootstrap/LICENSE`](assets/vendor/bootstrap/LICENSE).
- **Font Awesome Free 7.3.1:** Icons: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/); fonts: SIL OFL 1.1; code: MIT. See the [upstream license](https://github.com/FortAwesome/Font-Awesome/blob/7.3.1/LICENSE.txt).
- **Roboto:** Copyright 2011 The Roboto Project Authors. [SIL Open Font License 1.1](https://github.com/google/fonts/blob/main/ofl/roboto/OFL.txt) for the current Google Fonts family.

Other components retain the authorship and license terms in their upstream packages. Tool attributions are documented here rather than repeated in code comments.
