# frozen_string_literal: true

describe 'bulk discont iPad' do
  subject do
    Rules::BULK_DISCOUNT_IPAD.call({ ipd: items }, Products::LIST[:ipd] * items)
  end

  context 'no discount with less than 4 items' do
    let(:items) { 1 }

    it { is_expected.to eq(549.99) }
  end

  context 'no discount with exactly 4 items' do
    let(:items) { 4 }

    it { is_expected.to eq(2199.96) }
  end

  context 'discount with more than 4 items' do
    let(:items) { 5 }

    it { is_expected.to eq(2499.95) }
  end
end
