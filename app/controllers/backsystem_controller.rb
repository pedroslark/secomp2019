class BacksystemController < ApplicationController
  before_action :authenticate_user!
  layout 'system_application'
end
