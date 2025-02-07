#!/bin/bash

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
