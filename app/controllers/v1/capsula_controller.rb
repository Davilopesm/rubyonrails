class V1::CapsulaController < ApplicationController

	def show
		render json: repo.find(params[:id])
	end

  def create
    if ::UseCases::Capsula::CreateCapsula.create_capsula(capsula_params)
      render json: { message: 'Criado com sucesso', dados: capsula_params }
    else
      head(:unprocessable_entity)
    end
	end

	def update
		if ::UseCases::Capsula::UpdateCapsula.update_capsula(capsula_params)
			render json: {message: 'Alterado com sucesso!', dados: capsula_params}
		else
			head(:unprocessable_entity)
		end    
	end

	def destroy
		if ::UseCases::Capsula::DeleteCapsula.delete_capsula(capsula_params)
			render json: { message: 'Deletado com sucesso!' }
		else
			head(:unprocessable_entity)
		end
	end
	

	private
		def capsula_params
			params.require(:name)
			params.require(:instrucoes_preparo)
			params.require(:tempo_preparo)
			params.permit(:id, :name, :instrucoes_preparo, :tempo_preparo, :tipo_id)
    end

    def repo
      @repo ||= CapsulaRepository.new
    end
end
