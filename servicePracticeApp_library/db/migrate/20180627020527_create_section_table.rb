class CreateSectionTable < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
    	t.string :section
    	t.belongs_to :test, foreign_key: true

    	t.timestamps
    end
  end
end
