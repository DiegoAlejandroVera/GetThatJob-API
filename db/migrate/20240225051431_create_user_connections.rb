class CreateUserConnections < ActiveRecord::Migration[7.0]
  def change
    create_table :user_connections do |t|
      t.bigint :follower_id
      t.bigint :following_id
      t.boolean :is_following, default: false # Add is_following with default false
      t.timestamps
    end

    add_foreign_key :user_connections, :users, column: :follower_id
    add_foreign_key :user_connections, :users, column: :following_id

    # Optionally, add a unique constraint to ensure each user can follow another user only once
    add_index :user_connections, [:follower_id, :following_id], unique: true
  end
end
