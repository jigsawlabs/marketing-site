# == Schema Information
#
# Table name: events
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  location    :string
#  day         :string
#  hours       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :text
#  time        :datetime
#

class Event < ApplicationRecord
end
