require_relative '../lib/constants.rb'
require_relative '../lib/program_methods.rb'

describe Program do
  test_program = Program.new
  invalid_input = 33
  valid_input = 12

  describe '#verify_ui' do
    it 'Returns true for input between 1 to 27' do
      expect(test_program.verify_ui(valid_input)).to eql(true)
    end

    it 'Returns false for input other than between 1 to 27' do
      expect(test_program.verify_ui(invalid_input)).to eql(false)
    end
  end

  describe '#scraper' do
    it 'Returns the name of the destination when valid input is given' do
      expect(test_program.scraper(valid_input)).to eql('Mehrangarh Fort')
    end
  end

  describe '#destination_details' do
    it 'Returns the details of the destination when valid destination name is passed' do
      expect(test_program.destination_details(valid_input)).to be_a(String)
    end
  end
end
