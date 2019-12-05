class RoundSerializer < ActiveModel::Serializer
  attributes :id, :id, :questions, :money
  has_one :user
end
