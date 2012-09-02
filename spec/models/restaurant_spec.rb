require 'spec_helper'

describe Restaurant do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }

  describe 'factory' do
    let(:subject) { create :restaurant }

    it 'has a name' do
      subject.should respond_to :name
    end

    it 'is valid' do
      subject.should be_valid
    end

    it 'is valid twice' do
      create(:restaurant).should be_valid
      create(:restaurant).should be_valid
    end
  end
end
