---
name: resume-data
description: Update résumé content in strzelcu/resume. Use whenever changing experience, job technologies, skills, contact details, education, languages, preferences, or other CV data.
---

# Edit résumé data

1. Read `_data/data.yml` first. It is the source of truth for shared résumé content across themes. Identify the relevant entry by company, role and dates, or by the section and existing values.
2. Make the content change in `_data/data.yml` and follow the existing YAML structure. For technologies used in a job, edit that experience entry's `technologies` list with one item per line. Edit the top-level `skills` section only when the request concerns overall skills.
3. Keep content in the existing data fields. Use the existing `details` field for prose that needs Markdown formatting. Keep templates, theme styles and separate content files out of data-only changes unless the user also requests a layout or presentation change.
4. Review the diff for the intended entry, valid YAML and preserved surrounding content. Run the Jekyll build when available. When publishing is authorized, verify the GitHub Pages workflow for the exact commit and check the updated section on the published CV.
