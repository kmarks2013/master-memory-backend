class ApplicationController < ActionController::API
    def encode_token(payload)
        JWT.encode(payload, hmac_secret, "HS256")
    end

    def user_payload(user)
        {user_id: user.id}
    end

    def hmac_secret
        Rails.application.credentials.secret_key
    end

    def current_user
        token = request.headers["Authorization"]
        begin
            decoded_token = JWT.decode(token, hmac_secret, true, {algorithm: "HS256" })
            return User.find(decoded_token[0]["user_id"])
        rescue
            return nil
        end
    end
end
