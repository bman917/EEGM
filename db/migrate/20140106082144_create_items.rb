class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :supplier, index: true
      t.string :name

      t.timestamps
    end
  end
end
