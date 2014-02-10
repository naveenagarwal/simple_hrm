class AdminApplicationController < ApplicationController
  before_filter :authenticate_admin!
end