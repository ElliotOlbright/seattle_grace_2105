class Doctor
    attr_reader :name, :specialty, :education, :salary

    def initialize(data)
        @name =       data[:name]
        @specialty = data[:specialty]
        @education =  data[:education]
        @salary =     data[:salary]
    end 
end 
