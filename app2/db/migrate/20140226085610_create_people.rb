class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :address
      t.string :telephone
      t.belongs_to :group

      t.timestamps
    end
  end
end
