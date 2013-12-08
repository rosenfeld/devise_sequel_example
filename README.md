# Devise with Sequel example application

Read through the commits to understand how this application has been generated and
how Sequel has been later introduced to replace AR for the User model.

Unfortunately Devise assumes too many things instead of relying on `orm_adapter` API.

That forces us to use some Sequel plugins like `:dirty` (for helping with `email_changed?`
expected method from Devise when registering a new user through their common interface)
and `:validation_class_methods`.

You'll probably need to implement a few other methods for using some of the Devise modules.

Anyway, this may help you getting the basics working so that you can go forward from there.

If you want to remove the `active_record` gem dependency but want to keep using AR migrations
you may be interested in projects like
[standalone_migrations](https://github.com/thuss/standalone-migrations) or
[Active Record Migrations](https://github.com/rosenfeld/active_record_migrations).
