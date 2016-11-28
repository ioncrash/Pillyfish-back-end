class MedSerializer < ActiveModel::Serializer
  attributes :id, :nickname, :clinical_name, :count
  has_one :user
end
