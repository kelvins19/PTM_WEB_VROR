class BrandSubcategory < ApplicationRecord
    def self.search(params)
        brand_subcategories = BrandSubcategory.order('id')
        brand_subcategories = BrandSubcategory.where("nama_merk_subkategori like ?", "%#{params[:search].upcase}%") if params[:search]
        brand_subcategories
    end
end
