class CreateResults < ActiveRecord::Migration[7.1]
  def change
    create_table :results do |t|
      t.references :course
      t.references :student
      t.string :score

      t.timestamps
    end
  end
end
