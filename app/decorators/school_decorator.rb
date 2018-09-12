# frozen_string_literal: true

class SchoolDecorator < ApplicationDecorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end

  def target_age
    "#{min_age}歳 〜 #{max_age}歳"
  end

  def price
    "#{min_price}円 〜 #{max_price}円"
  end

  def thumb
    h.image_tag h.asset_path('thumb.jpg'), class: :thumbnail
  end

  def category_name
    category.self_and_ancestors.map(&:name).join(' > ')
  end
end
