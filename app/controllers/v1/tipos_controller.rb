class V1::TiposController < ApplicationController
  before_action :set_tipo, only: [:show, :update, :destroy]
  

  def index
    render json: ::UseCases::Tipo::IndexTipo.index_tipo
  end

  def create
    if ::UseCases::Tipo::CreateTipo.create_tipo(tipo_params)
      render json: {message: 'User criado', dados: tipo_params}
    else
      head(:unprocessable_entity)
    end
  end

  def show
    render json: ::UseCases::Tipo::ShowTipo.show_tipo(tipo_params)
  end

  def update
    if ::UseCases::Tipo::UpdateTipo.update_tipo(tipo_params)
      render json: {message: 'Alterado com sucesso!', dados: tipo_params}
    else
      head(:unprocessable_entity)
    end
  end

  def destroy
    if ::UseCases::Tipo::DeleteTipo.delete_tipo(tipo_params)
      render json: { message: 'Deletado com sucesso!'}
    else
      head(:unprocessable_entity)
    end
  end

  

  private
    def set_tipo
      @tipo = repo.find(params[:id])
    end

    def tipo_params
      params.require(:id)
      params.permit(:id, :name)
    end

    def repo
      @repo ||= TipoRepository.new
    end

end
