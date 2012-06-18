class Employee

	@list = [];
	@counter = 0;

	constructor : (@name, @forname, @picture = 'null', @manager = 'null') ->
		@id = null

	@findAll : ->
		@list

	save : (callback) ->
		if not @id
			Employee.counter++;
			@id = Employee.counter;
			Employee.list.push(this)
		callback this

	@findById : (idl) ->
		result = (employee for employee in @list when employee.id is parseInt idl)
		result[0]



employee = new Employee "Florian", "Fesseler"
employee1 = new Employee "Florian1", "Fesseler"
employee2 = new Employee "Florian2", "Fesseler"

employee.save (m) ->
	console.log m

employee1.save (m) ->
	console.log m

employee2.save (m) ->
	console.log m

exports.Employee = Employee