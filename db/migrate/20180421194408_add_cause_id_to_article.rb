class AddCauseIdToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :cause_id, :integer
  end
end
