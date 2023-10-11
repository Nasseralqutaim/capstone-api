class HistoricaleventsController < ApplicationController
  @historical_events = HistoricalEvents.all
    render template: "historicalevents/index"
  end 

  def show
    @historical_events = Artifact.find_by(id: params[:id])
    render template: "historicalevents/show"
  end
end 


