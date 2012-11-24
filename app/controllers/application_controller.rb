# coding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to notepads_path, :alert => "您没有权限访问此页。"
  end
end
