class ApplicationController < ActionController::Base

  def index
    nodesFile = File.read('public/data/naziNodes.json')
    @nazisNodes = JSON.parse(nodesFile)

    subjList = @nazisNodes.flat_map { |node| node["Subjectivity Level"].to_f } 

    @maxSentiment = subjList.max

    nodesGCCFile = File.read('public/data/naziNodesGCC.json')
    @nazisNodesGCC = JSON.parse(nodesGCCFile)

    linksFile = File.read('public/data/naziLinks.json')
    @nazisLinks = JSON.parse(linksFile)

    authorNodesFile = File.read('public/data/authorNodes.json')
    @authorNodes = JSON.parse(authorNodesFile)

    authorLinksFile = File.read('public/data/authorEdges.json')
    @authorLinks = JSON.parse(authorLinksFile)

  end

end
