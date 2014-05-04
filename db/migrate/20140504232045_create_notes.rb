class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :latitude
      t.string :longitude
      t.string :details
      t.integer :user_id

      t.timestamps
    end
  end
end
