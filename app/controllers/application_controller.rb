class ApplicationController < ActionController::API
    def encode_token(payload)
        JWT.encode(payload, hmac_secret, "HS256")
    end
end
