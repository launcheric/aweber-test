class AddUserIdCauses < ActiveRecord::Migration[5.1]
  def change
    add_column :causes, :user_id, :integer
  end
end
