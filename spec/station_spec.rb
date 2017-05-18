require 'station'

describe Station do
  subject(:station) { described_class.new('Aldgate') }

  it 'can check its zone' do
    expect(station.check_zone).to eq Station::DEFAULT_ZONE
  end

  it 'checks what name a station is' do
    expect(station.name).to eq 'Aldgate'
  end
end
