class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :name
      t.string :title
      t.integer :price

      t.timestamps
    end
  end
end
