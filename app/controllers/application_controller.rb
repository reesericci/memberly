class ApplicationController < ActionController::Base
  # FIXME: select member based on the current member & authorize
  def current_member
    Member.first
  end
end
