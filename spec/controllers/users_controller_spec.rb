require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    login_user
    let(:valid_attributes) {
        { full_name: "John Doe!", email: "test@test.com", personal_website_url: "website.url.com",password: "123456" }
    }
    let(:valid_session) { {} }

    describe "GET #index" do
        it "returns a success response" do
            User.create! valid_attributes
            get :index, params: {}, session: valid_session
            expect(response).to be_successful # be_successful expects a HTTP Status code of 200
        end
    end

end