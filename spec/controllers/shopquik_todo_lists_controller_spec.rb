require 'rails_helper'

describe ShopquikTodoListsController, type: :controller do
  describe "GET #index" do
    it "renders shopquik index template" do
      get :index
      expect(response).to render_template :index
    end

    it "renders index template as root path" do
      expect(get: '/shopquik_todo_lists').to route_to('shopquik_todo_lists#index')
    end
  end
end