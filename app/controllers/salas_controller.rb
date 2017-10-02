class SalasController < ApplicationController
  before_action :get_salas,  only: [:index]
  before_action :find_sala, only: [:show, :edit, :update, :destroy]
  before_action :get_institutos, only: [:new, :edit, :index]
  
  def index
  end

  def show
  end

  def create
    sala = Sala.new(get_params)
    sala.save
    redirect_to sala
  end

  def new
    @salas = Sala.new
  end

  def edit
    @sala = find_sala
  end

  def update
    sala = find_sala
    sala.update(get_params)
    redirect_to sala
  end

  def destroy
    sala = find_sala
    sala.destroy
    redirect_to '/salas'
  end

  private
    def get_params
      return params.require(:sala).permit(:nome, :maximo_alunos, :instituto_id)
    end

    def get_salas
      @salas = Sala.all
    end

    def find_sala
      @sala = Sala.find(params[:id])
    end

    def get_institutos
      @institutos = Instituto.all
    end
end
