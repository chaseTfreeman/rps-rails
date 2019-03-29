class RequestController < ActionController::Base
  respond_to :json

  def curb_throw
    response = HTTParty.get('https://5eddt4q9dk.execute-api.us-east-1.amazonaws.com/rps-stage/throw')
    downcased_response = response["body"].gsub('"','').downcase
    puts params[:player_throw]
    puts downcased_response
    # render json: response
  end

end
