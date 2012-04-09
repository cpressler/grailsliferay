
<%@ import testgrails.TestPortlet %>

<%@ taglib uri="http://java.sun.com/portlet" prefix="portlet" %>

  
    
<r:external uri="test/js/RGraph/libraries/RGraph.js"/>
<r:external uri="test/js/RGraph/libraries/RGraph_002.js"/>
<r:external uri="test/js/RGraph/libraries/RGraph_003.js"/>
<r:external uri="test/js/RGraph/libraries/RGraph.common.core.js"/>
<r:external uri="test/js/RGraph/libraries/RGraph.common.effects.js"/>
<r:external uri="test/js/RGraph/libraries/RGraph.common.tooltips.js"/>
<r:external uri="test/js/RGraph/libraries/RGraph.common.key.js"/>
<r:external uri="test/js/RGraph/libraries/RGraph.bar.js"/>

<r:external uri="test/js/RGraph/css/website.css"/>

<script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>

    
<div>
<h1>View Portlet Grails 2.0 Resource Test Page</h1>
The map returned by renderView is passed in. Value of mykey: ${mykey}
<form action="${portletResponse.createActionURL()}" method="post">
    <input type="submit" value="Submit"/>
</form>

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
            
 var bar1 = new RGraph.Bar('bar1', [[50,75],[32, 44],[61, 56],[91, 81],[92, 8],[34, 57],[56, 62],[55, 45],[36, 12],[44, 56],[51, 66],[68, 88]]);
            bar1.Set('chart.background.barcolor1', 'white');
            bar1.Set('chart.background.barcolor2', 'white');
            bar1.Set('chart.labels', ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec']);
            bar1.Set('chart.key', ['John', 'Bob']);
            bar1.Set('chart.key.position.y', 35);
            bar1.Set('chart.key.position', 'gutter');
            bar1.Set('chart.key.background', 'rgb(255,255,255)');
            bar1.Set('chart.colors', ['#77f', '#7f7']);
            bar1.Set('chart.shadow', true);
            bar1.Set('chart.shadow.blur', 15);
            bar1.Set('chart.shadow.offsetx', 0);
            bar1.Set('chart.shadow.offsety', 0);
            bar1.Set('chart.shadow.color', '#aaa');
            bar1.Set('chart.strokestyle', 'rgba(0,0,0,0)');
            bar1.Set('chart.gutter.left', 55);
            bar1.Set('chart.gutter.right', 5);
            bar1.Draw();           
        }
    </script>

<h1>Gauge <span>charts</span></h1>
<div style="text-align: center">
        <canvas id="gauge3" width="250" height="250">[No canvas support]</canvas>
        
    </div>

<div style="text-align: center">
            <canvas id="bar1" width="900" height="200">[No canvas support]</canvas>
</div>
<a href="mytest.gsp">Gauge charts API documentation</a>
</div>
