class CreateBrandSubcategories < ActiveRecord::Migration[7.0]
  def change
    create_table :brand_subcategories do |t|
      t.string :nama_merk_subkategori

      t.timestamps
    end
  end
end
