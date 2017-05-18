require 'journeylog'

describe JourneyLog do

  let (:journey) {double :journey}
  let (:station) {double :station}
  let (:journey_class) {double :journey_class, new: journey}

  it { is_expected.to respond_to :journey_class }
  it { is_expected.to respond_to(:start).with(1).argument }


end
