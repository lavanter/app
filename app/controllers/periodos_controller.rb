class PeriodosController < ApplicationController
  def show
    @periodo = Periodo.find(params[:id])
  end

  def index
    @periodos = Periodo.all
  end

  def update
    d = params.required(:periodo).permit(:sigla,:nome)
    periodo = Periodo.find(params[:id])
    periodo.update(d)
    redirect_to periodo
  end

  def create
    dados = params.required(:periodo).permit(:sigla,:nome)
    periodo = Periodo.new(diados)
    periodo.save
    redirect_to periodo
  end

  def edit
    @periodo = Periodo.find(params[:id])
  end

  def destroy
    periodo = Periodo.find(params[:id])
    periodo.destroy
    redirect_to '/periodos'
  end

  def new
    @periodo = Periodo.new
  end

end
