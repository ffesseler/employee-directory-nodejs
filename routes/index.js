var Employee = require('../models/Employee').Employee
/*
 * GET home page.
 */

exports.index = function(req, res){
  res.render('index', { title: 'Express' })
};

exports.getEmployees = function(req, res) {
	res.json(Employee.findAll())
};

exports.getEmployee = function(req, res) {
	res.json(Employee.findById(req.params.id))
};

