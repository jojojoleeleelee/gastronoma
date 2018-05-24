class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :user_id
      t.string :time
      t.string :pic_url
      t.text :description

      t.timestamps
    end
  end
end
