# Storyteller: The Social Network of Storytelling

# Description
Storytelling is one of the oldest human practices. Humans used storytelling as a method of communication, even before writing was invented.
Storyteller is a storytelling platform. It's a place where users can join, tell their stories, read other users' stories, and discuss these stories.

# Technology
- Storyteller is built with Ruby on Rails. It uses Object-relational mapping (ORM) for converting data between Ruby and Postgres.
- Storyteller follows the Representational State Transfer convention (REST) as a standard for communications between the server and browsers.
- Storyteller uses Devise, a gem responsible for managing users and sessions.
- Storyteller also uses Reset CSS, and Normalize CSS, to provide a consistent experience across browsers.
- Storyteller is deployed on Heroku.

# Screencast
https://www.youtube.com/watch?v=Koqdlu7o-2A&feature=youtu.be

#ERD
![Storyteller-ERD](./planning/erd.png?raw=true "ERD")

#Wireframes
For Unlogged Users
![wireframe-unlogged](./planning/unlogged.png?raw=true "wireframe-unlogged")

For Logged Users
![wireframe-logged](./planning/logged.png?raw=true "wireframe-logged")

For Admins
![wireframe-admin](./planning/admin.png?raw=true "wireframe-admin")

# User stories
Three cases of user stories

1. As an unlogged user
  - I should be able to explore communities, and read stories and comments within these communities

2. As a logged user
  In addition to being able to do everything unlogged users can do:
  - I should be able to see my profile, and other users' profiles
  - I should be able to edit my account and my profile
  - I should be able to post stories to my profile
  - I should be able to see stories shared by other users on their profiles
  - I should be able to join and leave communities
  - I should be able to comment on stories in profiles and communities
  - I should be able to add stories to the communities I join
  - I should be able to leave a feedback to the admin

3. As an Admin
  In addition to being able to do everything logged users can do:
  - I should be able to see the feedback left by users
  - I should be able to see a list of users
  - I should be the only one able to edit communities
  - I should be able to edit or delete anything on the app

# Possible Future Upgrades
Style
- HTML and CSS validation
- Expand the content field in forms
- Edit the button text on forms
- Add error handling for all resources.
- Fix Bug: Admin Edit Account leads to a wrong page when editing other user

New Features
- Sign in with Facebook account
- Flexbox
- Add favorites
- Add tags
- Follow other users
- Add Tests
