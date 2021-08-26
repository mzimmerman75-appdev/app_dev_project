# == Schema Information
#
# Table name: case_data
#
#  id          :integer          not null, primary key
#  brand       :string
#  color       :string
#  image       :string
#  item_number :string
#  link        :string
#  name        :string
#  part_type   :string
#  price       :string
#  size        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  case_id     :string
#
class CaseDatum < ApplicationRecord
end
