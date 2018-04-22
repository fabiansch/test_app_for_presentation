require 'rails_helper'

describe ContactsController do
  describe 'GET#index' do
    context 'with params[:letter]' do
      it "populates an array of contacts starting with the letter"
      it "renders the :index template"
    end
    context 'without params[:letter]' do
      it "populates an array of all contacts"
      it "renders the :index template"
    end
  end
end                                  # spec/requests/contacts_management_spec.rb
