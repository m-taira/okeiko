# frozen_string_literal: true

module Form
  class TopSearch
    include ActiveModel::Model
    include ActiveModel::Callbacks
    include ActiveModel::Validations
    include ActiveModel::Validations::Callbacks

    GRADES = [
      ['幼稚園', :kindergarten],
      ['小学校低学年', :low_grade],
      ['小学校高学年', :high_grade],
      ['中学生', :junior]
    ].freeze
  end
end
