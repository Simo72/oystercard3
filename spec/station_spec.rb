describe Station do
  subject(:station) { Station.new('Aldgate') }

  it 'can check its zone' do
    expect(station.check_zone).to eq 1
  end

  it 'checks what name a station is' do
    expect(station.name).to eq 'Aldgate'
  end
end
