class BrandCategory < ApplicationRecord
    def self.search(params)
        brand_categories = BrandCategory.order('id')
        brand_categories = BrandCategory.where("nama_merk_kategori like ?", "%#{params[:search].upcase}%") if params[:search]
        brand_categories
    end
end
