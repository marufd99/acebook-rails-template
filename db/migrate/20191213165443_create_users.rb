class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      # t.primary_key :id
      t.string :name
      t.string :username
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end

# t.timestamps is a special command that creates two "magic columns"
# called created_at and updated_at, which are timestamps that
# automatically record when a given user is created and updated.
# Table "users"
# ------------+-----------------------------
# id         | bigint                      |
# name       | character varying           |
# username   | character varying           |
# email      | character varying           |
# password   | character varying           |
# created_at | timestamp without time zone |
# updated_at | timestamp without time zone |
