class V1::CapsulasController < ApplicationController

  def show
   render json: repo.find(capsulas_params[:id])
  end
  
  def capsulas_params
    params.permit(:id, :name, :instrucoes_preparo, :tempo_preparo, :tipo_id)
  end

  def repo
    @repo ||= CapsulasRepository.new
  end
end
