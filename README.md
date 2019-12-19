Completed User stories

USERS

When a user hasn't signed in and visits the index of the application:
- if they visit another URL, they are redirected to the index
- they can see a link to a sign in page which prompts them to enter in their email address and password.
- When they submit their details, they are logged in and redirected to their posts page.
- they can only enter valid emails, otherwise they see helpful information to indicate why the email was not valid
- they can only enter passwords between 6-10 characters, otherwise they see helpful information to indicate why the password was not valid
- When they submit their details, they are logged in and redirected to their posts page with a message saying they were successful signing up
- Usernames are unique and will not allow signup if the username is taken (error message not written)

When the user is signed in
- User can logout in the homepage
- User can logout in the posts page
- When the user logs out, they get redirected to the homepage

- After successful login, a flash message tells the user it was successful
- After successful signup, a flash message tells the user it was successful

POSTS
- Posts show the dates they were posted
- Posts show the newest posts First
- Posts show the username of the author

# AceBook

REQUIRED INSTRUCTIONS:

1. Fork this repository to `acebook-teamname` and customize


[You can find the engineering project outline here.](https://github.com/makersacademy/course/tree/master/engineering_projects/rails)

2. The card wall is here: https://trello.com/b/J0a1ymtY/cryptaur

## How to contribute to this project
See [CONTRIBUTING.md](CONTRIBUTING.md)

## Quickstart

First, clone this repository. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
```
