class CreateNicknames < ActiveRecord::Migration
  def change
    create_table :nicknames do |t|
      t.string :name
      t.string :super_hero
      t.string :generated_name
      t.timestamps null: false
    end
  end
end
