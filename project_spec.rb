require_relative 'project'

describe Project do
  
  before do
    @funding = 1000
    @project = Project.new("Grumpy", 10_000, @funding)
    $stdout = StringIO.new
  end
  
  it "has an initial target funding amount" do
    @project.target.should == 10_000
  end
  
  it "computes the total funding outstanding as the target funding minus the funding amount" do
    @project.outstanding.should == (10_000 - 1000)
  end
  
  it "increases fund by 25 when funds are added" do
     @project.donate

     @project.funding.should == @funding + 100
   end


  it "decreases fund by 15 when refunded" do
    @project.refund

    @project.funding.should == @funding - 50
  end
  
  context "created with a default amount" do
    before do
      @project = Project.new("Grumpy", 10_000)
    end
    
    it "has funding of 0" do
      @project.funding.should == 0
    end
  end
    
    
    
  
  
  
  end
 