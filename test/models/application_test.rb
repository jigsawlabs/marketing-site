# == Schema Information
#
# Table name: applications
#
#  id                    :bigint(8)        not null, primary key
#  first_name            :string
#  last_name             :string
#  email                 :string
#  phone_number          :string
#  preferred_course_date :date
#  date_of_birth         :date
#  linkedin              :string
#  github                :string
#  interested_field      :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

require 'test_helper'

class ApplicationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
