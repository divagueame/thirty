class DaysController < ApplicationController
    before_action :set_day, only: [:show, :edit, :update, :destroy]

    def index
      @days = Day.all
    end
  
    def show
    end
  
    def new
      @day = Day.new
    end
  
    def create
      @day = Day.new(day_params)
  
      if @day.save
        redirect_to days_path, notice: "Day was successfully created."
      else
        render :new
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
      redirect_to days_path, notice: "day was successfully destroyed."
    end
  
    private
  
    def set_day
      @day = Day.find(params[:id])
    end
  
    def day_params
      params.require(:day).permit(:done)
    end

end
