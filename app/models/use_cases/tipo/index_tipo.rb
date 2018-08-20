module UseCases
  module Tipo
    class IndexTipo
        def self.index_tipo()
          self.new(repository = TipoRepository.new).call
        end

        def call
          @repository.all 
        end

        def initialize(repository)
          @repository = repository
        end

    end
  end
end

