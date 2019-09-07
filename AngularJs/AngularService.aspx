<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AngularService.aspx.cs" Inherits="AngularJs.AngularService" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script>

    <script type="text/javascript">
        var calcapp=

    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div ng-app="calcapp">
        <div ng-controller="calcontroller">
            Enter a number: <input type="number" ng-model="nmbrs" />
            <button ng-click="getSquare()">X<sup>2</sup></button>
            <button ng-click="getCube()">X<sup>3</sup></button>
            <div>Answer: {{ Answer }}</div>
        </div>
    
    </div>
    </form>
</body>
</html>
