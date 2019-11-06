# frozen_string_literal: true

module Rules
  THREE_FOR_TWO_ATV = lambda { |items, total|
    total - Products::LIST[:atv] * (items[:atv] / 3).floor
  }
end
