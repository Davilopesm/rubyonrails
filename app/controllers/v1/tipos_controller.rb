class V1::TiposController < ApplicationController
  def index
    @tipos = Tipo.all
    render json: @tipos
  end

  def create
    @tipo = Tipo.new(tipo_params)

    @tipo.save
    render json: @tipo
  end

  def show
    @tipo = Tipo.find(params[:id])
    render json: @tipo
  end

  def update
    @tipo = Tipo.find(params[:id])
    if @tipo.update_attributes(tipo_params)
      render json: {message: 'Alterado com sucesso!', dados: @tipo}
    else
      head(:unprocessable_entity)
    end    
  end

  def destroy
    @tipo = Tipo.find(params[:id])
    if @tipo.destroy
      render json: { message: 'Deletado com sucesso!'}
    else
      head(:unprocessable_entity)
    end
  end

  

  private
    def tipo_params
      params.require(:name)
      params.permit(:name)
    end
  
end
