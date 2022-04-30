<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="DemoProject.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="newcss/bootstrap.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js" charset="utf-8"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/js/all.min.js" charset="utf-8"></script>
    <link href="CustomCss/AdminDashboard.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
            <div class="side-bar">
                <h2>Admin</h2>
                <ul>
                    <li style="background: #594f8d;"><a href="#"><i class="fas fa-home"></i>&nbsp;Home</a></li>
                    <li><a href="#"><i class="fas fa-user-lock"></i>&nbsp;Verification</a></li>
                    <li><a href="Admin.aspx"><i class="fas fa-trash-alt"></i>&nbsp;Login</a></li>
                    <li><a href="#"><i class="fas fa-database"></i>&nbsp;Delete Records</a></li>
                    <li><a href="#"><i class="fas fa-trash-alt"></i>&nbsp;Transaction</a></li>
                    <li><a href="#"><i class="fas fa-trash-alt"></i>&nbsp;Status</a></li>
                </ul>
            </div>
            <div class="main-content">
                <div class="header">
                    <h1></h1>
                    <h1>Dashboard</h1>
                </div>
                <div id="chartContainer" style="height: 300px; width: 100%;"></div>
                <div class="control-section">
                    <div id="container"></div>
                </div>
            </div>
        </div>
        <script>
            window.onload = function () {

                var dataPoints1 = [];
                var dataPoints2 = [];

                var chart = new CanvasJS.Chart("chartContainer", {
                    zoomEnabled: true,
                    title: {
                        text: "VKS Bank Share Comparison"
                    },
                    axisX: {
                        title: "chart updates every 3 secs"
                    },
                    axisY: {
                        prefix: "$",
                        includeZero: false
                    },
                    toolTip: {
                        shared: true
                    },
                    legend: {
                        cursor: "pointer",
                        verticalAlign: "top",
                        fontSize: 22,
                        fontColor: "dimGrey",
                        itemclick: toggleDataSeries
                    },
                    data: [{

                        type: "line",
                        xValueType: "dateTime",
                        yValueFormatString: "$####.00",
                        xValueFormatString: "hh:mm:ss TT",
                        showInLegend: true,
                        name: "VKS Bank (2020)",
                        dataPoints: dataPoints1
                    },
                    {
                        type: "line",
                        xValueType: "dateTime",
                        yValueFormatString: "$####.00",
                        showInLegend: true,
                        name: "Other Banks",
                        dataPoints: dataPoints2
                    }]
                });

                function toggleDataSeries(e) {
                    if (typeof (e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
                        e.dataSeries.visible = false;
                    }
                    else {
                        e.dataSeries.visible = true;
                    }
                    chart.render();
                }

                var updateInterval = 3000;
                // initial value
                var yValue1 = 600;
                var yValue2 = 605;

                var time = new Date;
                // starting at 9.30 am
                time.setHours(9);
                time.setMinutes(30);
                time.setSeconds(00);
                time.setMilliseconds(00);

                function updateChart(count) {
                    count = count || 1;
                    var deltaY1, deltaY2;
                    for (var i = 0; i < count; i++) {
                        time.setTime(time.getTime() + updateInterval);
                        deltaY1 = .5 + Math.random() * (-.5 - .5);
                        deltaY2 = .5 + Math.random() * (-.5 - .5);

                        // adding random value and rounding it to two digits. 
                        yValue1 = Math.round((yValue1 + deltaY1) * 100) / 100;
                        yValue2 = Math.round((yValue2 + deltaY2) * 100) / 100;

                        // pushing the new values
                        dataPoints1.push({
                            x: time.getTime(),
                            y: yValue1
                        });
                        dataPoints2.push({
                            x: time.getTime(),
                            y: yValue2
                        });
                    }

                    // updating legend text with  updated with y Value 
                    chart.options.data[0].legendText = " VKS Bank (2020)  $" + yValue1;
                    chart.options.data[1].legendText = " Other Banks  $" + yValue2;
                    chart.render();
                }
                // generates first set of dataPoints 
                updateChart(100);
                setInterval(function () { updateChart() }, updateInterval);

            }
        </script>
        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
    </form>
</body>
</html>
