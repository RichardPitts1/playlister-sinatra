# Sinatra Playlister

## Objectives

- Solidify your ActiveRecord understanding
- Build out basic views for all your models
- Create forms for editing and creating a new song that returns a
  well-structured params hash

## Overview
In this lab, you'll be:

1.  Giving our "library" of songs a dynamic web interface

2.  Creating a few complex forms that allow you to create and edit Artists,
    Songs and Genres.

## Instructions

The first thing you should aim to do is create a Sinatra interface for the data
in `db/data`. There is a `LibraryParser` class included in the `lib` folder that
you may use, though it may need some tweaking to work with your specific
application. Your associations should follow this pattern:

1.  An Artist can have multiple songs and multiple genres

2.  A Genre can have multiple artists and multiple songs

3.  A Song can belong to ONE Artist and multiple genres

4.  How would we implement the relationship of a song having many genres and
    genre having many songs? In order to establish a "many-to-many" relationship,
    we'll need a join table. You will need a `SongGenre` class to go along with this
    table in the database

To get the data into your database, you will want to figure out how to use your
`LibraryParser` class in the `db/seeds.rb` file.


You should build the following routes:

1.  `/songs`

- This should present the user with a list of all songs in the library.
- Each song should be a clickable link to that particular song's show page.


2.  `/songs/:id`

- Any given song's show page should have links to that song's artist and the
  each genre associated with the song.
- Pay attention to the order of `/songs/new` and `/songs/:id`. The route
  `/songs/new` could interpret `new` as a id if that controller action isn't
  defined first.

3. `/create-songs`

- This should present the user with a form to create a song, allowing them to 
  `select` a genre and an artist from a dropdown. 

4.  `/genres`

- This should present the user with a list of all genres in the library.
- Each genre should be a clickable link to that particular genre's show page.

5.  `/artists`

- This should present the user with a list of all artists in the library.
- Each artist should be a clickable link to that particular artist's show page.

6.  `/artists/:id`

- Any given artist's show page should have links to each of his or her songs
  and genres.

7.  `/genres/:id`

- Any given genre's show page should have links to each of its artists and
  songs.
  

## Fixing Migration Errors

While creating your databases, if you make a mistake or want to edit your
migrations, you can use `rake db:drop` to drop any tables that have been
created.

If you're having issues while trying to re-migrate, you can also delete
`schema.rb` and any files with the extension `.sqlite` inside the `db` folder.
Running `rake db:migrate` will recreate these files.
