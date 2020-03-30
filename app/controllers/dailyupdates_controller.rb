class DailyupdatesController < ApplicationController
  before_action :set_dailyupdate, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  # GET /dailyupdates
  # GET /dailyupdates.json
  def index
    @dailyupdate = Dailyupdate.last
  end

  # GET /dailyupdates/1/edit
  def edit
  end

  # PATCH/PUT /dailyupdates/1
  # PATCH/PUT /dailyupdates/1.json
  def update
    respond_to do |format|
      if @dailyupdate.update(dailyupdate_params)
        format.html { redirect_to dailyupdates_path, notice: 'Dailyupdate was successfully updated.' }
        format.json { render :show, status: :ok, location: @dailyupdate }
      else
        format.html { render :edit }
        format.json { render json: @dailyupdate.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dailyupdate
      @dailyupdate = Dailyupdate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dailyupdate_params
      params.require(:dailyupdate).permit(:description)
    end
end
