class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :nama_pelanggan
      t.string :alamat
      t.string :daerah

      t.timestamps
    end
  end
end
