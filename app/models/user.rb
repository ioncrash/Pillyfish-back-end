# frozen_string_literal: true
class User < ActiveRecord::Base
  include Authentication
  has_many :meds, dependent: :destroy
end
