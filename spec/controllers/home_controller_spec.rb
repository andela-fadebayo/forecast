require 'rails_helper'

describe HomeController, type: :controller do
  describe "GET #index" do
    let(:guest) { create(:guest) }

    before do
      allow(request.env['warden']).to receive(:authenticate!) { guest }
      allow(controller).to receive(:current_guest) { guest }
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template :index
    end

    it "renders index template as root path" do
      expect(get: '/').to route_to('home#index')
    end
  end
end