class CreateTops < ActiveRecord::Migration[5.0]
  def change
    create_table :tops do |t|
      t.string :title
      t.string :mess

      t.timestamps
    end
  end
end
