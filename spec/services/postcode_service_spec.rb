require 'rails_helper'

describe PostcodeService do
  describe 'isPostcode?' do
    [1212, '2218'].each do |object|
      context object do
        it 'should be a postcode' do
          expect(PostcodeService.isPostcode?(object)).to be(true)
        end
      end
    end

    %w(Hello 121 44455 2218r t2213).each do |object|
      context object do
        it 'should not be a postcode' do
          expect(PostcodeService.isPostcode?(object)).to be(false)
        end
      end
    end
  end

  describe 'findStateByPostcode' do
    it 'should join postcode and state if found' do
      expect(PostcodeService.findStateByPostcode('2218')).to eq(PostcodeService::NSW)
      expect(PostcodeService.findStateByPostcode('0800')).to eq(PostcodeService::NT)
      expect(PostcodeService.findStateByPostcode('9999')).to eq(PostcodeService::QLD)
    end

    it 'should return nil if not found' do
      expect(PostcodeService.findStateByPostcode('0100')).to be_nil
    end
  end
end
