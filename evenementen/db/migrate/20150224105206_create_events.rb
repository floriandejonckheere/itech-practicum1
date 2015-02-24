class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :text
      t.date :begin
      t.date :einde

      t.timestamps null: false
    end
  end
end