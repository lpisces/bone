class DashboardController < ApplicationController
  include SessionHelper
  before_filter :require_signed_in
  #before_filter :require_admin

  def index
  end
end
