class ChangeCopyrightToPublication < ActiveRecord::Migration[5.1]
  def up
    remove_column :books, :copyright
    add_column :books, :publication, :string
  end

  def down
    remove_column :books, :publication
    add_column :books, :copyright, :string
  end
end
