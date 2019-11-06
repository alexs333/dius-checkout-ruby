# frozen_string_literal: true

describe '3 for 2 Apple TV rule' do
  subject do
    Rules::THREE_FOR_TWO_ATV.call({ atv: items }, Products::LIST[:atv] * items)
  end

  context 'no discount with 2 Apple TVs' do
    let(:items) { 2 }

    it { is_expected.to eq(219) }
  end

  context 'discount with 3 Apple TVs' do
    let(:items) { 3 }

    it { is_expected.to eq(219) }
  end

  context 'double discount with two lots of 3' do
    let(:items) { 6 }

    it { is_expected.to eq(438) }
  end
end
