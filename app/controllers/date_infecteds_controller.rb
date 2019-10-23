class DateInfectedsController < ApplicationController
  before_action :set_date_infected, only: [:show, :edit, :update, :destroy]

  # GET /date_infecteds
  # GET /date_infecteds.json
  def index
    @date_infecteds = DateInfected.all
  end

  # GET /date_infecteds/1
  # GET /date_infecteds/1.json
  def show
  end

  # GET /date_infecteds/new
  def new
    @date_infected = DateInfected.new
  end

  # GET /date_infecteds/1/edit
  def edit
  end

  # POST /date_infecteds
  # POST /date_infecteds.json
  def create
    @date_infected = DateInfected.new(date_infected_params)

    respond_to do |format|
      if @date_infected.save
        format.html { redirect_to @date_infected, notice: 'Date infected was successfully created.' }
        format.json { render :show, status: :created, location: @date_infected }
      else
        format.html { render :new }
        format.json { render json: @date_infected.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /date_infecteds/1
  # PATCH/PUT /date_infecteds/1.json
  def update
    respond_to do |format|
      if @date_infected.update(date_infected_params)
        format.html { redirect_to @date_infected, notice: 'Date infected was successfully updated.' }
        format.json { render :show, status: :ok, location: @date_infected }
      else
        format.html { render :edit }
        format.json { render json: @date_infected.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /date_infecteds/1
  # DELETE /date_infecteds/1.json
  def destroy
    @date_infected.destroy
    respond_to do |format|
      format.html { redirect_to date_infecteds_url, notice: 'Date infected was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_date_infected
      @date_infected = DateInfected.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def date_infected_params
      params.require(:date_infected).permit(:date_infected, :animal_id, :disease_id)
    end
end
