# Railway Deployment (Recommended)

## Why Railway?
- Free tier with good limits
- Automatic deployments from GitHub
- Easy environment variable management
- Good performance

## Steps:

### 1. Backend Deployment
1. Go to [railway.app](https://railway.app)
2. Sign up with GitHub
3. Click "New Project" → "Deploy from GitHub repo"
4. Select your LinkedIn-clone-project repository
5. Choose backend folder as root
6. Add environment variables:
   - `GMAIL_USERNAME=your-email@gmail.com`
   - `GMAIL_PASSWORD=your-app-password`
7. Railway will auto-deploy your Spring Boot app

### 2. Frontend Deployment
1. Create new Railway service for frontend
2. Connect same GitHub repo
3. Set root directory to "frontend"
4. Update API URL to use Railway backend URL
5. Deploy

## Result:
- Backend: `https://your-backend.railway.app`
- Frontend: `https://your-frontend.railway.app`
