class CreateQas < ActiveRecord::Migration[5.1]
  def change
    create_table :qas do |t|
      t.string :eng
      t.string :japa
      t.string :senten

      t.timestamps
    end
  end
end
