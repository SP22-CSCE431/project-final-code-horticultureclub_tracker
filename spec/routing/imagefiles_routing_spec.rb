require "rails_helper"

RSpec.describe ImagefilesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/imagefiles").to route_to("imagefiles#index")
    end

    it "routes to #new" do
      expect(get: "/imagefiles/new").to route_to("imagefiles#new")
    end

    it "routes to #show" do
      expect(get: "/imagefiles/1").to route_to("imagefiles#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/imagefiles/1/edit").to route_to("imagefiles#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/imagefiles").to route_to("imagefiles#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/imagefiles/1").to route_to("imagefiles#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/imagefiles/1").to route_to("imagefiles#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/imagefiles/1").to route_to("imagefiles#destroy", id: "1")
    end
  end
end
