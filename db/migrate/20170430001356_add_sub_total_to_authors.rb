class AddSubTotalToAuthors < ActiveRecord::Migration[5.0]
  def change
    add_column :authors, :sub_title, :string
  end
end
