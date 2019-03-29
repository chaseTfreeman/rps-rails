class RequestController < ActionController::Base
  respond_to :json

  def curb_throw
    response = HTTParty.get('https://5eddt4q9dk.execute-api.us-east-1.amazonaws.com/rps-stage/throw')
    downcased_response = response["body"].gsub('"','').downcase
    player_throw = params[:player_throw]
    curb_throw = downcased_response
    puts curb_throw

    wins = {'scissors' => 'paper', 'rock' => 'scissors', 'paper' => 'rock'}
puts wins
puts curb_throw
    if curb_throw == player_throw
      render :template => "requests/draw"
    elsif wins[curb_throw] == player_throw
      render :template => "requests/lose"
    elsif wins.key?(curb_throw) === false
      render :template => "requests/error"
    else
      render :template => "requests/win"
    end
  end

end
