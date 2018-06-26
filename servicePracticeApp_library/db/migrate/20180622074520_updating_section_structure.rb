class UpdatingSectionStructure < ActiveRecord::Migration[5.1]
  def change
  	add_column :sections, :test, :string
  end
end
