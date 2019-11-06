# frozen_string_literal: true

describe Checkout do
  subject do
    my_checkout = described_class.new
    codes.each { |code| my_checkout.scan code }
    my_checkout.total
  end

  context 'with 5 ipads and 2 apple TVs' do
    let(:codes) { %i[atv ipd ipd atv ipd ipd ipd] }

    it { is_expected.to eq(2718.95) }
  end

  context 'with 3 apple TVs and a VGA card' do
    let(:codes) { %i[atv atv atv vga] }

    it { is_expected.to eq(249) }
  end

  context 'with a MacBook Pro, a VGA cand and an iPad' do
    let(:codes) { %i[mbp vga ipd] }

    it { is_expected.to eq(1949.98) }
  end
end
