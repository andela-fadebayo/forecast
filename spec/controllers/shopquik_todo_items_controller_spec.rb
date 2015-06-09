require 'rails_helper'

describe ShopquikTodoItemsController, type: :controller do
  let(:guest) { create(:guest) }

  before do
    allow(request.env['warden']).to receive(:authenticate!) { guest }
    allow(controller).to receive(:current_guest) { guest }
  end

  # describe 'GET #create' do
  #   let(:todo_list) { create(:shopquik_todo_list) }
  #
  #   it 'sets a valid shopquik_todo_list' do
  #     post :create, id: todo_list
  #     expect(assigns(:todo_list)).to eq(todo_list)
  #   end
  # end
end