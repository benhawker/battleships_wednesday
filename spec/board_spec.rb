require 'board'

describe Board do
	let(:ship) { double :ship, length: 2, direction: :E }
	let(:start_point) { double :start_point }


	it 'responds to place with 1 argument' do
		expect(subject).to respond_to(:place).with(2).argument
	end

	it "board should include ships" do
		start_point1 = [1,1]
		subject.place(ship, start_point1)
		expect(subject.ships.keys).to include ship
	end

	it "should generate cell locations from start_point" do
		east_ship = double :ship, length: 3, direction: :E
		subject.place(east_ship, [1, 1])
		expect(subject.ships.values).to include [1, 2, 3]
	end

	it "should raise error when placed off board" do
		east_ship = double :ship, length: 3, direction: :E
		expect{ subject.place(east_ship, [10, 10]) }.to raise_error "Ship can't be placed off board"
	end



end