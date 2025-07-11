# Heroku Deployment Guide

## Prerequisites
- Heroku CLI installed
- Heroku account (free tier available)

## Backend Deployment (Spring Boot)

### 1. Create Procfile in backend folder
```
web: java -jar build/libs/backend-0.0.1-SNAPSHOT.jar --server.port=$PORT
```

### 2. Update application.properties for production
```properties
# Use environment variables for production
spring.datasource.url=${DATABASE_URL:jdbc:h2:mem:testdb}
server.port=${PORT:8080}
spring.mail.username=${GMAIL_USERNAME}
spring.mail.password=${GMAIL_PASSWORD}
```

### 3. Deploy Backend
```bash
cd backend
heroku create your-linkedin-backend
heroku config:set GMAIL_USERNAME=your-email@gmail.com
heroku config:set GMAIL_PASSWORD=your-app-password
git subtree push --prefix backend heroku main
```

## Frontend Deployment

### 1. Update API URL in frontend
```typescript
// src/utils/api.ts
const API_BASE_URL = process.env.NODE_ENV === 'production' 
  ? 'https://your-linkedin-backend.herokuapp.com'
  : 'http://localhost:8081';
```

### 2. Deploy to Netlify/Vercel
```bash
cd frontend
npm run build
# Upload dist folder to Netlify or connect GitHub repo
```

## Your Live URLs
- Frontend: https://your-app.netlify.app
- Backend API: https://your-linkedin-backend.herokuapp.com
