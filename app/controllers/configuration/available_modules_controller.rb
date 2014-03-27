class Configuration::AvailableModulesController < ApplicationController

  def edit
    @available_modules = AvailableModule.all
  end

  def update
    if params[:available_modules]
      AvailableModule.update(params[:available_modules].keys, params[:available_modules].values)
    end

    @available_modules = AvailableModule.all
    render 'edit'
  end

  private

  def available_modules_params

  end

end
