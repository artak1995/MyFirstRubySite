class CreateField < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :msg
    end
  end
end
