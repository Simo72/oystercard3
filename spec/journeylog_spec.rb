require 'journeylog'

describe JourneyLog do

  #let (:journey) {double :journey}
  let (:entry_station) {double :station}
  #let (:journey_class) {double :journey_class, new: journey}
  subject(:current_journey) {described_class.new(entry_station)}

  it { is_expected.to respond_to :journey_class }
  it { is_expected.to respond_to(:start).with(1).argument }

  it "Start method returns new journey with entry station" do
  expect(subject.start(entry_station)).to eq entry_station
end
end
