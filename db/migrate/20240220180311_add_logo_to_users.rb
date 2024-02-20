class AddLogoToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :logo, :string
  end
end
