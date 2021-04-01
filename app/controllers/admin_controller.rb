class AdminController < ApplicationController
  layout 'admin'
  before_action :authenticate_user!
  before_action :verified_admin_user?

  private

  def verified_admin_user?
    unless user_signed_in? && current_user.admin?
      redirect_to root_path, alert: 'You are not authorized to visit this page'
    end
  end
end
