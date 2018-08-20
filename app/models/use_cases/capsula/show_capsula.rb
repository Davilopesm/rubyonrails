module UseCases
  module Capsula
    class ShowCapsula
        def self.show_capsula(id)
          self.new(id, repository = CapsulaRepository.new).call
        end

        def call
          @repository.find(@id)  
        end

        def initialize(id, repository)
          @id= id
          @repository = repository
        end

    end
  end
end

