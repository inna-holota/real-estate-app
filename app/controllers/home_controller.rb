class HomeController < ApplicationController
  def index
    @assets = AssetResult.all
  end

  def buy
    UserNotificationJob.perform_later(params[:asset_id])
    OwnerNotificationJob.perform_later(params[:asset_id])

    redirect_to root_path, notice: 'Asset was successfully bought.'
  end
end