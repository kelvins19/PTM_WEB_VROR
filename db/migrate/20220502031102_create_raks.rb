class CreateRaks < ActiveRecord::Migration[7.0]
  def change
    create_table :raks do |t|
      t.string :nama_rak, default: "NULL"

      t.timestamps
    end
  end
end
