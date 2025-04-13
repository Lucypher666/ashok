# TodoSpark - Task Management Application

## Deployment Guide

### Prerequisites
1. Create a [Vercel](https://vercel.com) account
2. Install Vercel CLI: `npm i -g vercel`
3. Have your database connection string ready (Neon or any PostgreSQL database)

### Deployment Steps

1. **Login to Vercel**
   ```bash
   vercel login
   ```

2. **Configure Environment Variables**
   - Go to your Vercel project settings
   - Add the following environment variables:
     - `DATABASE_URL`: Your PostgreSQL connection string
     - `SESSION_SECRET`: A secure random string for session encryption

3. **Deploy the Application**
   ```bash
   # Build the application
   npm run build
   
   # Deploy to Vercel
   vercel
   ```

4. **Follow the CLI prompts**
   - Select your project scope
   - Confirm the deployment settings
   - Wait for the deployment to complete

5. **Visit Your Deployed Application**
   - Once deployed, Vercel will provide you with a production URL
   - Your application is now live!

### Important Notes
- Ensure your database is accessible from Vercel's deployment environment
- The application uses server-side rendering, so all API routes will work automatically
- Vercel will automatically handle HTTPS and CDN distribution

### Troubleshooting
- If you encounter any issues, check the Vercel deployment logs
- Ensure all environment variables are correctly set
- Verify your database connection string is correct and accessible