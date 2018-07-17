class GearsController < ApplicationController

    http_basic_authenticate_with name: "admin", password: "admin", only: :destroy

    def create
        @crafter = Crafter.find(params[:crafter_id])
        @gear = @crafter.gears.create(gear_params)
        redirect_to crafter_path(@crafter)
    end

    def destroy
        @crafter = Crafter.find(params[:crafter_id])
        @gear = @crafter.gears.find(params[:id])
        @gear.destroy

        redirect_to crafter_path(@crafter)
    end

    private
        def gear_params
            params.require(:gear).permit(:gear_name , :gear_rarity)
        end
end
