class ApplicationController < ActionController::Base

  def index
    nodesFile = File.read('public/data/naziNodes.json')
    @nazisNodes = JSON.parse(nodesFile)

    subjListDe = @nazisNodes.flat_map { |node| node["Subjectivity de"].to_f } 
    @maxSubjectivityDe = subjListDe.max
    subjListIt = @nazisNodes.flat_map { |node| node["Subjectivity it"].to_f } 
    @maxSubjectivityIt = subjListIt.max
    subjListPl = @nazisNodes.flat_map { |node| node["Subjectivity pl"].to_f } 
    @maxSubjectivityPl = subjListPl.max
    subjListFr = @nazisNodes.flat_map { |node| node["Subjectivity fr"].to_f } 
    @maxSubjectivityFr = subjListFr.max
    subjListEn = @nazisNodes.flat_map { |node| node["Subjectivity en"].to_f } 
    @maxSubjectivityEn = subjListEn.max

    linksFile = File.read('public/data/naziLinks.json')
    @nazisLinks = JSON.parse(linksFile)

  end

end
