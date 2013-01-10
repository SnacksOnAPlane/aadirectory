# == Schema Information
#
# Table name: members
#
#  id          :integer          not null, primary key
#  last_name   :string(255)
#  first_name  :string(255)
#  child_names :string(255)
#  address     :string(255)
#  home_phone  :string(255)
#  work_phone  :string(255)
#  cell_phone  :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Member < ActiveRecord::Base
  attr_accessible :address, :cell_phone, :child_names, :first_name, :home_phone, :last_name, :work_phone
end
