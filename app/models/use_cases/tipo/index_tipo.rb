module UseCases
  module Tipo
    class IndexTipo
        def self.index_tipo()
          self.new().call
        end

        def call
          @repository.all 
        end

        def initialize(repository = TipoRepository.new)
          @repository = repository
        end

    end
  end
end

