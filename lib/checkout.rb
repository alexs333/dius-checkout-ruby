# frozen_string_literal: true

# maintains the checkout state
class Checkout
  def initialize
    @items = Products::LIST.keys.inject({}) do |acc, code|
      acc.merge(code => 0)
    end
  end

  def scan(code)
    @items = @items.merge(code => @items[code] + 1)
  end

  def total
    total = @items.keys.inject(0) do |sum, code|
      sum + Products::LIST[code] * @items[code]
    end

    Rules.constants.inject(total) do |acc, rule|
      Rules.const_get(rule).call(@items, acc)
    end
  end
end
