# Resume

Personal CV of Tomasz Strzelecki, published at [strzelcu.github.io/resume](https://strzelcu.github.io/resume/). The page includes contact details, professional experience, education, skills, languages, work preferences, and free-time interests.

Content is maintained in `_data/data.yml`, section headings in `_data/labels.yaml`, and site settings in `_config.yml`. GitHub Actions builds the Jekyll site and publishes it to GitHub Pages on pushes to `master`.

## Tools and authors

This list covers the site's direct dependencies, bundled components, external resources, and deployment tools. Transitive dependencies retain their own authorship and licenses.

| Tool or resource | Author / maintainers | Role |
| --- | --- | --- |
| [Pillar 1.0.1](https://themes.3rdwavemedia.com/) | Xiaoying Riley / 3rd Wave Media | Original CV template; adapted for this site |
| [Bootstrap 4.1.2](https://getbootstrap.com/) | The Bootstrap Authors; originally Mark Otto and Jacob Thornton at Twitter | Layout and SCSS styles |
| [Sass](https://sass-lang.com/) | Hampton Catlin, Natalie Weizenbaum, Chris Eppstein, and contributors | Stylesheet preprocessing |
| [Font Awesome 5.1.1](https://fontawesome.com/) | Dave Gandy and the Font Awesome team | Icons |
| [Roboto / Google Fonts](https://fonts.google.com/specimen/Roboto) | Christian Robertson; Google Fonts contributors | Typeface and font hosting |
| [Jekyll](https://jekyllrb.com/) | Tom Preston-Werner and contributors | Static site generator |
| [jekyll-seo-tag](https://github.com/jekyll/jekyll-seo-tag) | Ben Balter and contributors | SEO metadata |
| [jekyll-sitemap](https://github.com/jekyll/jekyll-sitemap) | Michael D'Angelo and contributors | Sitemap generation |
| [github-pages gem](https://github.com/github/pages-gem) | GitHub and contributors | Compatible Jekyll dependency set |
| [Ruby](https://www.ruby-lang.org/) | Yukihiro Matsumoto and Ruby contributors | Build runtime |
| [Bundler](https://bundler.io/) | André Arko, Carl Lerche, Yehuda Katz, and contributors | Ruby dependency management |
| [BigDecimal](https://github.com/ruby/bigdecimal) | Shigeo Kobayashi, Kenta Murata, and contributors | Ruby numeric dependency |
| [Rake](https://github.com/ruby/rake) | Jim Weirich and contributors | Declared development dependency |
| [Git](https://git-scm.com/) | Linus Torvalds, Junio C Hamano, and contributors | Version control |
| [GitHub Pages and GitHub Actions](https://github.com/) | GitHub | Hosting and deployment |
| [checkout](https://github.com/actions/checkout), [configure-pages](https://github.com/actions/configure-pages), [upload-pages-artifact](https://github.com/actions/upload-pages-artifact), [deploy-pages](https://github.com/actions/deploy-pages) | GitHub Actions contributors | Deployment workflow actions |
| [ruby/setup-ruby](https://github.com/ruby/setup-ruby) | Benoit Daloze and contributors | Ruby and Bundler setup in CI |
| [HTML5 Shiv 3.7.2](https://github.com/aFarkas/html5shiv) | Alexander Farkas, Jonathan Neal, and contributors | Legacy Internet Explorer compatibility |
| [Respond.js 1.4.2](https://github.com/scottjehl/Respond) | Scott Jehl and contributors | Legacy media-query support |
| [Jekyll Compress HTML 3.1.0](https://jch.penibelst.de/) | Anatol Broder | Bundled optional HTML compression layout; currently not enabled |
| [Retina.js](https://github.com/strues/retinajs) | Imulus and contributors | Source referenced by the bundled high-resolution image mixin |

The bundled Bootstrap JavaScript and test sources also reference [jQuery](https://jquery.com/) (John Resig and contributors), [Popper.js](https://popper.js.org/) (Federico Zivolo and contributors), [QUnit](https://qunitjs.com/) (John Resig, Jörn Zaefferer, and contributors), [Sinon](https://sinonjs.org/) (Christian Johansen and contributors), and [Karma](https://karma-runner.github.io/) (Vojta Jína and contributors). These are not loaded by the CV page or run by its deployment workflow.

## Attribution and licenses

Attribution notices formerly repeated in source comments are collected here. The original template author's credit remains in the page footer.

- **Pillar 1.0.1:** Author: Xiaoying Riley. Copyright: 3rd Wave Media. License: [Creative Commons Attribution 3.0](https://creativecommons.org/licenses/by/3.0/). Original website: https://themes.3rdwavemedia.com/. This repository adapts the template's content, styling, configuration, and deployment.
- **Bootstrap 4.1.2:** Copyright 2011–2018 The Bootstrap Authors. Copyright 2011–2018 Twitter, Inc. MIT License.
- **Bootstrap custom forms:** Released under MIT; copyright 2014 Waybury.
- **Jekyll Compress HTML 3.1.0:** Copyright © 2014–2015 Anatol Broder. MIT License.
- **Additional bundled source credits:** Hugo Giraudel (Sass functions), Angus Croll (JavaScript utility), and the Retina.js contributors (high-resolution image mixin).
- **Font Awesome Free:** Icons: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/); fonts: SIL OFL 1.1; code: MIT. See the [upstream license](https://github.com/FortAwesome/Font-Awesome/blob/5.1.1/LICENSE.txt).
- **Roboto:** Apache License 2.0 for the original Roboto release used through the Google Fonts stylesheet. See [upstream](https://github.com/googlefonts/roboto).

### MIT License

The following terms apply to the MIT-licensed components credited above, with their respective copyright notices:

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
