class CreateInsects < ActiveRecord::Migration[6.0]
  def change
    create_table :insects do |t|
      t.string     :season, null: false
      t.string     :time_zone, null: false
      t.string     :appearance_place, null: false
      t.text       :image, null: false
      t.timestamps 
    end
  end
end
