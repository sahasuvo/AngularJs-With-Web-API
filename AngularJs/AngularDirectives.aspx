<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AngularDirectives.aspx.cs" Inherits="AngularJs.AngularDirectives" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.5/angular.min.js"></script>
   <script type="text/javascript">
       var friends = [
           { name: 'John', Phone: '5643289765' },
           { name: 'Manish', Phone: '7626489317' },
           { name: 'Ved', Phone: '5428976510' },
           { name: 'Rahul', Phone: '8967542015' },
           { name: 'Mou', Phone: '2451782990' },
           { name: 'Sam', Phone: '1435678389' },
           { name: 'Samresh', Phone: '1435611389' },
           { name: 'Johnathon', Phone: '1435655389' },
           { name: 'Jhonson', Phone: '245655389' }
       ];
       angular.module('NewApp', [])
           .controller('friendscontrol', function ($scope)
           {
               debugger;
               //$scope.friendsall = $.parseJSON(friends);
               $scope.friendsall = friends;
           });

   </script>
</head>
<body>
    <form id="form1" runat="server">
    <%--<div data-ng-app="NewApp" data-ng-controller="friendscontrol" data-ng-init="friendsall">
        <ol>
            <li data-ng-repeat="frnd in friendsall">
                {{'Name: '+ frnd.name + ' , Phone: ' + frnd.Phone }}
            </li>
        </ol>
    </div>--%>

    <div data-ng-app="NewApp" data-ng-controller="friendscontrol" data-ng-init="frnd.name">
    <p>Enter Name: <input type="text" data-ng-model="NewName" /></p>
    <ol>
        <li data-ng-repeat="frnd in friendsall | filter: NewName | orderBy: 'name'">
            <%--{{ frnd.name }}--%>
            {{'Name: '+ frnd.name + ' , Phone: ' + frnd.Phone }}
        </li>
    </ol>
</div>
       <%--<div data-ng-app="" data-ng-init="countries=[{locale:'en-US',name:'United States'},
                                          {locale:'en-IN',name:'INDIA'},
                                          {locale:'en-UK',name:'United Kingdom'}]">
           <ol>
               <li data-ng-repeat="country in countries">
                   {{'Country: '+ country.name + ', Locale:' + country.locale}}
               </li>
           </ol>
       </div>--%>
    </form>
</body>
</html>
