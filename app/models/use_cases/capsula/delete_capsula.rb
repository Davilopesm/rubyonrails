module UseCases
  module Capsula
    class DeleteCapsula
        def self.delete_capsula(capsula_params)
          self.new(capsula_params, repository = CapsulaRepository.new).call
        end

        def call
          @repository.destroy(@capsula_params)  
        end

        def initialize(capsula_params, repository)
          @capsula_params = capsula_params
          @repository = repository
        end

    end
  end
end

