class CreateAssetResults < ActiveRecord::Migration[6.0]
  def change
    create_view :asset_results
  end
end
