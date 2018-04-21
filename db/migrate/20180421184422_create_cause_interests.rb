class CreateCauseInterests < ActiveRecord::Migration[5.1]
  def change
    create_table :cause_interests do |t|
      t.integer :user_id, null: false
      t.integer :cause_id, null: false

    end
  end
end
