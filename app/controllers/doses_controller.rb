class DosesController < ApplicationController
# before_action :set_cocktail
    def new
        @dose = Dose.new
        @cocktail = Cocktail.find(params[:cocktail_id])
    end

    def create
        @dose = Dose.new(dose_params)
        @cocktail = Cocktail.find(params[:cocktail_id]) 
        @dose.cocktail = @cocktail
        if @dose.save
            redirect_to cocktail_path(@dose.cocktail)
        else
            render :new
        end
    end

    def destroy
        @dose = Dose.find(params[id])

        @dose.destroy
        redirect_to cocktail_path(@cocktail)
    end

    private

    # def before_action
    #     @cocktail = Cocktail.find(params[:cocktail_id])
    # end

    def dose_params
        params.require(:dose).permit(:description, :ingredient_id) #don't need cocktail id becasue we add from backend.
    end
end