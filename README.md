# mangatracker-rails

WARNING: this script is a work in progress and it's just for reference.

## Description

This is a simple application I wrote for myself to try and learn a bit of Ruby on Rails. 
It allows to track manga/books collection. The user interface is very basic and it can only be used to add a new manga or a new volume for a manga.

The database consists of three Models: Manga, Volume and Release, with Volume belonging to Manga.
When I add a new Volume, the database and the GUI are updated to show the new correct missing volume list for that manga.
The Release Model is used in the Calendar page to be filled with data scraped from a popular website, but it's not working properly at the moment because the divs for the date and for the rest of the data are not structured as parent/child.

I also need to delete all entries before every scrape using the console, for example.

```bash
rails console
Release.delete_all
```

## Deployment

I simply start the server and navigate to the address shown (localhost:3000 if I don't specify otherwise)

```bash
rails server
```

The application is missing the config/database.yml and is not designed to be downloaded ad installed by other users.

## Technical details

ruby 2.7.4p191 (2021-07-07 revision a21a3b7d23) [x86_64-linux-gnu]
Rails 7.0.1
sqlite3

## Authors

Dylan Tangredi\
[linkedin](https://www.linkedin.com/in/dylantangredi/)