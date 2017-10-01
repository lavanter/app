class CursosController < ApplicationController
  def index
    @institutos = Instituto.all
  end

  def destroy
    curso = Curso.find(params[:id])
    curso.destroy
    redirect_to '/cursos'
  end

  def new
    @institutos = Instituto.all
    @curso = Curso.new
  end

  def create
    p = params.require(:curso).permit(:nome, :sigla, :ano, :instituto_id)
    curso = Curso.new(p)
    curso.save
    redirect_to curso
  end

  def update
    p = params.require(:curso).permit(:nome, :sigla, :ano, :instituto_id)
    curso = Curso.find(params[:id])
    curso.update(p)
    redirect_to curso
  end

  def edit
    @institutos = Instituto.all
    @curso = Curso.find(params[:id])
  end

  def show
    @curso = Curso.find(params[:id])
  end
end
