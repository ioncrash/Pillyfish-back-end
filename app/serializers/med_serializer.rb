class MedSerializer < ActiveModel::Serializer
  attributes :id, :nickname, :clinical_name, :count, :editable
  has_one :user

  def editable
    scope == object.user
  end
end
