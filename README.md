# 📚 Rails Book App

A simple Ruby on Rails application where users can share book recommendations and comment on them. Includes light/dark mode toggle and is deployed online.

---

## 🚀 Features

- Add books with title, author, and description
- Comment on each book
- Light/Dark mode toggle (with localStorage)
- TailwindCSS for modern UI
- PostgreSQL as the database
- Deployed to Render

---

## 🔧 Tech Stack

- **Ruby on Rails 8**
- **Tailwind CSS**
- **PostgreSQL**
- **Render (for hosting)**

---

## 📦 Setup Instructions

### 1. Clone the repo

```bash
git clone https://github.com/sham1ko/rails-book-app.git
cd rails-book-app
```

### Install dependencies

```bash
   bundle install
   yarn install # if using jsbundling-rails
```

### Setup database (local PG or Supabase)

```bash
   rails db:create db:migrate db:seed
```

### Run the app

```bash
   bin/dev
```

Or:

```bash
rails server
```

## 🛠️ Deployment (Render)

When deploying to [Render](https://render.com), make sure to set the following environment variables in your service settings:

```env
DATABASE_URL=postgresql://your_user:your_password@your-host:5432/your_db
RAILS_MASTER_KEY=your_master_key_from_config/master.key
WEB_CONCURRENCY=2
```

- Set `DATABASE_URL` and `RAILS_MASTER_KEY` in Render environment

Build command:

````bash
bundle install; bundle exec rake assets:precompile; bundle exec rake assets:clean;```
````

Start command:

````bash
bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}```
````
