class CreatePackages < ActiveRecord::Migration[7.2]
  def change
    create_table :packages do |t|
      t.string :name
      t.text :description
      t.string :metadata

      t.timestamps
    end
  end
end
