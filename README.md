# Prerequisites

To create a pdf version of the resume, the following software is required:

- Google Chrome (or Chromium browser) >= 86
- Sass
- chrome-headless-render-pdf

To install:

```
# Arch
pacman -S chromium npm
npm install -g sass chrome-headless-render-pdf

# Ubuntu/Debian
(cd /tmp; curl -LOJ https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb); \
apt install npm /tmp/google-chrome-stable_current_amd64.deb
npm install -g sass chrome-headless-render-pdf
```

# Rendering the resume

From the repository root, run build.sh

```
./build.sh
Using chromium
Waiting for chrome to became available
Chrome port open!
Connected to HeadlessChrome/87.0.4280.88, protocol 1.3
Opening file:///home/ebongers/git/resume/src/index.html
Wait for load took 244ms
Wait for js execution took 1ms
Wait for animations took 114ms
Saved resume.pdf
```
