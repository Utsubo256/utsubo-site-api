class ApplicationController < ActionController::API
  include FirebaseAuth
  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :authenticate

  def authenticate
    authenticate_with_http_token do |token, _options|
      result = verify_id_token(token)

      if result[:errors]
        render json: { errors: result[:errors].compact }, status: :not_found
      else
        @_current_user = User.find_or_create_user(result)
      end
    end
  end

  def current_user
    @_current_user
  end
end
