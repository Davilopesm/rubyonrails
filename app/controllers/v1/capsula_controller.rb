class V1::CapsulaController < ApplicationController

  def show
    capsula = Capsula.where(id: params[:id])
    render json: capsula 
  end

  def create
    capsula = Capsula.new(capsula_params)
    capsula.save
    render json: capsula
  end

  def update
    capsula = Capsula.find(params[:id])
    if capsula.update_attributes(tipo_params)
      render json: {message: 'Alterado com sucesso!', dados: capsula}
    else
      head(:unprocessable_entity)
    end    
  end

  def destroy
    capsula = Capsula.find(params[:id])
    if capsula.destroy
      render json: { message: 'Deletado com sucesso!'}
    else
      head(:unprocessable_entity)
    end
  end
  

  private
    def capsula_params
      params.require(:name)
      params.require(:instrucoes_preparo)
      params.require(:tempo_preparo)
      params.require(:tipo_id)
      params.permit(:name, :instrucoes_preparo, :tempo_preparo, :tipo_id)
    end
end
