<?php die("Access Denied"); ?>#x#a:2:{s:6:"result";a:2:{s:6:"report";a:0:{}s:2:"js";s:1412:"
  google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Day', 'Orders', 'Total Items sold', 'Revenue net'], ['2022-05-27', 0,0,0], ['2022-05-28', 0,0,0], ['2022-05-29', 0,0,0], ['2022-05-30', 0,0,0], ['2022-05-31', 0,0,0], ['2022-06-01', 0,0,0], ['2022-06-02', 0,0,0], ['2022-06-03', 0,0,0], ['2022-06-04', 0,0,0], ['2022-06-05', 0,0,0], ['2022-06-06', 0,0,0], ['2022-06-07', 0,0,0], ['2022-06-08', 0,0,0], ['2022-06-09', 0,0,0], ['2022-06-10', 0,0,0], ['2022-06-11', 0,0,0], ['2022-06-12', 0,0,0], ['2022-06-13', 0,0,0], ['2022-06-14', 0,0,0], ['2022-06-15', 0,0,0], ['2022-06-16', 0,0,0], ['2022-06-17', 0,0,0], ['2022-06-18', 0,0,0], ['2022-06-19', 0,0,0], ['2022-06-20', 0,0,0], ['2022-06-21', 0,0,0], ['2022-06-22', 0,0,0], ['2022-06-23', 0,0,0], ['2022-06-24', 0,0,0]  ]);
        var options = {
          title: 'Report for the period from Friday, 27 May 2022 to Saturday, 25 June 2022',
            series: {0: {targetAxisIndex:0},
                   1:{targetAxisIndex:0},
                   2:{targetAxisIndex:1},
                  },
                  colors: ["#00A1DF", "#A4CA37","#E66A0A"],
        };

        var chart = new google.visualization.LineChart(document.getElementById('vm_stats_chart'));

        chart.draw(data, options);
      }
";}s:6:"output";s:0:"";}