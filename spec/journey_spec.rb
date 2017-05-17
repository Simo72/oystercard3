require 'journey'

describe Journey do
subject(:journey) { described_class.new }
let(:fake_oystercard) { double :oystercard, in_journey?: true }


  it 'Should be a class' do
  expect(Journey).to be_a Class
end

  describe '#in_journey' do
it "checks if it is in journey" do
  allow(fake_oystercard).to receive(:touch_in).with('station') { station }
  #allow(fake_oystercard).to receive(:in_journey) {true}
  expect(fake_oystercard.in_journey?).to eq true
  end

it "checks if it is not in journey" do
  allow(fake_oystercard).to receive(:touch_in).with('station') { station }
  allow(fake_oystercard).to receive(:touch_out).with('station') { station }
  allow(fake_oystercard).to receive(:in_journey?) {false}
  expect(fake_oystercard.in_journey?).to eq false
    end
  end

describe "#fare" do
  it "should return minimum fare" do
    allow(fake_oystercard).to receive(:fare) {1}
    expect(fake_oystercard.fare).to eq 1
    end
  end
end
