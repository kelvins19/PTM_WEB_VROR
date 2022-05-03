class Customer < ApplicationRecord
    def self.search(params)
        customers = Customer.order('id')
        customers = Customer.where("nama_pelanggan like ?", "%#{params[:search].upcase}%") if params[:search]
        customers
    end
end
