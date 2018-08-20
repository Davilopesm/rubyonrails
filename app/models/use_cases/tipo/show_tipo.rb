module UseCases
  module Tipo
    class ShowTipo
        def self.show_tipo(tipo_params)
          self.new(tipo_params, repository = TipoRepository.new).call
        end

        def call
          @repository.find(@tipo_params[:id])  
        end

        def initialize(tipo_params, repository)
          @tipo_params = tipo_params
          @repository = repository
        end

    end
  end
end

