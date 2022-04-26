# README

## Introduction ##

This application is intended for the TAMU Horticulture Club in order to better manage their club.
It includes member and member points tracking, as well as listings for club events
and plants to be sold at their annual plant club.

## Requirements ##

This code has been run and tested on:

* Ruby - 3.0.2p107
* Rails - 6.1.4.1
* Ruby Gems - Listed in `Gemfile`
* PostgreSQL - 13.3 
* Nodejs - v16.9.1
* Yarn - 1.22.11


## External Deps  ##

* Docker - Download latest version at https://www.docker.com/products/docker-desktop
* Heroku CLI - Download latest version at https://devcenter.heroku.com/articles/heroku-cli
* Git - Downloat latest version at https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

## Installation ##

Download this code repository by using git:

 `git clone https://github.com/Dylan-Harden3/horticulture_tracker.git`


## Tests ##

An RSpec test suite is available and can be ran using:

  `rspec spec/`

## Execute Code ##

Run the following code in Powershell if using windows or the terminal using Linux/Mac

  `cd your_github_here`

  `docker run --rm -it --volume "$(pwd):/rails_app" -e DATABASE_USER=test_app -e DATABASE_PASSWORD=test_password -p 3000:3000 Dylan-Harden3/horticulture_tracker:main`

  `cd rails_app`

Install the app

  `bundle install && rails webpacker:install && rails db:create && db:migrate`

Run the app
  `rails server --binding:0.0.0.0`

The application can be seen using a browser and navigating to http://localhost:3000/

## Environmental Variables/Files ##
The app requires a google cloud account, as well as cloudinary. The keys for this project are stored in Heroku under settings > config variables.

## Deployment ##

The app is delployed on heroku at https://tamuhorticultureclub.herokuapp.com/ .

## CI/CD ##

The app uses github actions and heroku pipelines for CI/CD. You can view the actions under the actions page. To create your own workflow edit the .github folder.

## Support ##

Admins looking for support should look to the admin help page.
