require 'spec_helper'

describe "Member pages" do

	subject { page }

	describe "index" do
		before do
			FactoryGirl.create(:member, last_name: "User2")
			visit members_path
		end

		it "should list each user" do
			Member.all.each do |member|
				page.should have_selector('li', text: member.last_name)
			end
		end
	end
end
