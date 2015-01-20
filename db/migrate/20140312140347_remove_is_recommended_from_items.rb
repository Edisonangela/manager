class RemoveIsRecommendedFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :is_recommended
  end
end
