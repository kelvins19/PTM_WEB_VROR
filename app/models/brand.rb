class Brand < ApplicationRecord
    def self.search(params)
        brands = Brand.order('id')
        brands = Brand.where("nama_merk like ?", "%#{params[:search].upcase}%") if params[:search]
        brands
    end
end
