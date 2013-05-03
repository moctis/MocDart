function TodoCtrl($scope) {
	$scope.count = 10;
	$scope.taskList =  [{title:"test", done:false},
	{title:"Hello", done:true}];

	$scope.remaining = function () {
		var c = 0;
		for (var i=0; i<$scope.taskList.length;i++)
		{
			c += $scope.taskList[i].done ? 1 : 0;
		}
		return c;
	}

	$scope.archive = function() {
		var newList = Array();
		for (var i=0; i<$scope.taskList.length;i++)
			if (!$scope.taskList[i].done)	
				newList.push($scope.taskList[i]);
		$scope.taskList = newList;
	}

	$scope.add = function() {
		$scope.taskList.push({title:$scope.taskTitle, done:false});
		$scope.taskTitle = "";
	}
}