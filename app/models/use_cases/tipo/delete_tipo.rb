module UseCases
  module Tipo
    class DeleteTipo
        def self.delete_tipo(tipo_params)
          self.new(tipo_params).call
        end

        def call
          @repository.destroy(@tipo_params)  
        end

        def initialize(tipo_params, repository = TipoRepository.new)
          @tipo_params = tipo_params
          @repository = repository
        end

    end
  end
end

