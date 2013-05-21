angular.module('mongolab',['ngResource']).
	factory('CondoProject', function($resource) {
		var Project = $resource('https://api.mongolab.com/api/1/databases' + '/moctisdb/collections/projects/:id',
		{apiKey:'z7gdlS18SHO00zaMaGVMKS-DhjAzkBBl'}, {
			update:{method:'PUT'}
		});
		return Project;
});
