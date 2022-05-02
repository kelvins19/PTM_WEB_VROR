class RaksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_rak, only: %i[ show edit update destroy ]
  before_action :can_modify_raks

  # GET /raks or /raks.json
  def index
    # @raks = Rak.all
    @raks = Rak.paginate(page: params[:page], per_page: 30)
  end

  # GET /raks/1 or /raks/1.json
  def show
  end

  # GET /raks/new
  def new
    @rak = Rak.new
  end

  # GET /raks/1/edit
  def edit
  end

  # POST /raks or /raks.json
  def create
    @rak = Rak.new(rak_params)

    respond_to do |format|
      if @rak.save
        format.html { redirect_to rak_url(@rak), notice: "Rak was successfully created." }
        format.json { render :show, status: :created, location: @rak }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rak.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raks/1 or /raks/1.json
  def update
    respond_to do |format|
      if @rak.update(rak_params)
        format.html { redirect_to rak_url(@rak), notice: "Rak was successfully updated." }
        format.json { render :show, status: :ok, location: @rak }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rak.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raks/1 or /raks/1.json
  def destroy
    @rak.destroy

    respond_to do |format|
      format.html { redirect_to raks_url, notice: "Rak was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rak
      @rak = Rak.find(params[:id])
    end

    def can_modify_raks
      redirect_back(fallback_location: root_path) and return unless current_user.role_id == 1
    end

    # Only allow a list of trusted parameters through.
    def rak_params
      params.require(:rak).permit(:nama_rak, :string)
    end
end
