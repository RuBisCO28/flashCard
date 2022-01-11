class CreateContents < ActiveRecord::Migration[7.0]
  def change
    create_table :contents do |t|

      t.integer :section
      t.string :question
      t.string :answer
      t.timestamps
    end
  end
end
