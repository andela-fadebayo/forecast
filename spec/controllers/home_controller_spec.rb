require 'rails_helper'

describe HomeController, type: :controller do
  describe "GET #index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template :index
    end

    it "renders index template as root path" do
      expect(get: '/').to route_to('home#index')
    end
  end
end