#!/bin/bash
# Hugo Theme Fix Script
# Save this as fix-hugo-theme.sh and make it executable: chmod +x fix-hugo-theme.sh

echo "🔧 Fixing Hugo theme..."

# Kill any running Hugo servers
pkill -f "hugo server" 2>/dev/null || true

# Fix the submodule
cd ~/rosedale-community-garden.github.io
git submodule deinit -f themes/hugo-clarity
git submodule update --init --recursive

echo "✅ Theme fixed! Starting Hugo server..."

# Start Hugo
hugo server

echo "🎉 Hugo is running"
