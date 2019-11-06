# frozen_string_literal: true

module Rules
  BULK_DISCOUNT_IPAD = lambda { |items, total|
    items[:ipd] > 4 ? total - items[:ipd] * 50.0 : total
  }
end
