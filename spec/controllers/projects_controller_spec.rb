# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do
  authenticate_user
  let(:project) { create(:project) }

  describe 'authenticate user:' do
    it 'should have a current_user' do
      expect(subject.current_user).to_not(eq(nil))
    end
  end

  describe 'GET #index' do
    subject { get :index }

    context 'with valid attributes' do
      it 'renders index template' do
        is_expected.to render_template 'projects/index'
      end

      it 'returns http :success' do
        is_expected.to have_http_status(:success)
      end
    end
  end

  describe 'GET #new' do
    subject { get :new }

    context 'with valid attributes' do
      it 'renders new template' do
        is_expected.to render_template 'new'
      end

      it 'returns http :success' do
        is_expected.to have_http_status(:success)
      end
    end
  end

  describe 'POST #create' do
    subject(:post_create) { post :create, params: params }
    subject { -> { post_create } }

    context 'with valid attributes' do
      let(:params) { { project: { name: 'Project #2', description: 'Description #2' } } }

      it 'creates new project and Project.count+1' do
        is_expected.to change(Project, :count).by(1)
      end

      it 'redirect to projects_path' do
        post_create
        is_expected.to redirect_to(/projects/)
      end
    end

    context 'with invalid attributes' do
      let(:params) { { project: { name: '' } } }

      it 'does not create new project' do
        is_expected.to change(Project, :count).by(0)
      end

      it 'render new template' do
        post_create
        is_expected.to render_template 'new'
      end
    end
  end
end
