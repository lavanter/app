class MateriasController < ApplicationController
  def new
    @institutos = Instituto.all
    @materia = Materia.new
  end

  def create
    p = params.require(:materia).permit(:nome, :sigla, :periodo, :creditos, :instituto_id)
    materia = Materia.new(p)
    materia.save
    redirect_to materia
  end

  def update
    p = params.require(:materia).permit(:nome, :sigla, :periodo, :creditos, :instituto_id)
    materia = Materia.find(params[:id])
    materia.update(p)
    redirect_to materia
  end

  def destroy
    materia = Materia.find(params[:id])
    materia.destroy
    redirect_to '/materias'
  end

  def edit
    @institutos = Instituto.all
    @materia = Materia.find(params[:id])
  end

  def show
    @materia = Materia.find(params[:id])
  end

  def index
    @materias = Materia.all
  end
end
