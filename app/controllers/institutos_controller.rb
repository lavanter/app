class InstitutosController < ApplicationController
  def index
    @institutos = Instituto.all
  end

  def new
    @instituto = Instituto.new
  end

  def create
    @instituto = Instituto.new(instituto_params)
    @instituto.save
    redirect_to @instituto
  end

  def destroy
    @instituto = Instituto.find(params[:id])
    @instituto.destroy
    redirect_to "/institutos"
  end

  def edit
    @instituto = Instituto.find(params[:id])
  end

  def update
    @instituto = Instituto.find(params[:id])
    @instituto.update(instituto_params)
    redirect_to @instituto
  end

  def show
    @instituto = Instituto.find(params[:id])
  end

  private
  def instituto_params
    return params.require(:instituto).permit(:nome, :sigla, :descricao)
  end
end
