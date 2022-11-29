class RedbusesController < ApplicationController
  before_action :set_redbus, only: %i[ show edit update destroy ]

  # GET /redbuses or /redbuses.json
  def index
    @redbuses = Redbus.all
  end

  # GET /redbuses/1 or /redbuses/1.json
  def show
  end

  # GET /redbuses/new
  def new
    @redbus = Redbus.new
  end

  # GET /redbuses/1/edit
  def edit
  end

  # POST /redbuses or /redbuses.json
  def create
    @redbus = Redbus.new(redbus_params)

    respond_to do |format|
      if @redbus.save
        format.html { redirect_to redbus_url(@redbus), notice: "Redbus was successfully created." }
        format.json { render :show, status: :created, location: @redbus }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @redbus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /redbuses/1 or /redbuses/1.json
  def update
    respond_to do |format|
      if @redbus.update(redbus_params)
        format.html { redirect_to redbus_url(@redbus), notice: "Redbus was successfully updated." }
        format.json { render :show, status: :ok, location: @redbus }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @redbus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /redbuses/1 or /redbuses/1.json
  def destroy
    @redbus.destroy

    respond_to do |format|
      format.html { redirect_to redbuses_url, notice: "Redbus was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_redbus
      @redbus = Redbus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def redbus_params
      params.require(:redbus).permit(:name, :account, :offers)
    end
end
