---
name: resume-theme
description: Add, reorder, or update a selectable visual theme or theme-specific portrait in the strzelcu/resume Jekyll résumé. Use for requests involving the emoji style picker, theme colors and typography, or themed photos.
---

# Add or update a résumé theme

## Locate the existing implementation

Read the current versions of these files before editing:

- `_layouts/home.html` contains the emoji picker.
- `assets/js/resume-style.js` sets the root `data-resume-style` attribute and remembers the visitor's choice.
- `assets/css/resume-style.css` contains the theme rules.
- `_includes/head.html` loads the picker assets using Jekyll's `relative_url` filter and version queries.
- `assets/images/` contains the portraits. Use the current portrait selected by the relevant theme's CSS as a reference when appropriate.

The current picker order is 🪩 ’70s Retro, 🎸 Rock, 🔊 Drum & Bass, 🧢 Hip-Hop ’99, 💼 Business. Follow the position requested by the user and preserve the relative order of the other themes. Keep Retro as the default and fallback unless asked to change it.

## Implement the theme

1. Choose a short, unique lowercase identifier, a descriptive English label, and a recognizable emoji. Use the existing native radio and label pattern with a unique ID, matching `for`, the shared `name="resume-style"`, an accessible name, and a title. Show the emoji in a span with `aria-hidden="true"`. Insert the pair at the requested position and register the same identifier in the JavaScript list, in picker order. Keep the `resume-style` storage key and the fallback for invalid or unavailable storage.
2. Add screen styles scoped to `[data-resume-style="<id>"]`. Reuse the existing `--retro-*` custom properties as the shared color hooks and override only the theme's presentation. Choose a distinct, legible palette, typography, and header treatment. Preserve the shared résumé data, section order, print layout, and 1000 px desktop card. Scope any small-screen overrides to the new theme.
3. If the theme calls for a distinct portrait, edit an approved reference with ImageGen when available. Prefer a newly supplied reference and follow the latest instructions about glasses, hair, framing, and likeness. Use a square head-and-shoulders crop that stays readable at 120 px. Export an optimized 460 × 460 JPEG under `assets/images/`, and set the theme's screen-only `.resume-header .picture` to use it through a CSS-relative URL, following existing themes. Adjust the theme's filters so they preserve the intended lighting and colors. Keep other themes' photo references intact.
4. Change the relevant CSS or JS version queries in `_includes/head.html` when their contents change. If replacing a portrait, give the updated image a fresh URL and update the theme rule so returning visitors receive the new file. Include edits and required assets together in the same commit.

## Verify and publish

- Check JavaScript syntax with `node --check assets/js/resume-style.js`. Build with `bundle exec jekyll build --baseurl /resume` when dependencies are available.
- In a browser, verify the picker order, accessible labels, arrow-key navigation, loaded portrait, theme switching, and selection after refresh. Check a phone near 390 px, a tablet near 780 px, and a desktop wider than 1020 px. Check on both sides of the 768 px and 992 px breakpoints for clipping and horizontal scrolling. Confirm the desktop card remains 1000 px wide and the existing themes still switch correctly.
- Follow the user's publication instructions. When production changes are authorized, a push to `master` triggers `.github/workflows/jekyll.yml`. Wait for the run for the exact commit to succeed, then check the public page at `https://strzelcu.github.io/resume/`. If publication is outside the request, leave the change available for review. Report which checks ran and any verification that was blocked.
- When screenshots are requested, capture the visible page at the measured widths, inspect the saved images for cropping, and provide accessible file links.
