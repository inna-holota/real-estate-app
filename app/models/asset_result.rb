class AssetResult < ApplicationRecord
  belongs_to :searchable, polymorphic: true

  def readonly?
    true
  end
end
