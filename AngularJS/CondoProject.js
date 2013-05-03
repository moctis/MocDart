angular.module('CondoProject', ['mongolab']).
	config(function($routeProvider){
		$routeProvider.
			when('/', {controller: ListCtrl, templateUrl:'list.html'}).
			when('/new', {controller: CreateCtrl, templateUrl:'detail.html'}). 
			otherwise({redirectTo:'/'}); 
	});

function ListCtrl($scope, CondoProject) {
	$scope.count = 10;
	$scope.Projects = CondoProject.query();
}

function CreateCtrl($scope, $location, CondoProject) {
	$scope.save = function() {
		console.log($scope.project);
		CondoProject.save($scope.project, function(project) { 
			$location.path('/Edit/' + project._id_);
		});
	};
}