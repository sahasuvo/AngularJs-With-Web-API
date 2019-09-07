<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Basics.aspx.cs" Inherits="AngularJs.NewBasics" %>
<%--http://viralpatel.net/blogs/angularjs-service-factory-tutorial/--%>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script>
    <script type="text/javascript">
        if(typeof angular=='undefined')
        {
            document.write(unescape("%3Cscript type='text/javascript' src='/Scripts/angular.min.js'%3E%3C/script%3E"))
        }
    </script>
    <script type="text/javascript">
        angular.module("myApp", [])
            .controller("MyController", function ($scope) {
                $scope.Naming = {};
                $scope.Naming.Name = "Subhadeep";
                $scope.myName = "";
            }
            );
    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        ==================== Using ng-model,ng-bind ============================
        <br /><br />
        <div data-ng-app="myApp" data-ng-controller="MyController">
            <div>Enter Name: <input type="text" data-ng-model="myName" /></div>
            <p>My Name is <span data-ng-bind="myName"></span></p>
            <p>My Actual Name is {{Naming.Name}}</p>
        </div>

   ==================== Using Controller ============================
        <br /><br />
    <div data-ng-app="myApp">
    <div data-ng-controller="MyController"> 
        <p>My Name is {{Naming.Name}}</p>
    </div>
    </div>
    
    </form>
</body>
</html>
