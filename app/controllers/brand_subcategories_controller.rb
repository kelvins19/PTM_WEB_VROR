class BrandSubcategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_brand_subcategory, only: %i[ show edit update destroy ]
  before_action :can_access_page

  # GET /brand_subcategories or /brand_subcategories.json
  def index
    @brand_subcategories = BrandSubcategory.search(params).paginate(page: params[:page], per_page: 30)
  end

  # GET /brand_subcategories/1 or /brand_subcategories/1.json
  def show
  end

  # GET /brand_subcategories/new
  def new
    @brand_subcategory = BrandSubcategory.new
  end

  # GET /brand_subcategories/1/edit
  def edit
  end

  # POST /brand_subcategories or /brand_subcategories.json
  def create
    @brand_subcategory = BrandSubcategory.new(brand_subcategory_params)

    respond_to do |format|
      if @brand_subcategory.save
        format.html { redirect_to brand_subcategory_url(@brand_subcategory), notice: "Brand subcategory was successfully created." }
        format.json { render :show, status: :created, location: @brand_subcategory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @brand_subcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brand_subcategories/1 or /brand_subcategories/1.json
  def update
    respond_to do |format|
      if @brand_subcategory.update(brand_subcategory_params)
        format.html { redirect_to brand_subcategory_url(@brand_subcategory), notice: "Brand subcategory was successfully updated." }
        format.json { render :show, status: :ok, location: @brand_subcategory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @brand_subcategory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brand_subcategories/1 or /brand_subcategories/1.json
  def destroy
    @brand_subcategory.destroy

    respond_to do |format|
      format.html { redirect_to brand_subcategories_url, notice: "Brand subcategory was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand_subcategory
      @brand_subcategory = BrandSubcategory.find(params[:id])
    end

    def can_access_page
      redirect_back(fallback_location: root_path) and return unless current_user.role_id == 1
    end

    # Only allow a list of trusted parameters through.
    def brand_subcategory_params
      params.require(:brand_subcategory).permit(:nama_merk_subkategori)
    end
end
