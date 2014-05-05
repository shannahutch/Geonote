class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :latitude
      t.string :longitude
      t.string :text

      t.timestamps
    end
  end
end
