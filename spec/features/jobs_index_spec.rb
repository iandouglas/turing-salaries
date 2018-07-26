require 'rails_helper'

=begin

Second raise at my first job out of Turing, after 16 months at the company
Position: Engineer
Technology: Ruby on Rails
Location: Denver, CO
* $90,000, perviously $79,500, starting salary was $75,000
* Medical/Vision/Dental (unchanged)
* 401k with company match (unchanged)
* Additional (new) 1k stock options on top of 1k stock options that began to vest at 1 year
* Unlimited PTO with 3 week minimum (unchanged as of 1/2018)
* various office perks that I value at <$200 per month (unchanged)
* Fitness center (unchanged)
* $130 per month commuter stipend (unchanged)
* $150 dinner perk (once per year dinner on the company) (unchanged)
* 1 conference per year with travel and hotel (unchanged)

=end
describe 'jobs index page' do
  it 'should show all jobs names and be links to a show page' do
    user = create(:user)
    city = create(:city, name: 'Denver, CO')
    region = create(:region, name: 'Colorado')
    cr = create(:city_region, city: city, region: region)
    jobs = create_list(:job, 5, city: cr.city, title: 'developer')

    visit jobs_path

    jobs.each do |job|
      within("#job-#{job.id}") do
        expect(page).to have_content(job.title)
        expect(page).to have_link(job.title)
      end
    end
  end
end