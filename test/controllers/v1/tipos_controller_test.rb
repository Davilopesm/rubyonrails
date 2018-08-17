# require 'test_helper'

# module V1
#   class TiposControllerTest < ActionDispatch::IntegrationTest
#     test 'Mostrar todos os tipos' do
#       tipo_params = {
#         name: 'Espresso'
#       }
      
#       get( 
#         v1_tipos_path,
#         params: {
#           id: 1
#         }
#       )
#       #assert_response :success

#       tipo = JSON.parse(@response.body)['data']
#       assert tipo['name'] == tipo_params[:name]
    
#     end  
    
    
#     test "the truth" do
#       assert true
#     end
#   end
# end