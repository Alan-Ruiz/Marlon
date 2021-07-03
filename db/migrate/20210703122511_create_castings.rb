class CreateCastings < ActiveRecord::Migration[6.1]
  def change
    create_table :castings do |t|
      t.text :title
      t.text :content
      t.text :city
      t.user :resouces

      t.timestamps
    end
  end
end
