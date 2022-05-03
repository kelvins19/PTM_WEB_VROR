class Rak < ApplicationRecord

    def self.search(params)
        raks = Rak.order('id')
        raks = Rak.where("nama_rak like ?", "%#{params[:search].upcase}%") if params[:search]
        raks
    end
end
