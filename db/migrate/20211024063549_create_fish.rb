class CreateFish < ActiveRecord::Migration[6.0]
  def change
    create_table :fish do |t|
      t.string     :time_zone, null: false
      t.string     :appearance_place, null: false
      t.text       :image, null: false
      t.timestamps
    end
  end
end
