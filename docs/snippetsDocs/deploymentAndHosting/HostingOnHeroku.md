---
title: "Hosting Your Vapor App on Heroku"
description: "Deploy your Vapor-based REST API to Heroku, a cloud platform that simplifies deployment and scaling for server-side Swift applications."
---

Deploying your Vapor REST API to Heroku allows your app to be accessible online, with the added benefits of dynamic scaling and easy integration with services like PostgreSQL.

<details>

**URL:** [https://vapor.codes](https://vapor.codes)

**Source:** [Book: Server-Side Swift](#)

**Author:** `[Author Name]`

**Tags:**  
`Vapor`, `Heroku`, `Deployment`, `Swift`, `Cloud Hosting`

**Platforms Supported:** macOS, Linux

**Swift Version:** 5.x
</details>

## Getting Started with Heroku

### Step 1: Install Heroku CLI
Install the Heroku CLI using Homebrew:
```bash
brew install heroku
```

Login to Heroku:
```bash
heroku login
```

### Step 2: Initialize a Git Repository
Navigate to your Vapor project directory and initialize a Git repository:
```bash
git init
git add .
git commit -m "Initial commit"
```

### Step 3: Setup Heroku for Vapor
Initialize Heroku for your Vapor project:
```bash
vapor heroku init
```
Answer the prompts to configure your app, or accept the defaults.

### Step 4: Configure PostgreSQL on Heroku
Add a PostgreSQL database to your Heroku app:
```bash
heroku addons:create heroku-postgresql:hobby-dev
```
This will create a `DATABASE_URL` environment variable for connecting your app to the database.

### Step 5: Create a Procfile
Create a `Procfile` in the root of your project to define how Heroku should start your app:
```text
web: Run serve --env production --hostname 0.0.0.0 --port \$PORT
```

### Step 6: Deploy to Heroku
Push your code to Heroku for deployment:
```bash
git push heroku master
```
Heroku will deploy your app and provide a URL for access.

### Step 7: Test Your Deployed API
Once deployed, test your API by replacing `http://0.0.0.0:8080` with your Heroku app’s URL.

## Conclusion
Deploying your Vapor app to Heroku enables you to make your API publicly accessible and scalable. This setup also simplifies database integration using PostgreSQL.

## Related Snippets
- [Building REST APIs with Vapor](#)
- [Database Persistence with Fluent and Postgres](#)

<LinkCard title="Learn More about Heroku" href="https://www.heroku.com/" />
