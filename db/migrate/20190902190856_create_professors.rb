class CreateProfessors < ActiveRecord::Migration[5.2]
  def change
    create_table :professors do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :office, null: false
      t.string :title, null: false
      t.string :phone
      t.string :education
      
      t.timestamps
    end
  end
end
