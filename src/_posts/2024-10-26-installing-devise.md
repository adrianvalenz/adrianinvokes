---
layout: post
title: "Installing Devise"
date: 2024-10-26 00:00:00 -0800
categories: software
---

`bundle add devise`
`rails generate devise:install`

in config/environments/development.rb: `config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }`

`bin/rails generate devise User`

`bin/rails db:migrate`

- follow prompts: default_url_options for development and production,
  alerts/notices, generate views, set root_path
- bin/rails g devise user: uncomment modules before migrating
- set associations between user and another model if necessary
- 
