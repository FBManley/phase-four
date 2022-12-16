class UsersController < ApplicationController
    # has_secure_password goes in model // must have bcrypt gem installed
    # Rails will use the bcrypt gem to hash and salt all passwords on the User model.
    # The has_secure_password Links to an external site.method also provides two new instance methods on your User model: password and password_confirmation. These methods don't correspond to database columns! Instead, to make these methods work, your users table must have a password_digest column:
#   create_table :users do |t|
#   t.string :username
#   t.string :password_digest
#   t.timestamps
end
end
