module Authenticable
  extend ActiveSupport::Concern

  included do
    before_action :require_user
  end

  def current_user
    @user ||= User.find_by(token: user_token_header)
  end

  def require_user
    raise NotAuthorizedError unless current_user
  end

  def user_token_header
    request.headers['HTTP_USER_TOKEN']
  end
end
