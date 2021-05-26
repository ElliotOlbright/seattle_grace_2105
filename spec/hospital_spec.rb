require 'rspec'
require './lib/doctor'
require './lib/hospital'

RSpec.describe Hospital do
    it 'exists' do
        alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
        meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
        seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])

        expect(seattle_grace).to be_a(Hospital)
    end
    
    it 'has a name' do
        alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
        meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
        seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])

        expect(seattle_grace.name).to eq("Seattle Grace")
    end

    it 'has a cheif of surgery' do
        alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
        meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
        seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])

        expect(seattle_grace.chief_of_surgery).to eq("Richard Webber")
    end

    it 'has doctors' do
        alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
        meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
        seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])

        expect(seattle_grace.doctors).to eq([meredith, alex])
    end

    it 'has tiotal salary' do
        alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
        meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
        seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])

        expect(seattle_grace.total_salary).to eq(190000)
    end

    it 'has lowest paid doctor' do
        alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
        meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
        seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])
       

        expect(seattle_grace.lowest_paid_doctor).to eq("Alex Karev")
    end

    it 'has specialities' do
        alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
        meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
        seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [meredith, alex])
       

        expect(seattle_grace.specialties).to eq(["General Surgery", "Pediatric Surgery"])
    end


end