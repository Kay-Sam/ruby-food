source "https://rubygems.org"

# Rails core
gem "rails", "~> 8.1.3"

# Frontend / assets
gem "propshaft"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"

# Web server
gem "puma", ">= 5.0"

# Database (Supabase / PostgreSQL)
gem "pg"

# ⚠️ REMOVE sqlite3 completely (you are using Supabase)
# gem "sqlite3", ">= 2.1"

# Authentication helper (optional)
# gem "bcrypt", "~> 3.1.7"

# Timezone data for Windows
gem "tzinfo-data", platforms: %i[windows jruby]

# Caching / jobs / cable
gem "solid_cache"
gem "solid_queue"


# ENV variables (IMPORTANT - only ONE version)
gem "dotenv-rails", groups: [:development, :test]

# Boot optimization
gem "bootsnap", require: false

# Deployment tools
gem "kamal", require: false
gem "thruster", require: false

# File uploads / image processing
gem "image_processing", "~> 1.2"

# =========================
# Development & Test
# =========================
group :development, :test do
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "bundler-audit", require: false
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end