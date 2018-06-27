class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
    	t.string :question
    	t.belongs_to :passage, foreign_key: true 
    	
      t.timestamps
    end
  end
end
