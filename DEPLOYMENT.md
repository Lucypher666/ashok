# Deploying TodoSpark to Vercel

This guide will help you deploy TodoSpark to Vercel for free hosting with automatic HTTPS and CDN support.

## Prerequisites

1. A [Vercel account](https://vercel.com/signup) (free tier is sufficient)
2. Your TodoSpark repository pushed to GitHub
3. A Neon Database account for the PostgreSQL database

## Deployment Steps

### 1. Database Setup

1. Create a new database in [Neon](https://neon.tech)
2. Copy your database connection string
3. Keep this handy for the next step

### 2. Vercel Deployment

1. Go to [Vercel Dashboard](https://vercel.com/dashboard)
2. Click "New Project"
3. Import your GitHub repository
4. Configure the following environment variables:
   - `DATABASE_URL`: Your Neon database connection string
   - `NODE_ENV`: Set to "production"
   - `SESSION_SECRET`: A secure random string for session management

### 3. Deploy Settings

Vercel will automatically detect your configuration from `vercel.json`. The deployment will:
- Build the client using Vite
- Build the server using esbuild
- Set up API routes
- Configure static file serving

### 4. Deployment

1. Click "Deploy"
2. Vercel will automatically:
   - Install dependencies
   - Run the build command
   - Deploy your application
   - Provide you with a production URL

### 5. Post-Deployment

1. Visit your deployed application
2. Test all functionality
3. Set up your custom domain (optional)

## Automatic Deployments

Vercel automatically deploys:
- Every push to main branch
- Pull request previews

## Troubleshooting

- Check Vercel deployment logs for errors
- Ensure all environment variables are set correctly
- Verify database connection is working
- Check if build commands complete successfully

## Support

If you encounter issues:
1. Check Vercel's deployment logs
2. Review your environment variables
3. Ensure database connectivity
4. Verify your vercel.json configuration