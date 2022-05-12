class CreateFloweringSeasons < ActiveRecord::Migration[5.2]
  def change
    create_table :flowering_seasons do |t|
      t.string :season

      t.timestamps
    end
  end
end
