class CreatePassages < ActiveRecord::Migration[5.1]
  def change
    create_table :passages do |t|
      t.string :header
      t.string :introduction
      t.array :text

      t.timestamps
    end
  end
end
