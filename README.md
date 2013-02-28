Blue Belly
=====

The server control panel I want. 

Blue Belly is a Ruby on Rails app that (eventually) helps create Apache and Nginx hosts on a server. It also helps with other associated things like database creation. 

Blue Belly uses the Net::SSH library to connect and do it's work. This way, you can run it from your local/dev machine and not expose it on the web.

Why?
-----

Because I can.

Also, because I'm sick of dealing with bloated, slow, outdated control panels like Plesk and cPanel. 

How? 
-----

Clone the repo, bundle install, create your db, and migrate. There's some sample data in the seed file so run `rake db:seed` if you want it. 

Don't You Dare!
-----

Don't you dare use this to mess with production/live/important web servers yet. You'll surely be doomed if you do. 

What Does the Name Mean? 
-----

An ode to the blue belly lizard of California. The favorite prey of my kids and cats. 