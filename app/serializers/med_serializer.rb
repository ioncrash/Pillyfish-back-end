class MedSerializer < ActiveModel::Serializer
  attributes :id, :nickname, :clinical_name, :count, :editable
  belongs_to :user

  def editable
    scope == object.user
  end
end
