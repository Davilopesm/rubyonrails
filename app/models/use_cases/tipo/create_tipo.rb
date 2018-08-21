module UseCases
  module Tipo
    class CreateTipo
        def self.create_tipo(tipo_params)
          self.new(tipo_params).call
        end

        def call
          @repository.create(@tipo_params)  
        end

        def initialize(tipo_params, repository = TipoRepository.new)
          @tipo_params = tipo_params
          @repository = repository
        end

    end
  end
end

