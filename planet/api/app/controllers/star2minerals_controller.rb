class Star2mineralsController < ApplicationController
  before_action :set_star2mineral, only: [:show, :edit, :update, :destroy]

  # GET /star2minerals
  # GET /star2minerals.json
  def index
    @star2minerals = Star2mineral.all
  end

  # GET /star2minerals/1
  # GET /star2minerals/1.json
  def show
  end

  # GET /star2minerals/new
  def new
    @star2mineral = Star2mineral.new
  end

  # GET /star2minerals/1/edit
  def edit
  end

  # POST /star2minerals
  # POST /star2minerals.json
  def create
    @star2mineral = Star2mineral.new(star2mineral_params)

    respond_to do |format|
      if @star2mineral.save
        format.html { redirect_to @star2mineral, notice: 'Star2mineral was successfully created.' }
        format.json { render :show, status: :created, location: @star2mineral }
      else
        format.html { render :new }
        format.json { render json: @star2mineral.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /star2minerals/1
  # PATCH/PUT /star2minerals/1.json
  def update
    respond_to do |format|
      if @star2mineral.update(star2mineral_params)
        format.html { redirect_to @star2mineral, notice: 'Star2mineral was successfully updated.' }
        format.json { render :show, status: :ok, location: @star2mineral }
      else
        format.html { render :edit }
        format.json { render json: @star2mineral.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /star2minerals/1
  # DELETE /star2minerals/1.json
  def destroy
    @star2mineral.destroy
    respond_to do |format|
      format.html { redirect_to star2minerals_url, notice: 'Star2mineral was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_star2mineral
      @star2mineral = Star2mineral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def star2mineral_params
      params.require(:star2mineral).permit(:star_id, :mineral_id, :loc_id, :max_qty)
    end
end
