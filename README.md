# more-uav.github.io

Upload-ready project page for the MoRe-UAV paper.

## Folder contents

- `index.html`: homepage
- `assets/site.css`: styling
- `assets/site.js`: reveal animation and lazy video loading
- `static/images/`: figures and scene strip used on the page
- `static/videos/*.mp4`: featured demos
- `static/videos/gallery/*.mp4`: additional compressed gallery demos
- `static/posters/*.jpg`: poster frames for the featured demos
- `static/pdfs/`: place the paper PDF and supplementary PDF here later

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

## What to update before camera-ready release

- Replace the placeholder `Paper`, `Supplementary`, `GitHub`, and `Dataset` links in `index.html`
- Put your PDF files into `static/pdfs/`
- Update the BibTeX block once the final venue information is ready

## Notes

- This release keeps the first four demos at higher quality and uses lighter compression for the extended gallery.
- Earlier design variants are still preserved separately in `../MoRe-UAV.github.io` and `../MoRe-UAV.github.io-previous`.
