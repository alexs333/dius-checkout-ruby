# frozen_string_literal: true

describe 'free VGA card with MacBook Pro' do
  subject(:total) do
    items = { vga: vga_count, mbp: mbp_count }
    rulling_total = Products::LIST[:vga] * vga_count +
                    Products::LIST[:mbp] * mbp_count
    Rules::FREE_VGA_WITH_MBP_RULE.call(items, rulling_total)
  end

  context 'with number of VGA cards less MacBooks' do
    let(:vga_count) { 1 }
    let(:mbp_count) { 2 }

    it 'applies discount to all VGA cards' do
      expect(total).to eq(2799.98)
    end
  end

  context 'with the same number of VGA cards and MacBooks' do
    let(:vga_count) { 2 }
    let(:mbp_count) { 2 }

    it 'applies discount to all VGA cards' do
      expect(total).to eq(2799.98)
    end
  end

  context 'with more VGA cards than MacBooks' do
    let(:mbp_count) { 2 }
    let(:vga_count) { 3 }

    it 'applies discount to number of matching MacBooks' do
      expect(total).to eq(2829.98)
    end
  end
end
