require 'rps_gem'
  
describe "#play" do
  it "returns 'invalid Choice :P' for choosing invalid options" do
    letsplay = RpsGem::LetsPlay.new
    expect(letsplay.play("blahblah").to_s).to include("Invalid Choice :P")
  end
  it "returns you won or not" do
    letsplay = RpsGem::LetsPlay.new
    expect(["You Won!","You Loose!","Tie!"].include?(letsplay.play("rock"))).to be true
  end
end

describe "#winner" do
  it "returns the winning choice" do
    letsplay = RpsGem::LetsPlay.new
    expect(letsplay.winner("rock","paper")).to include("paper")
  end
end