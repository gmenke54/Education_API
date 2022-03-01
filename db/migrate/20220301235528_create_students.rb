class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :f_name
      t.string :l_name
      t.string :initial
      t.string :prefix
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :education
      t.string :income

      t.timestamps
    end
  end
end
