module UseCases
  module Tipo
    class UpdateTipo 
        def self.update_tipo(tipo_params)
          self.new(tipo_params, repository = TipoRepository.new).call
        end

        def call
          @repository.update(@tipo_params)  
        end

        def initialize(tipo_params, repository)
          @tipo_params = tipo_params
          @repository = repository
        end
    end

    
  end
end

