module API
    module V1
      class Plants < Grape::API
        include API::V1::Defaults
        resource :plants do
          desc "Return all plants"
          get "" do
            Plant.all
          end
        desc "Return a plant"
          params do
            requires :id, type: Integer, desc: "ID of the plant"
          end
          get ":id" do
            Plant.where(id: permitted_params[:id]).first!
          end
        end
      end
    end
end