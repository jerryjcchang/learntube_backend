class ApplicationController < ActionController::API

def secret_key
  'le@rntuube'
end

def encode(payload)
  JWT.encode(payload, secret_key, "HS256")
end

def decode(token)
  decode = JWT.decode(token, secret_key, true, {algorith: "HS256"})[0]
  User.find(decode["user_id"])
end

end
