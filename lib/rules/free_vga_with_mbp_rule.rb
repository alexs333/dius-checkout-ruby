# frozen_string_literal: true

module Rules
  FREE_VGA_WITH_MBP_RULE = lambda { |items, total|
    free_items = items[:vga] > items[:mbp] ? items[:mbp] : items[:vga]
    total - free_items * Products::LIST[:vga]
  }
end
