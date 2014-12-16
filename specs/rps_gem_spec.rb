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
  it "returns true or false" do
    letsplay = RpsGem::LetsPlay.new
    expect(letsplay.winner("paper","rock")).to be true
  end
end