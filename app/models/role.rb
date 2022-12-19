class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        auditions.map do |audition|
            audition.actor 
        end
    end

    def locations 
        # self.auditions.map{|a| a.location}
        auditions.map do |audition|
            audition.location
        end
    end

    def lead
        if (auditions.where(hired: true).first)
            auditions.where(hired: true).first
        else
            "no actor has been hired for this role"
        end
    end

    def understudy
        auditions.where(hired: true).second || "no actor has been hired for this role"
    end 
end