class FavroitesController < ApplicationController
  before_action :set_favroite, only: [:show, :edit, :update, :destroy]

  # GET /favroites
  # GET /favroites.json
  def index
    @favroites = Favroite.all
  end

  # GET /favroites/1
  # GET /favroites/1.json
  def show
  end

  # GET /favroites/new
  def new
    @favroite = Favroite.new
  end

  # GET /favroites/1/edit
  def edit
  end

  # POST /favroites
  # POST /favroites.json
  def create
    @favroite = Favroite.new(favroite_params)

    respond_to do |format|
      if @favroite.save
        format.html { redirect_to @favroite, notice: 'Favroite was successfully created.' }
        format.json { render :show, status: :created, location: @favroite }
      else
        format.html { render :new }
        format.json { render json: @favroite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favroites/1
  # PATCH/PUT /favroites/1.json
  def update
    respond_to do |format|
      if @favroite.update(favroite_params)
        format.html { redirect_to @favroite, notice: 'Favroite was successfully updated.' }
        format.json { render :show, status: :ok, location: @favroite }
      else
        format.html { render :edit }
        format.json { render json: @favroite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favroites/1
  # DELETE /favroites/1.json
  def destroy
    @favroite.destroy
    respond_to do |format|
      format.html { redirect_to favroites_url, notice: 'Favroite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favroite
      @favroite = Favroite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def favroite_params
      params.require(:favroite).permit(:user_id, :show_id)
    end
end
