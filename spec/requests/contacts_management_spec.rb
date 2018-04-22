require 'rails_helper'

describe ContactsController do
  describe 'GET#index' do
    context 'with params[:letter]' do
      it "populates an array of contacts starting with the letter" do
        smith = create(:contact, lastname: 'Smith')
        jones = create(:contact, lastname: 'Jones')
        get '/contacts', params: { letter: 'S' }
        expect(response.body).to     include(smith.lastname)
        expect(response.body).not_to include(jones.lastname)
      end
      it "renders the :index template" do
        get '/contacts', params: { letter: 'S' }
        expect(response).to be_successful
        expect(response).to have_http_status "200"
      end
    end
    context 'without params[:letter]' do
      it "populates an array of all contacts" do
        smith = create(:contact, lastname: 'Smith')
        jones = create(:contact, lastname: 'Jones')
        get '/contacts'
        expect(response.body).to include(smith.lastname)
        expect(response.body).to include(jones.lastname)
      end
      it "renders the :index template" do
        get '/contacts'
        expect(response).to be_successful
        expect(response).to have_http_status "200"
      end
    end
  end
end                                  # spec/requests/contacts_management_spec.rb
