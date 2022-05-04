class CreateBrandCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :brand_categories do |t|
      t.string :nama_merk_kategori

      t.timestamps
    end
  end
end
