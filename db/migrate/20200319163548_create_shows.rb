class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.float :duration
      t.string :timing
      t.string :name

      t.timestamps
    end
  end
end
