# 🚀 Hostinger Deployment Guide

## MP Impact & Development Tracker - Deployment Instructions

---

## 📋 **Pre-Deployment Checklist**

Before deploying to Hostinger, ensure you have:

- ✅ GitHub account
- ✅ Hostinger account with Node.js hosting plan
- ✅ Access to Hostinger's MySQL database
- ✅ This repository cloned/pushed to GitHub

---

## 🗄️ **Step 1: Set Up MySQL Database on Hostinger**

### 1.1 Create Database

1. Log in to **Hostinger Control Panel** (hPanel)
2. Navigate to **Databases** → **MySQL Databases**
3. Click **"Create New Database"**
4. Database Name: `mp_tracker` (or your preferred name)
5. Click **Create**

### 1.2 Note Your Database Credentials

After creating the database, note down:
- **Database Host**: (e.g., `mysql123.hostinger.com`)
- **Database Name**: (e.g., `u123456789_mp_tracker`)
- **Database User**: (e.g., `u123456789_dbuser`)
- **Database Password**: (the one you set)
- **Port**: `3306` (default)

### 1.3 Run Schema SQL

1. In hPanel, go to **Databases** → **phpMyAdmin**
2. Select your database from the left sidebar
3. Click the **SQL** tab
4. Copy and paste the contents of `schema.sql` from this repository
5. Click **Go** to execute
6. Verify all 6 tables were created:
   - `users`
   - `projects`
   - `scholarships`
   - `impact_metrics`
   - `completion_rates`
   - `audit_logs`

### 1.4 Seed Initial Users

1. Still in phpMyAdmin SQL tab
2. Copy and paste the contents of `seed_users.sql`
3. Click **Go** to execute
4. Verify 4 users were created (admin, regional_admin, analyst, editor)

**Default Login Credentials:**
- Username: `admin`
- Password: `Admin@123`

⚠️ **IMPORTANT**: Change the admin password immediately after first login!

### 1.5 (Optional) Seed Project Data

If you want to import existing project data:
1. Navigate to the `/api/seed` endpoint after deployment
2. This will load data from `projects_dump.json`

---

## 🌐 **Step 2: Deploy to Hostinger**

### 2.1 Connect GitHub Repository

1. In Hostinger hPanel, go to **Website** → **Git**
2. Click **"Connect to GitHub"**
3. Authorize Hostinger to access your GitHub account
4. Select your repository
5. Select the branch (usually `main` or `master`)
6. Set deployment path: `/public_html` (or your preferred path)

### 2.2 Configure Environment Variables

1. In hPanel, go to **Website** → **Environment Variables**
2. Add the following variables:

```
PORT=3000
JWT_SECRET=your_super_secret_jwt_key_change_this_NOW
NODE_ENV=production
DB_HOST=your_mysql_host_from_step_1.2
DB_USER=your_database_user_from_step_1.2
DB_PASSWORD=your_database_password_from_step_1.2
DB_NAME=your_database_name_from_step_1.2
DB_PORT=3306
```

⚠️ **CRITICAL**: 
- Generate a strong, unique `JWT_SECRET` (at least 32 characters)
- Use the exact database credentials from Step 1.2

### 2.3 Configure Node.js Settings

1. In hPanel, go to **Website** → **Node.js**
2. Set **Application Mode**: `Production`
3. Set **Application Root**: `/public_html` (or your deployment path)
4. Set **Application Startup File**: `app.js`
5. Set **Node.js Version**: `18.x` or higher
6. Click **Save**

### 2.4 Deploy

1. Go back to **Git** section
2. Click **"Pull & Deploy"**
3. Wait for deployment to complete (usually 1-2 minutes)
4. Check deployment logs for any errors

---

## ✅ **Step 3: Verify Deployment**

### 3.1 Test the Application

1. Visit your Hostinger domain (e.g., `https://yourdomain.com`)
2. You should see the MP Impact & Development Tracker homepage
3. Check that all metrics show `0` (since database is empty)

### 3.2 Test Login

1. Click **Login** button
2. Enter credentials:
   - Username: `admin`
   - Password: `Admin@123`
3. You should see "Welcome back, admin" message
4. Admin controls should appear

### 3.3 Test Database Connection

1. Visit: `https://yourdomain.com/api/health`
2. You should see: `{"status":"ok","message":"System healthy"}`
3. If you see an error, check your database credentials in environment variables

### 3.4 Seed Data (Optional)

1. Visit: `https://yourdomain.com/api/seed`
2. This will load project data from `projects_dump.json`
3. Refresh the homepage to see populated data

---

## 🔒 **Step 4: Post-Deployment Security**

### 4.1 Change Default Passwords

1. Log in as `admin`
2. Go to **User Management**
3. Change passwords for all default users
4. Delete any unused accounts

### 4.2 Verify Environment Variables

1. Ensure `NODE_ENV=production`
2. Ensure `JWT_SECRET` is strong and unique
3. Never commit `.env` file to GitHub

### 4.3 Set Up SSL Certificate

1. In Hostinger hPanel, go to **Security** → **SSL**
2. Enable **Free SSL Certificate**
3. Force HTTPS redirect

---

## 🛠️ **Troubleshooting**

### Issue: "Database connection failed"

**Solution:**
- Verify database credentials in Environment Variables
- Check that database exists in phpMyAdmin
- Ensure database user has proper permissions

### Issue: "Module not found" errors

**Solution:**
- In hPanel, go to **Node.js** section
- Click **"Run npm install"**
- Wait for installation to complete
- Redeploy

### Issue: "500 Internal Server Error"

**Solution:**
- Check application logs in hPanel
- Verify all environment variables are set
- Ensure `app.js` is set as the startup file
- Check Node.js version is 18.x or higher

### Issue: "Cannot find module 'dotenv'"

**Solution:**
- Ensure `package.json` includes all dependencies
- Run `npm install` in Node.js settings
- Redeploy the application

---

## 📁 **Important Files**

| File | Purpose |
|------|---------|
| `schema.sql` | Database table structure |
| `seed_users.sql` | Initial user accounts |
| `projects_dump.json` | Sample project data |
| `.env.example` | Environment variable template |
| `app.js` | Main application file |
| `package.json` | Node.js dependencies |

---

## 🔄 **Updating the Application**

### Method 1: Auto-Deploy (Recommended)

1. Push changes to your GitHub repository
2. In Hostinger hPanel, go to **Git**
3. Click **"Pull & Deploy"**
4. Changes will be automatically deployed

### Method 2: Manual Deploy

1. In hPanel, go to **File Manager**
2. Upload changed files
3. Restart Node.js application

---

## 📞 **Support**

If you encounter issues:

1. Check Hostinger's Node.js documentation
2. Review application logs in hPanel
3. Verify all environment variables
4. Ensure database is properly configured

---

## ✨ **Default Login Credentials**

After deployment, you can log in with:

| Username | Password | Role |
|----------|----------|------|
| admin | Admin@123 | super_admin |
| regional_admin | Admin@123 | regional_admin |
| analyst | Admin@123 | analyst |
| editor | Admin@123 | editor |

⚠️ **Change these passwords immediately after first login!**

---

## 🎯 **Next Steps After Deployment**

1. ✅ Change all default passwords
2. ✅ Add your project data (via UI or bulk upload)
3. ✅ Configure custom domain (if applicable)
4. ✅ Set up regular database backups
5. ✅ Test all features thoroughly

---

**Deployment Date**: January 2026  
**Application Version**: 1.0.0  
**Node.js Version**: 18.x or higher  
**Database**: MySQL 8.0+
