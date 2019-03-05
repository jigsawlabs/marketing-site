# == Schema Information
#
# Table name: events
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  location    :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :text
#  begin_time  :datetime
#  end_time    :datetime
#  location_id :integer
#

class Event < ApplicationRecord
  scope :earliest, -> { order 'begin_time ASC' }
  belongs_to :location

  def self.future
    Event.where(begin_time: 0.days.from_now..DateTime::Infinity.new)
  end

  def self.past
    Event.where(begin_time: 100.years.ago..0.days.from_now)
  end
end
