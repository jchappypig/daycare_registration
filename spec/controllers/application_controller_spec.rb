require 'rails_helper'

describe ApplicationController do
  before(:each) do
    @daycare_carlton = DaycareCentre.create(name: 'Daycare Carlton', address: '9-11 Jubilee Ave, Carlton, NSW, 2218')
    @daycare_melbourne = DaycareCentre.create(name: 'Daycare Melbourne', address: 'Melbourne, VIC')
    @daycare_allawah = DaycareCentre.create(name: 'Daycare Allawah', address: '15 Jubilee Ave, Carlton, NSW, 2218')
  end

  describe 'index' do
    context 'no search param' do
      it 'should return no day cares' do
        get :index
        expect(assigns(:daycareCentres).empty?).to be(true)
      end
    end

    context 'search param exists' do
      it 'should return nearby day cares if found any' do
        get :index, search: 'Carlton, NSW'

        daycares = assigns(:daycareCentres)
        expect(daycares.count(:all)).to be(2)
        expect(daycares).to include(@daycare_carlton)
        expect(daycares).to include(@daycare_allawah)
      end

      it 'should not return any daycare if not found' do
        get :index, search: 'Sydney, NSW'
        expect(assigns(:daycareCentres).empty?).to be(true)
      end
    end
  end
end
