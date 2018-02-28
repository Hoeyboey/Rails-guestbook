# Rails-guestbook

For a code challenge for a job, I was requested to put together a guestbook-style site in Rails. This is that! It's currently a work-in-progress, a couple hours of work. As of right now, it just allows you to post things and delete them at-will - very, very simple.

To run it, ensure you have Ruby/Rails and all their prerequisites installed (you can check out the Rails installation guide [here](http://guides.rubyonrails.org/getting_started.html)), download this repo, open up /blog in Powershell/command prompt/etc, and run `bin/rails server` (or `ruby bin/rails server` on Windows, I haven't been able to test on Mac OS/Linux).

Navigate to `http://localhost:3000/articles` and you should see a page where there's a form to put in a new article, and a table below to show existing posts. It requires a title, a name (which I, in the heat of coding, called `poster_name` rather than the much more sensible `author`, because words escape me), and some text. Below shows all existing posts, alongside a button to delete them.

It's pretty simple - there's a table called articles that holds everything, and in the view, it just runs through each record in the table. Originally it just included the title and text, but I had to add a section for the author, so I just used `bin/rails generate migration AddPosterNameToArticles poster_name:string` and `bin/rails db migration` to add it in, and edited the relevant pages!

In the controller there's also some security to ensure only the poster name, title, and text go through (which was something I forgot about and got stuck on for a good five minutes, wondering why the poster name didn't get saved!). 

To come:
 - Changing time created table column to be more readable and said in words
 - Slight UI changes
 - Confirmation messages on post creation and deletion