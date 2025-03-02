#!/bin/bash

echo "🚀 Setting up ICAI-Healthcare site..."

# Initialize a new Git repo (if not already initialized)
if [ ! -d ".git" ]; then
  git init
  git remote add origin https://github.com/marliebesouw/icai-healthcare.git
fi

# Set up _config.yml with ICAI branding
echo "🚀 Updating _config.yml..."
cat <<EOT > _config.yml
title: "ICAI-Healthcare"
description: "An AI learning platform for healthcare professionals."
baseurl: "/icai-healthcare"
url: "https://marliebesouw.github.io"
EOT

# Create CSS file for ICAI branding
mkdir -p assets/css
cat <<EOT > assets/css/style.css
/* ICAI Branding */
body {
    background-color: #FFFFFF;
    color: #1B2430;
    font-family: Arial, sans-serif;
}
.banner {
    background-color: #FF8203;
    color: white;
    padding: 20px;
    text-align: center;
    font-size: 24px;
    font-weight: bold;
}
.navbar {
    background-color: #1B2430;
    padding: 10px;
}
.navbar a {
    color: white;
    margin: 10px;
    text-decoration: none;
}
.content {
    max-width: 800px;
    margin: auto;
    padding: 20px;
}
EOT

# Create main page
echo "🚀 Creating homepage (index.md)..."
cat <<EOT > index.md
---
layout: default
title: Home
---

<div class="banner">Welcome to ICAI-Healthcare</div>

<div class="content">
    <h2>About ICAI-Healthcare</h2>
    <p>This platform provides AI learning for healthcare professionals.</p>
</div>
EOT

# Create subpages
echo "🚀 Creating subpages..."
cat <<EOT > information.md
---
layout: default
title: Information
---

<div class="content">
    <h2>Information</h2>
    <p>Details about the AI course and upcoming events.</p>
</div>
EOT

cat <<EOT > speakers.md
---
layout: default
title: Speakers
---

<div class="content">
    <h2>Speakers</h2>
    <p>Meet the experts leading the ICAI-Healthcare program.</p>
</div>
EOT

cat <<EOT > online-course.md
---
layout: default
title: Online Course
---

<div class="content">
    <h2>Online Course</h2>
    <p>Access the learning materials and videos here.</p>
</div>
EOT

# Set up navigation layout
echo "🚀 Setting up navigation..."
mkdir -p _layouts
cat <<EOT > _layouts/default.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ page.title }}</title>
    <link rel="stylesheet" href="{{ site.baseurl }}/assets/css/style.css">
</head>
<body>

<div class="navbar">
    <a href="{{ site.baseurl }}/">Home</a>
    <a href="{{ site.baseurl }}/information">Information</a>
    <a href="{{ site.baseurl }}/speakers">Speakers</a>
    <a href="{{ site.baseurl }}/online-course">Online Course</a>
</div>

<div class="content">
    {{ content }}
</div>

</body>
</html>
EOT

echo "🚀 Committing and pushing changes..."
git add .
git commit -m "Applied ICAI branding and setup"
git push origin main --force
echo "🎉 Done! Your ICAI-Healthcare website is updated: https://marliebesouw.github.io/icai-healthcare/"
#!/bin/bash

<<<<<<< HEAD
# Set up project
echo "🚀 Setting up ICAI-Healthcare site..."

# Clone Beautiful Jekyll template
git clone https://github.com/daattali/beautiful-jekyll.git temp-jekyll
mv temp-jekyll/* temp-jekyll/.* . 2>/dev/null
rm -rf temp-jekyll .git

# Initialize a new Git repo
git init
git remote add origin https://github.com/marliebesouw/icai-healthcare.git

# Set up _config.yml with correct base URL
echo 'baseurl: "/icai-healthcare"
url: "https://marliebesouw.github.io"' >> _config.yml

# Create YouTube video data file
mkdir -p _data
cat <<EOT > _data/videos.yml
- title: "Introduction to AI in Healthcare"
  video_id: "YOUR_VIDEO_ID"

- title: "Ethics in AI for Doctors"
  video_id: "YOUR_VIDEO_ID"
EOT

# Create MCQ system
cat <<EOT > _data/questions.yml
- video_id: "YOUR_VIDEO_ID"
  question: "What is AI?"
  choices: 
    - "Artificial Intelligence"
    - "Automated Input"
    - "Advanced Internet"
  correct: 0
EOT

# Add JavaScript for progress tracking
mkdir -p assets/js
cat <<EOT > assets/js/progress.js
function markVideoComplete(videoId) {
  localStorage.setItem(videoId, "completed");
}
EOT

# Add certificate generation script
cat <<EOT > assets/js/certificate.js
var doc = new jsPDF();
doc.text("Certificate of Completion", 20, 20);
doc.save("certificate.pdf");
EOT

# Enable Disqus comments
echo "disqus: your-disqus-shortname" >> _config.yml

# Push changes to GitHub
git add .
git commit -m "Generated ICAI-Healthcare site"
git push -u origin main

echo "🎉 Done! Your site is now live at: https://marliebesouw.github.io/icai-healthcare/"
=======
echo "🚀 Updating _config.yml with ICAI branding..."
cat <<EOT > _config.yml
title: "ICAI-Healthcare"
description: "An AI learning platform for healthcare professionals."
baseurl: "/icai-healthcare"
url: "https://marliebesouw.github.io"
EOT
echo "✅ _config.yml updated."

echo "🚀 Creating ICAI CSS styles..."
mkdir -p assets/css
cat <<EOT > assets/css/style.css
/* ICAI Branding */
body {
    background-color: #FFFFFF;
    color: #1B2430;
    font-family: Arial, sans-serif;
}
.banner {
    background-color: #FF8203;
    color: white;
    padding: 20px;
    text-align: center;
    font-size: 24px;
    font-weight: bold;
}
.navbar {
    background-color: #1B2430;
    padding: 10px;
}
.navbar a {
    color: white;
    margin: 10px;
    text-decoration: none;
}
.content {
    max-width: 800px;
    margin: auto;
    padding: 20px;
}
EOT
echo "✅ ICAI styles applied."

echo "🚀 Creating homepage (index.md)..."
cat <<EOT > index.md
---
layout: default
title: Home
---

<div class="banner">Welcome to ICAI-Healthcare</div>

<div class="content">
    <h2>About ICAI-Healthcare</h2>
    <p>This platform provides AI learning for healthcare professionals.</p>
</div>
EOT
echo "✅ Homepage created."

echo "🚀 Creating subpages..."
# Information Page
cat <<EOT > information.md
---
layout: default
title: Information
---

<div class="content">
    <h2>Information</h2>
    <p>Details about the AI course and upcoming events.</p>
</div>
EOT

# Speakers Page
cat <<EOT > speakers.md
---
layout: default
title: Speakers
---

<div class="content">
    <h2>Speakers</h2>
    <p>Meet the experts leading the ICAI-Healthcare program.</p>
</div>
EOT

# Online Course Page
cat <<EOT > online-course.md
---
layout: default
title: Online Course
---

<div class="content">
    <h2>Online Course</h2>
    <p>Access the learning materials and videos here.</p>
</div>
EOT
echo "✅ Subpages created."

echo "🚀 Setting up navigation..."
mkdir -p _layouts
cat <<EOT > _layouts/default.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ page.title }}</title>
    <link rel="stylesheet" href="{{ site.baseurl }}/assets/css/style.css">
</head>
<body>

<div class="navbar">
    <a href="{{ site.baseurl }}/">Home</a>
    <a href="{{ site.baseurl }}/information">Information</a>
    <a href="{{ site.baseurl }}/speakers">Speakers</a>
    <a href="{{ site.baseurl }}/online-course">Online Course</a>
</div>

{{ content }}

</body>
</html>
EOT
echo "✅ Navigation setup completed."

echo "🚀 Committing and pushing changes..."
git add .
git commit -m "Applied ICAI branding and setup"
git push origin main
echo "🎉 Done! Your ICAI-Healthcare website is updated: https://marliebesouw.github.io/icai-healthcare/"
>>>>>>> 97ec041 (Applied ICAI branding and setup)
