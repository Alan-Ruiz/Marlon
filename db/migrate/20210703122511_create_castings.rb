class CreateCastings < ActiveRecord::Migration[6.1]
  def change
    create_table :castings do |t|
      t.text :title
      t.text :content
      t.text :city
       t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
