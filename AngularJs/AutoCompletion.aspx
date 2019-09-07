<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AutoCompletion.aspx.cs" Inherits="AngularJs.AutoCompletion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script>
    <script type="text/javascript">
        angular.module('StdApp', [])
        .controller('stdcontroller', function ($scope) {
            $scope.student = {
                firstname: "Subhadeep",
                lastname: "Saha",
                salary: 5000,
                fullname: 
                    function () {
                    //var stdobj;
                    //stdobj = $scope.student;
                    return $scope.student.firstname + " " + $scope.student.lastname;
                }

            };
        });
        </script>
</head>
<body>
    <form id="form1" runat="server">
    <div data-ng-app="StdApp" data-ng-controller="stdcontroller">
    <p>Enter First Name: <input type="text" data-ng-model="student.firstname" /></p>
    <p>Enter Last Name: <input type="text" data-ng-model="student.lastname" /></p>
    <p>Enter Salary: <input type="text" data-ng-model="student.salary" /></p>
    <%--<p>Full Name: <span data-ng-bind="student.fullname"></span></p>--%>
    <p>Full Name: <span>{{ student.fullname() }}</span></p>
    <p>Full Name in Upper Case: <span>{{ student.fullname() | uppercase }}</span></p>
    <p>Full Name in Lower Case: <span>{{ student.fullname() | lowercase }}</span></p>
    <p>Salary in Currency Format: <span>{{ student.salary | currency:"Rs" }}</span></p>
    </div>
    </form>
</body>
</html>
