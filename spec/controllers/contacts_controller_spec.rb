require 'rails_helper'

RSpec.describe ContactsController, :type => :controller do

  let(:valid_attributes) {
    { :name=>"name", :email=>"tisciencia@gmail.com", :subject=>"subject", :message=>"message body" }
  }

  let(:invalid_attributes) {
    { :name=>"", :email=>"a@.cm", :subject=>"", :message=>"" }
  }

  let(:valid_session) { {} }

  describe "GET new" do
    it "assigns a new contact as @contact" do
      get :new, {}, valid_session
      expect(assigns(:contact)).not_to be nil
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Contact" do
        post :create, {:contact => valid_attributes}, valid_session
        expect(response).to redirect_to(root_url)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved contact as @contact" do
        post :create, {:contact => invalid_attributes}, valid_session
        expect(assigns(:contact)).not_to be nil
      end

    end
  end

end
