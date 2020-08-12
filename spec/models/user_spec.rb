require 'rails_helper'

RSpec.describe User, type: :model do

    context 'related_tables' do
       
        it "has many friends" do
            should respond_to(:friends)
        end

        it "has many friendlies" do
            should respond_to(:friendlies)
        end
    end

    context "when created" do
         
        xit "loads h1 h2 h3 from personal website into hearders column" do  
        end

        xit "personal website url gets shortened" do
        end
 
    end
    context "before save" do
        xit "if personal website url changed shortened url headers gets updated" do
        end
    end

end 

