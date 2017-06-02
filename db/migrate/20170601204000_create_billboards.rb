class CreateBillboards < ActiveRecord::Migration[5.1]
  def change
    create_table :billboards do |t|
      t.string :name, null: false
      # t.integer :number_of_songs

      t.timestamps
    end
  end
end
