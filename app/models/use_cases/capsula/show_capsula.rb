module UseCases
  module Capsula
    class ShowCapsula
        def self.show_capsula(id)
          self.new(id).call
        end

        def call
          @repository.find(@id)  
        end

        def initialize(id, repository = CapsulaRepository.new)
          @id= id
          @repository = repository
        end

    end
  end
end

