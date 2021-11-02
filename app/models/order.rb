class Orders < ApplicationRecord
  belongs_to :user
  belongs_to :boats

  def to_s
    "#{space.name} from: #{start_date} to: #{end_date}"
  end

end
