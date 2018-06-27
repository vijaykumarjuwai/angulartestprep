class CreatePassages < ActiveRecord::Migration[5.1]
  def change
    create_table :passages do |t|
    	t.string :name
    	t.belongs_to :section, foreign_key: true

    	t.timestamps
    end
  end
end
