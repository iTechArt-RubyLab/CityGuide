# == Schema Information
#
# Table name: places
#
#  id              :bigint           not null, primary key
#  latitude        :decimal(, )
#  longitude       :decimal(, )
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  organization_id :bigint
#
# Indexes
#
#  index_places_on_organization_id  (organization_id)
#
require 'rails_helper'

RSpec.describe Place, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
