
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Sample title</title>
    <r:require modules="rgraph"/>
    <r:layoutResources/>
  </head>
  <body>
     <script>
        window.onload = function ()
        {
            var gauge3 = new RGraph.Gauge('gauge3', 0, 200, 84);
            gauge3.Set('chart.scale.decimals', 0);
            gauge3.Set('chart.tickmarks.small', 50);
            gauge3.Set('chart.tickmarks.big',5);
            gauge3.Set('chart.title.top', 'AirSpeed');
            gauge3.Set('chart.title.top.font', 'arial');
            gauge3.Set('chart.title.top.bold', true);
            gauge3.Set('chart.title.top.size', 18);
            gauge3.Set('chart.title.top.color', 'black');
            gauge3.Set('chart.title.bottom', 'knots');
            gauge3.Set('chart.title.bottom.font', 'Segoe Script');
            gauge3.Set('chart.title.bottom.size', 10);
            gauge3.Set('chart.title.bottom.bold', false); // Default
            gauge3.Set('chart.title.bottom.color', 'blue');
            gauge3.Draw();
            
            gauge3.canvas.onmousedown = function (e)
            {
                var obj   = e.target.__object__;
                var value = obj.getValue(e);
                
                obj.value = value;
                RGraph.Effects.Gauge.Grow(obj);
            }
            
          var bar = new RGraph.Bar('myBar', [12,13,16,15,16,19,19,12,23,16,13,24]);
            bar.Set('chart.gutter.left', 35);
            bar.Set('chart.colors', ['red']);
            bar.Set('chart.title', 'A basic chart');
            bar.Set('chart.labels', ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']);
            bar.Draw();           
        }
    </script>
    <h1>Sample line</h1>
    
    <div style="text-align: center">
        <canvas id="gauge3" width="250" height="250">[No canvas support]</canvas>
        
    </div>
    <br> </br>
    
     <canvas id="myBar" width="1000" height="250">[No canvas support]</canvas>
     <r:layoutResources/>
  </body>
</html>
