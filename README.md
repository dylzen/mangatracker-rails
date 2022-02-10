# mangatracker-rails

WARNING: this script is a work in progress and it's just for reference.

## Description

This is a simple application I wrote for myself to try and learn a bit of Ruby on Rails. 
It allows to track manga/books collection. The user interface is very basic and it can only be used to add a new manga or a new volume for a manga. The app also uses Kimurai for web scraping.

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

## Example pictures

![mangatracker1](https://user-images.githubusercontent.com/29499866/153462655-874efe83-8a44-4daf-9537-b399f0fcc318.png)

![mangatracker2](https://user-images.githubusercontent.com/29499866/153462870-ceb7f72a-9f21-48a9-a672-4e7582904cd6.png)

![mangatacker3](https://user-images.githubusercontent.com/29499866/153462918-94fa4601-7cc0-4e1d-8458-ab984d13c8e5.png)

![mangatracker4](https://user-images.githubusercontent.com/29499866/153462950-249efd41-4abc-48d6-8688-a3ca41fc0d33.png)

## Technical details

ruby 2.7.4p191 (2021-07-07 revision a21a3b7d23) [x86_64-linux-gnu]\
Rails 7.0.1\
sqlite3

## Authors

Dylan Tangredi\
[linkedin](https://www.linkedin.com/in/dylantangredi/)