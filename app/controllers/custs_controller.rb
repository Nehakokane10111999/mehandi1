class CustsController < ApplicationController
  before_action :set_cust, only: %i[ show edit update destroy ]

  # GET /custs or /custs.json
  def index
    @custs = Cust.all
  end

  # GET /custs/1 or /custs/1.json
  def show
  end

  # GET /custs/new
  def new
    @cust = Cust.new
  end

  # GET /custs/1/edit
  def edit
  end

  # POST /custs or /custs.json
  def create
    @cust = Cust.new(cust_params)

    respond_to do |format|
      if @cust.save
        format.html { redirect_to @cust, notice: "Cust was successfully created." }
        format.json { render :show, status: :created, location: @cust }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cust.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custs/1 or /custs/1.json
  def update
    respond_to do |format|
      if @cust.update(cust_params)
        format.html { redirect_to @cust, notice: "Cust was successfully updated." }
        format.json { render :show, status: :ok, location: @cust }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cust.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custs/1 or /custs/1.json
  def destroy
    @cust.destroy
    respond_to do |format|
      format.html { redirect_to custs_url, notice: "Cust was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cust
      @cust = Cust.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cust_params
      params.require(:cust).permit(:name, :mobile, :email, :password, :password_confirmation, :address, :dob)
    end
end
