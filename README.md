# more-uav.github.io

Project page for the MoRe-UAV paper.

## Folder contents

- `index.html`: homepage
- `assets/site.css`: styling
- `assets/site.js`: reveal animation and lazy video loading
- `static/images/`: current overview, annotation, and method figures used on the page
- `static/videos/*.mp4`: featured demos
- `static/videos/gallery/*.mp4`: extended gallery demos currently shown on the page
- `static/posters/*.jpg`: poster frames for the featured demos
- `static/pdfs/more-uav-paper.pdf`: downloadable main paper PDF
- `static/downloads/`: supplementary PDF and verification-tool zip for download
- `static/images/fig1try2.pdf`: source PDF kept alongside the rendered homepage overview image

## Recommended GitHub setup

Because your new GitHub account is `more-uav`, the cleanest deployment is:

1. Create a repository named `more-uav.github.io`
2. Copy the **contents** of this folder into the repository root
3. Commit and push to the `main` branch
4. In GitHub, open `Settings -> Pages`
5. Set `Source` to `Deploy from a branch`
6. Select branch `main` and folder `/ (root)`
7. Wait a minute or two for GitHub Pages to publish

Your site URL will then be:

`https://more-uav.github.io/`

## Current release status

- `Paper` now points to `static/pdfs/more-uav-paper.pdf`, generated from the current submitted manuscript source
- `Supplementary` now points to `static/downloads/more-uav-supplementary.pdf`
- `Verification Tool` now points to `static/downloads/MoRe-UAV-Human-Verification-Tool.zip`
- `Code` and `Dataset` buttons now jump to the public GitHub and Google Drive release links
- `Dataset Demo` now points to the reviewer-facing Google Drive folder for the small-scale demo subset
- Update the BibTeX block once the final venue information is ready

## Notes

- This release keeps the first four demos at higher quality and uses lighter compression for the extended gallery.
- Unused legacy figures, duplicate videos, removed demo clips, and `.DS_Store` files have been cleaned out of this folder.
- Earlier design variants are still preserved separately in `../MoRe-UAV.github.io` and `../MoRe-UAV.github.io-previous`.

## One-Command Sync

- Run `./sync_site.sh` in this folder to stage, commit, rebase onto `origin/main`, and push the current website.
- Or run `./sync_site.sh "your commit message"` if you want a custom commit message.
- If GitHub asks for authentication during `git push`, use a valid PAT instead of your account password.
