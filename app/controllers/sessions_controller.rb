class SessionsController < ApplicationController

  def get_token
      cred = Rails.application.credentials.github
      client_id = cred[:c_id]
      client_secret = cred[:c_s]
      code = params[:string]
      url = "https://github.com/login/oauth/access_token?client_id=#{client_id}&client_secret=#{client_secret}&code=#{params[:string]}&scope=read:user"
      result = RestClient.post(url, headers={Accept: "application/json"})
      token = result.body.split("=")[1].split("&")[0]
      #6e3e8d86a7bfd2e8935dfabf4241323792ab83fc
      user_data = RestClient.get('https://api.github.com/user', {Authorization: "token #{token}"})
      parsed_user = JSON.parse(user_data)
      render json: { token: token, user: parsed_user}
    end

  def get_user
    token = request.headers['Authentication'].split(' ')[1]
    user_data = RestClient.get('https://api.github.com/user', {Authorization: "token #{token}"})
    parsed_user = JSON.parse(user_data)
    render json: parsed_user
  end

end
