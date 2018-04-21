class CreateCauses < ActiveRecord::Migration[5.1]
  def change
    create_table :causes do |t|
      t.string :name
      t.text :description
    end
  end
end
