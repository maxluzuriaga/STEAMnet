require 'spec_helper'

describe "routes for Jawns" do
  
  it "routes get /api/v1/jawns.json to Jawns controller" do
    { :get => "/api/v1/jawns.json" }.should route_to(
      :controller => "v1/jawns",
      :action => "index",
      :format => "json"
    )
  end
  
end