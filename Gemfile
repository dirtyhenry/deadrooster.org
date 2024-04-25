# frozen_string_literal: true

source 'https://rubygems.org'
ruby '~> 3.0.2'

# This is a lightweight Jekyll theme we want to use.
gem 'kids',
    git: 'https://github.com/dirtyhenry/kids.git',
    branch: 'main'

# If you have any plugins, put them here!
group :jekyll_plugins do
  gem 'buckygem',
      git: 'https://github.com/dirtyhenry/buckygem.git',
      branch: 'main'

  gem 'jekyll-archives',
      git: 'https://github.com/jekyll/jekyll-archives.git',
      branch: 'master'

  gem 'jekyll-commonmark',
      git: 'https://github.com/jekyll/jekyll-commonmark',
      branch: 'master'

  # As of version 3.0.12, jekyll-assets can't work with Jekyll 4
  # ... but the master branch can
  gem 'jekyll-assets',
      git: 'https://github.com/dirtyhenry/jekyll-assets',
      branch: 'master'
  gem 'jekyll-feed', '~> 0.12'
  gem 'jekyll-sitemap'
end

# Ruby linter
gem 'rubocop', require: false

# Load environment variables
gem 'dotenv'

# Security Constraints
# 📜 https://github.com/dirtyhenry/deadrooster.org/security/dependabot/30
gem 'activesupport', '>= 6.1.7.5', '< 7'
