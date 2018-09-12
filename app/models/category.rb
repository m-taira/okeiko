# frozen_string_literal: true

class Category < ApplicationRecord
  acts_as_nested_set
end
