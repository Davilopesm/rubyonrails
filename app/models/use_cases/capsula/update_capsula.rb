module UseCases
  module Capsula
    class UpdateCapsula 
        def self.update_capsula(capsula_params)
          self.new(capsula_params).call
        end

        def call
          @repository.update(@capsula_params)  
        end

        def initialize(capsula_params, repository = CapsulaRepository.new)
          @capsula_params = capsula_params
          @repository = repository
        end
    end
  end
end

