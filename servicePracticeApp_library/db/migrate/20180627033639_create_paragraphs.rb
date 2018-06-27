class CreateParagraphs < ActiveRecord::Migration[5.1]
  def change
    create_table :paragraphs do |t|
    	t.string :paragraph
    	t.belongs_to :passage, foreign_key: true 

    	t.timestamps
    end
  end
end
