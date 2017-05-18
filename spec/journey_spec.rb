require 'journey'

describe Journey do
let(:entry_station) {double :station}
let(:exit_station) {double :station}
subject(:journey) { described_class.new(entry_station) }
#let(:fake_oystercard) { double :oystercard, in_journey?: true }

it {is_expected.to respond_to :entry_station}
it {is_expected.to respond_to :exit_station}



it "Journey starts form entry station" do
  expect(subject.entry_station).to eq entry_station
end

it "Journey end at exit station" do
  journey.complete_journey(exit_station)
  expect(subject.exit_station).to eq exit_station
end

it " returns the minimum fare of £1 if both entry and exit station" do
  journey.complete_journey(exit_station)
  expect(subject.fare).to eq Journey::MINIMUM_FARE
end

#   describe '#in_journey' do
# it "checks if it is in journey" do
#   allow(fake_oystercard).to receive(:touch_in).with('station') { station }
#   #allow(fake_oystercard).to receive(:in_journey) {true}
#   expect(fake_oystercard.in_journey?).to eq true
#   end
#
# it "checks if it is not in journey" do
#   allow(fake_oystercard).to receive(:touch_in).with('station') { station }
#   allow(fake_oystercard).to receive(:touch_out).with('station') { station }
#   allow(fake_oystercard).to receive(:in_journey?) {false}
#   expect(fake_oystercard.in_journey?).to eq false
#     end
#   end
#
# describe "#fare" do
#   it "should return minimum fare" do
#     allow(fake_oystercard).to receive(:fare) {1}
#     expect(fake_oystercard.fare).to eq 1
#     end
#   end
end
