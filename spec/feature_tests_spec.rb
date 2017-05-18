# require_relative '../lib/station.rb'
#
# describe 'Feature Tests' do
#
# let(:card) { OysterCard.new }
# let(:station) { Station.new('Aldgate') }
#
#
#
#   it 'tests to see if there is money on the card' do
#     expect(card.balance).to eq 5
#   end
#
#   it "remembers where I've traveled from" do
#     card.touch_in('station')
#     expect(card.entry_station).to eq 'station'
#   end
#
#   it 'lists all the previous trips' do
#     card.touch_in("Brixton")
#     card.touch_out("Shoreditch")
#     card.touch_in("Shadwell")
#     card.touch_out("Stratford")
#     expect(card.list_journeys).to eq [{ journey_start: "Brixton", journey_end: "Shoreditch" }, { journey_start: "Shadwell", journey_end: "Stratford"}]
#   end
#
#   it 'checks what zone a station is in' do
#     expect(station.check_zone).to eq 1
#   end
#
#   it 'checks what name a station is' do
#     expect(station.name).to eq 'Aldgate'
#   end

# end
