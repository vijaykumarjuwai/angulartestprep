class CreateTests < ActiveRecord::Migration[5.1]
  def change
    create_table :tests do |t|
      t.string :category
      t.string :name

      t.timestamp
    end
  end
end
