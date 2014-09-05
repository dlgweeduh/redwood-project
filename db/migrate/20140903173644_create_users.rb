# the migration itself consists of a change method that determines the change to be made to the database. change uses a Rails method called create_table to create a table in the database for storing users. The create_table method accepts a block with one block variable, in this case called t (for “table”). Inside the block, the create_table method uses the t object to create name and email columns in the database, both of type string. Here the table name is plural (users) even though the model name is singular (User), which reflects a linguistic convention followed by Rails: a model represents a single user, whereas a database table consists of many users. The final line in the block, t.timestamps, is a special command that creates two magic columns called created_at and updated_at, which are timestamps that automatically record when a given user is created and updated.
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end

# bundle exec rake db:rollback Under the hood, this command executes the drop_table command to remove the users table from the database. The reason this works is that the change method knows that drop_table is the inverse of create_table, which means that the rollback migration can be easily inferred. In the case of an irreversible migration, such as one to remove a database column, it is necessary to define separate up and down methods in place of the single change method. Read about migrations in the Rails Guides for more information.