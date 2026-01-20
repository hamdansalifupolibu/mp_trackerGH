# 🏛️ MP Impact & Development Tracker

**Hon. Sualihu Dandaawa - Karaga Constituency**

A comprehensive web application for tracking and showcasing development projects, scholarships, and community impact initiatives by the Member of Parliament for Karaga Constituency, Northern Region, Ghana.

---

## 📋 **Overview**

This platform provides transparent, real-time tracking of:
- ✅ Infrastructure projects across multiple sectors
- 🎓 Scholarship programs and beneficiaries
- 💰 Investment tracking and financial transparency
- 📊 Community-level impact metrics
- 👥 Multi-user role-based access control

---

## ✨ **Features**

### **Public Dashboard**
- Real-time project statistics and metrics
- Sector-based project categorization (Education, Health, Roads, etc.)
- Community-level breakdown
- Interactive filtering and search
- Mobile-responsive design

### **Admin Features**
- **Project Management**: Add, edit, and delete projects
- **Bulk Upload**: Excel-based bulk project import
- **User Management**: Role-based access control
- **Scholarship Tracking**: Manage beneficiary records
- **Audit Logging**: Complete activity tracking

### **User Roles**
- **Super Admin**: Full system access
- **Regional Admin**: Project and data management
- **Analyst**: Bulk uploads and analytics
- **Editor**: Project creation and editing
- **Public Viewer**: Read-only access

---

## 🛠️ **Technology Stack**

### **Backend**
- Node.js (v18+)
- Express.js (v5.2)
- MySQL (v8.0+)
- JWT Authentication
- Bcrypt encryption

### **Frontend**
- Vanilla JavaScript
- Modern CSS with glassmorphism design
- Font Awesome icons
- Responsive grid layout

### **Key Dependencies**
- `express` - Web framework
- `mysql2` - MySQL database driver
- `bcrypt` - Password hashing
- `jsonwebtoken` - Authentication
- `multer` - File uploads
- `xlsx` - Excel file processing
- `dotenv` - Environment configuration

---

## 🚀 **Quick Start (Local Development)**

### **Prerequisites**
- Node.js 18.x or higher
- MySQL 8.0 or higher (or XAMPP/WAMP)
- Git

### **Installation**

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd hon-salifu-dandaawa
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Set up environment variables**
   ```bash
   cp .env.example .env
   ```
   Edit `.env` with your database credentials

4. **Create MySQL database**
   ```sql
   CREATE DATABASE mp_tracker;
   ```

5. **Run database schema**
   - Open phpMyAdmin or MySQL Workbench
   - Select `mp_tracker` database
   - Execute `schema.sql`

6. **Seed initial users**
   - Execute `seed_users.sql` in phpMyAdmin

7. **Start the application**
   ```bash
   npm start
   ```

8. **Access the application**
   - Open browser: `http://localhost:3000`
   - Login with:
     - Username: `admin`
     - Password: `Admin@123`

---

## 📦 **Deployment to Hostinger**

For detailed deployment instructions, see **[HOSTINGER_DEPLOYMENT.md](./HOSTINGER_DEPLOYMENT.md)**

### **Quick Deployment Steps**

1. Create MySQL database on Hostinger
2. Run `schema.sql` and `seed_users.sql` in phpMyAdmin
3. Connect GitHub repository to Hostinger
4. Configure environment variables
5. Deploy and verify

---

## 📁 **Project Structure**

```
├── app.js                      # Main application server
├── database.js                 # MySQL connection configuration
├── auth.js                     # JWT authentication middleware
├── package.json                # Node.js dependencies
├── schema.sql                  # Database table structure
├── seed_users.sql              # Initial user accounts
├── projects_dump.json          # Sample project data
├── public/                     # Frontend files
│   ├── index.html             # Main HTML page
│   ├── main.js                # Frontend JavaScript
│   ├── style.css              # Styles and design
│   └── *.png                  # Images and assets
├── uploads/                    # User-uploaded files
│   └── projects/              # Project images
├── .env.example               # Environment template
├── .gitignore                 # Git ignore rules
├── README.md                  # This file
└── HOSTINGER_DEPLOYMENT.md    # Deployment guide
```

---

## 🔐 **Security Features**

- ✅ JWT-based authentication
- ✅ Bcrypt password hashing (10 rounds)
- ✅ Rate limiting on auth endpoints
- ✅ SQL injection prevention (parameterized queries)
- ✅ Role-based access control
- ✅ Audit logging for all actions
- ✅ Environment variable protection

---

## 📊 **Database Schema**

### **Tables**

1. **users** - User accounts and authentication
2. **projects** - Development projects
3. **scholarships** - Scholarship beneficiaries
4. **impact_metrics** - Custom KPI metrics
5. **completion_rates** - Sector completion statistics
6. **audit_logs** - System activity tracking

For detailed schema, see `schema.sql`

---

## 🎨 **Design Features**

- Modern glassmorphism UI
- Dark theme with gold/teal accents
- Fully responsive (mobile, tablet, desktop)
- Smooth animations and transitions
- Accessible color contrast
- Professional typography

---

## 🔄 **API Endpoints**

### **Public Endpoints**
- `GET /api/health` - Health check
- `GET /api/projects` - List projects (with filters)
- `GET /api/metrics` - Dashboard statistics
- `GET /api/communities` - Community breakdown

### **Protected Endpoints** (Require Authentication)
- `POST /api/projects` - Create project
- `PUT /api/projects/:id` - Update project
- `DELETE /api/projects/:id` - Archive project
- `POST /api/projects/bulk-upload` - Bulk import
- `GET /api/users` - User management (Super Admin only)

For complete API documentation, see inline comments in `app.js`

---

## 👥 **Default User Accounts**

| Username | Password | Role | Access Level |
|----------|----------|------|--------------|
| admin | Admin@123 | super_admin | Full access |
| regional_admin | Admin@123 | regional_admin | Project management |
| analyst | Admin@123 | analyst | Bulk uploads |
| editor | Admin@123 | editor | Project editing |

⚠️ **Change all passwords immediately after deployment!**

---

## 🐛 **Troubleshooting**

### **Database Connection Issues**
- Verify MySQL is running
- Check database credentials in `.env`
- Ensure database exists

### **Module Not Found**
- Run `npm install`
- Check Node.js version (18+)

### **Port Already in Use**
- Change `PORT` in `.env`
- Kill process using port 3000

For more issues, see [HOSTINGER_DEPLOYMENT.md](./HOSTINGER_DEPLOYMENT.md)

---

## 📝 **License**

ISC License - See LICENSE file for details

---

## 👨‍💻 **Development**

### **Running in Development Mode**
```bash
# Set NODE_ENV=development in .env
npm start
```

### **Database Backup**
```bash
# Export database
mysqldump -u root -p mp_tracker > backup.sql
```

### **Seeding Sample Data**
Visit: `http://localhost:3000/api/seed`

---

## 🤝 **Contributing**

This is a private project for Hon. Sualihu Dandaawa's constituency. For inquiries, contact the development team.

---

## 📞 **Support**

For technical support or questions:
- Review documentation in this README
- Check [HOSTINGER_DEPLOYMENT.md](./HOSTINGER_DEPLOYMENT.md)
- Review inline code comments

---

**Built with ❤️ for Karaga Constituency**  
**Version**: 1.0.0  
**Last Updated**: January 2026
