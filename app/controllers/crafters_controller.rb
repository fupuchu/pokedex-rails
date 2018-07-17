class CraftersController < ApplicationController

  http_basic_authenticate_with name: "admin", password: "admin", except: [:index, :show]

  def index
    @crafter = Crafter.all
  end

  def show
    @crafter = Crafter.find(params[:id])
  end

  def new
  end

  def edit
    @crafter = Crafter.find(params[:id])
  end

  def create
    @crafter = Crafter.new(crafter_params)

    @crafter.save
    redirect_to @crafter
  end

  def update
    @crafter = Crafter.find(params[:id])

    @crafter.update(crafter_params)
    redirect_to @crafter
  end

  def destroy
    @crafter = Crafter.find(params[:id])
    @crafter.destroy

    redirect_to crafters_path
  end

  private
    def crafter_params
        params.require(:crafter).permit(:crafter_class , :short_name , :img)
    end
end