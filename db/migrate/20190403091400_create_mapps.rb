class CreateMapps < ActiveRecord::Migration[5.2]
  def change
    create_table :mapps do |t|
      t.string :name
      t.integer :number

      t.timestamps
    end
  end
end
