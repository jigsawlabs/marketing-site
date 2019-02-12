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

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
