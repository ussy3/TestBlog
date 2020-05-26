class CreateTiTles < ActiveRecord::Migration[5.0]
  def change
    create_table :ti_tles do |t|
      t.string :title
      t.string :message

      t.timestamps
    end
  end
end
