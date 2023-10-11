class ArtifactsController < ApplicationController
  def index 
    @artifacts = Artifact.all
    render template: "artifacts/index"
  end 

  def show
    @artifact = Artifact.find_by(id: params[:id])
    render template: "artifacts/show"
  end 

end

