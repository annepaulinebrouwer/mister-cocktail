class RemoveColumnofCocktails < ActiveRecord::Migration
  def change
    remove_column :cocktails, :description, :string
  end
end
