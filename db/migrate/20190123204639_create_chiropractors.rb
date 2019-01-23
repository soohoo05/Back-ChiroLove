class CreateChiropractor < ActiveRecord::Migration[5.2]
  def change
    create_table :chiropractor do |t|
      t.string :name
      t.string :address
      t.string :state
      t.string :picture
      t.string :link

      t.timestamps
    end
  end
end
