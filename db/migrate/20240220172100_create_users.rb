class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.date :birthdate
      t.string :linkedin_url
      t.string :professional_title
      t.text :professional_experience
      t.text :education
      t.string :company_name
      t.string :company_website
      t.text :about
      t.integer :user_type, default: 0

      t.timestamps
    end
  end
end
