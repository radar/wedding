module TableHelper
  def person_details(person)
    details = ["*"]
    case person.dietary_requirement
      when "Special"
        details << "S"
        details << person.other_requirements
      when "Dairy Free"
        details << "D"
      when "Gluten Free"
        details << "GF"
      when "Allergy"
        details << "Allergy #{person.other_requirements}"
    end
    details << "C" if person.age < 12
    "#{details.join(', ')}"
  end
end
