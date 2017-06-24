
if Organization.all.count == 0
  
  orgs = []
  ["HR", "Research", "Support", "Finance", "Matinence"].each do |name|
    org = Organization.new
    org.name = name
    org.save()
    orgs.push org
  end

  employees_file = File.read Dir.pwd + "/db/data.json"
  employees = JSON.parse employees_file
  employees.each do |employee|
    emp = Employee.new
    emp.name = employee["name"]
    emp.email = employee["email"]
    emp.address = employee["address"]
    emp.dob = employee["dob"]
    emp.gender = employee["gender"]
    emp.phone = employee["phone"]
    emp.ssn = employee["ssn"]
    emp.organization_id = orgs[rand(orgs.length)].id
    emp.save()
  end
end
