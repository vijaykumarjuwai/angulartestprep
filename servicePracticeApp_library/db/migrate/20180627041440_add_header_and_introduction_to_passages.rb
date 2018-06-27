class AddHeaderAndIntroductionToPassages < ActiveRecord::Migration[5.1]
  def change
  	add_column :passages, :header, :string
  	add_column :passages, :introduction, :string
  end
end
