class SubusersController < InheritedResources::Base

  private

    def subuser_params
      params.require(:subuser).permit(:name, :avatar_path)
    end

end
