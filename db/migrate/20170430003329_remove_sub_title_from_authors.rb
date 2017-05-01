class RemoveSubTitleFromAuthors < ActiveRecord::Migration[5.0]
  def change
    remove_column :authors, :sub_title, :string
  end
end
