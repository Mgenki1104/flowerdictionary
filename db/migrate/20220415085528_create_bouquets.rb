class CreateBouquets < ActiveRecord::Migration[5.2]
  def change
    create_table :bouquets do |t|
      t.integer :flowering_season_id
      t.string :name
      t.string :image_id
      t.text :introduction
      t.string :flower_language
      t.integer :birth

      t.timestamps
    end
  end
end
