require "rails_helper"

RSpec.describe EligibleAdminsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/eligible_admins").to route_to("eligible_admins#index")
    end

    it "routes to #new" do
      expect(get: "/eligible_admins/new").to route_to("eligible_admins#new")
    end

    it "routes to #show" do
      expect(get: "/eligible_admins/1").to route_to("eligible_admins#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/eligible_admins/1/edit").to route_to("eligible_admins#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/eligible_admins").to route_to("eligible_admins#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/eligible_admins/1").to route_to("eligible_admins#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/eligible_admins/1").to route_to("eligible_admins#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/eligible_admins/1").to route_to("eligible_admins#destroy", id: "1")
    end
  end
end
