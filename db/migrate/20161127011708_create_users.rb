class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :sno
      t.string :college
      t.string :year
      t.string :course

      t.timestamps
    end
  end
end
