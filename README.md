# README

# Set up devise-jwt

devise-jwt will handle token dispatch and authentication, which doesn’t come with devise out of the box.

JWTs need to be created with a secret key that is private. It shouldn’t be revealed to the public. When we receive a JWT from the client, we can verify it with that secret key stored on the server.

We can generate a secret by typing the following in the terminal:

    $ bundle exec rails secret

We will then add it to the encrypted credentials file so it won’t be exposed:

# VSCode

    $ EDITOR='code --wait' rails credentials:edit

Then we add a new key: value in the encrypted .yml file.

    #Other secrets...

    #Used as the base secret for Devise-JWT

    $ devise_jwt_secret_key: (copy and paste the generated secret here)

TODO:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...
