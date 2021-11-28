class ApplicationController < ActionController::Base

  def index
    nodesFile = File.read('public/naziNodes.json')
    @nazisNodes = JSON.parse(nodesFile)

    nodesGCCFile = File.read('public/naziNodesGCC.json')
    @nazisNodesGCC = JSON.parse(nodesGCCFile)

    linksFile = File.read('public/naziLinks.json')
    @nazisLinks = JSON.parse(linksFile)

  end

end
