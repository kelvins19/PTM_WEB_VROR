class BrandCategoriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_brand_category, only: %i[ show edit update destroy ]
  before_action :can_access_page

  # GET /brand_categories or /brand_categories.json
  def index
    @brand_categories = BrandCategory.search(params).paginate(page: params[:page], per_page: 30)
  end

  # GET /brand_categories/1 or /brand_categories/1.json
  def show
  end

  # GET /brand_categories/new
  def new
    @brand_category = BrandCategory.new
  end

  # GET /brand_categories/1/edit
  def edit
  end

  # POST /brand_categories or /brand_categories.json
  def create
    @brand_category = BrandCategory.new(brand_category_params)

    respond_to do |format|
      if @brand_category.save
        format.html { redirect_to brand_category_url(@brand_category), notice: "Brand category was successfully created." }
        format.json { render :show, status: :created, location: @brand_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @brand_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brand_categories/1 or /brand_categories/1.json
  def update
    respond_to do |format|
      if @brand_category.update(brand_category_params)
        format.html { redirect_to brand_category_url(@brand_category), notice: "Brand category was successfully updated." }
        format.json { render :show, status: :ok, location: @brand_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @brand_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brand_categories/1 or /brand_categories/1.json
  def destroy
    @brand_category.destroy

    respond_to do |format|
      format.html { redirect_to brand_categories_url, notice: "Brand category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand_category
      @brand_category = BrandCategory.find(params[:id])
    end

    def can_access_page
      redirect_back(fallback_location: root_path) and return unless current_user.role_id == 1
    end

    # Only allow a list of trusted parameters through.
    def brand_category_params
      params.require(:brand_category).permit(:nama_merk_kategori)
    end
end
