require 'rails_helper'

describe ShopquikTodoListsController, type: :controller do
  let(:guest) { create(:guest) }

  before do
    allow(request.env['warden']).to receive(:authenticate!) { guest }
    allow(controller).to receive(:current_guest) { guest }
  end

  describe 'GET #index' do
    it 'renders shopquik index template' do
      get :index
      expect(response).to render_template :index
    end

    it 'renders index template as root path' do
      expect(get: '/shopquik_todo_lists').to route_to('shopquik_todo_lists#index')
    end

    it 'gets all todo_lists' do
      lists = create_list(:shopquik_todo_list, 5)

      get :index
      expect(assigns(:todo_lists)).to eq(lists)
    end
  end

  describe 'GET #show' do
    let(:list) { create(:shopquik_todo_list) }

    it 'assigns the requested todo_list to @todo_list' do
      get :show, id: list
      expect(assigns(:todo_list)).to eq(list)
    end

    it 'renders #show view' do
      get :show, id: list
      expect(response).to render_template :show
    end
  end
end