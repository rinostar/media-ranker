class ChangeColumnTypeWorks < ActiveRecord::Migration[5.2]
  def change
    remove_column :works, :publication_year
    add_column :works, :publication_year, :string
  end
end
