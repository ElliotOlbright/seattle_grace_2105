class Network
    attr_reader :name, :hospitals

    def initialize(name)
        @name = name
        @hospitals = []
    end 

    def add_hospital(hospital)
        @hospitals.push(hospital)
    end 

    def highest_paid_doctor
        @hospitals.each do |doctors|
             @doctors.max_by do |doctor|
                doctor.salary
            end.name
        end 
    end 

    def doctors_by_hospital
        hash.new = dbh
        
end 
