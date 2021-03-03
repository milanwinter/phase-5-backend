class CreateResorts < ActiveRecord::Migration[6.0]
  def change
    create_table :resorts do |t|
      t.string :name
      t.string :website
      t.string :state
      t.string :logo
      t.string :map
      t.string :api_id

      t.timestamps
    end
  end
end
