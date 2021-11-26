class CreateFilepics < ActiveRecord::Migration[6.0]
  def change
    create_table :filepics do |t|
      t.string :name
      t.string :picture
      t.string :geolocation
      t.string :devicetype

      t.timestamps
    end
  end
end
