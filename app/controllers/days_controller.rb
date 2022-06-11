class DaysController < ApplicationController
    before_action :set_day, only: [:show, :edit, :update, :destroy]

    def index
      @days = Day.ordered
      @day = Day.new
    end
  
    def show
      
    end
  
    def new
      @day = Day.new
    end
  
    def create
      @day = Day.new(day_params)
      if @day.save
        respond_to do |format|
          format.html {
            redirect_to days_path, notice: "Day was successfully created."
            format.turbo_stream
          }
        end
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    def edit
    end
  
    def update
      if @day.update(day_params)
        redirect_to days_path, notice: "day was successfully updated."
      else
        render :edit
      end
    end
  
    def destroy
      @day.destroy
      respond_to do |format|
        format.html {redirect_to days_path, notice: "day was successfully destroyed."}
        format.turbo_stream
      end
      
    end
  
    private
  
    def set_day
      @day = Day.find(params[:id])
    end
  
    def day_params
      params.require(:day).permit(:done)
    end

end
