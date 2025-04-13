#!/bin/bash

# Build script for Vercel deployment

# Install dependencies
npm install

# Build the client and server
npm run build

# Verify the build
if [ -d "dist" ] && [ -f "dist/index.js" ]; then
  echo "✅ Server build successful"
else
  echo "❌ Server build failed"
  exit 1
fi

if [ -d "client/dist" ]; then
  echo "✅ Client build successful"
else
  echo "❌ Client build failed"
  exit 1
fi

echo "🚀 Build completed successfully!"