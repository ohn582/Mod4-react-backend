class CreateMarkets < ActiveRecord::Migration[6.0]
  def change
    create_table :markets do |t|
      t.string :name
      t.string :info
      t.string :fruits

      t.timestamps
    end
  end
end
