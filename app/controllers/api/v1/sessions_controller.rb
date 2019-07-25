class Api::V1::SessionsController < ApplicationController

  def get_token
      cred = Rails.application.credentials.github
      client_id = cred[:c_id]
      client_secret = cred[:c_s]
      code = params[:string]
      url = "https://github.com/login/oauth/access_token?client_id=#{client_id}&client_secret=#{client_secret}&code=#{params[:string]}&scope=read:user"
      result = RestClient.post(url, headers={Accept: "application/json"})
      git_token = result.body.split("=")[1].split("&")[0]
      #6e3e8d86a7bfd2e8935dfabf4241323792ab83fc
      user_data = RestClient.get('https://api.github.com/user', {Authorization: "token #{git_token}"})
      parsed_user = JSON.parse(user_data)
      user = User.find_or_create_by(username: parsed_user["login"], status: "student", cohort_id: 1)
      # byebug
      user.update(git_token: git_token)
      token = encode({user_id: user.id})
      render json: { token: token, user: parsed_user}
    end

  def get_user
    token = request.headers['Authentication'].split(' ')[1]
    user = decode(token)
    # byebug
    git_token = user.git_token
    user_data = RestClient.get('https://api.github.com/user', {Authorization: "token #{git_token}"})
    parsed_user = JSON.parse(user_data)
    render json: parsed_user
  end

end
