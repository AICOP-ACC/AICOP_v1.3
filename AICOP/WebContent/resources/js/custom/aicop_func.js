 function fixAutoOpen(){ 
         
   document.getElementById("sidemenu").innerHTML='<li id="home"  ><a ><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a><ul class="nav child_menu"><li><a href="">Business View</a></li><li><a href="">Executive View</a></li></ul></li><li><a id="Bussiness_Process"><i class="fa fa-sitemap"></i> Bussiness Process <span class="fa fa-chevron-down"></span></a><ul class="nav child_menu"><li><a href="#level1_1">Mobile Services</a></li<li><a>Port In<span class="fa fa-chevron-down"></span></a><ul class="nav child_menu"><li class="sub_menu"><a href="">Bussiness Process Flow</a></li><li><a href="#level2_1">Application Flow</a></li></ul></li><li><a>Port Out<span class="fa fa-chevron-down"></span></a><ul class="nav child_menu"><li class="sub_menu"><a href="">Bussiness Process Flow</a> </li><li><a href="#level2_1">Application Flow</a> </li></ul></li><li><a>Fixed Services<span class="fa fa-chevron-down"></span></a><ul class="nav child_menu"><li class="sub_menu"><a href="">Port In</a></li><li><a href="#level2_1">Port Out</a></li></ul></li><li><a>Order Management<span class="fa fa-chevron-down"></span></a><ul class="nav child_menu"><li class="sub_menu"><a href="">Mobile Services</a>  </li> <li><a href="#level2_1">Fixed Services</a>  </li></ul></li><li><a>Billing Management<span class="fa fa-chevron-down"></span></a><ul class="nav child_menu"><li class="sub_menu"><a href="">Mobile Services</a>  </li><li><a href="#level2_1">Fixed Services</a>  </li> </ul></li></ul></li>';
        }
      function hideImage()
      {
    	var html=document.getElementById('navtitle').innerHTML;
    	 if(html.includes("img"))
    	  document.getElementById('navtitle').innerHTML="";
    	 else
    		 document.getElementById('navtitle').innerHTML='<img  id="logo" src="resources/images/AICOP_LOGO.png" style="width:200px;"></img>';
      }
      
      
      function loadInitialChart()
      {
    	  $("#createflowchart").remove();
    	  $("#stepTwoFlowChart").remove();
    	  $("#stepOneFlowChart").remove();
    	  var navigation=document.getElementById("navigation");
    	  navigation.innerHTML=' <span onclick="loadInitialChart()">   <b>  BSS</b></span>';
    	  var div=document.getElementById('tree');
    	  div.innerHTML='<div class="chart" id="basic-example" style="width:100%;height:357px;"></div>';
	        new Treant( chart_config );
    	  
    	  
      }
      
 function loadFlowChart()
		 {
	 
	 var navigation=document.getElementById("navigation");
	 if(!navigation.innerHTML.includes('Orders')){

		navigation.innerHTML=navigation.innerHTML+' >> <span onclick=loadFlowChart("Orders")> <b>Orders</b> </span> ';
		 var div=document.getElementById("businessFlow");
		$("#basic-example").remove();
		$("#createflowchart").remove();
		
	//	////alert(div.innerHTML);
		div.innerHTML=div.innerHTML+'<div id="stepOneFlowChart" style="width: 100%;height:316px;overflow-x:scroll;overflow-y:scroll;"></div>';
		////alert(div.innerHTML);
	var btn = document.getElementById("run"),
                    cd = document.getElementById("code"),
                    chart;
          
                    var code = cd.value;
                    if (chart) {
                      chart.clean();
                    }
                    chart = flowchart.parse(code);
                    chart.drawSVG('stepOneFlowChart', {
                      // 'x': 30,
                      // 'y': 50,
                      'line-width': 1.5,
                      'maxWidth': 3,//ensures the flowcharts fits within a certian width
                      'line-length': 10,
                      'text-margin': 5,
                      'font-size': 8,
                      'font': 'normal',
                      'font-family': 'Helvetica',
                      'font-weight': 'normal',
                      'font-color': 'black',
                      'line-color': 'black',
                      'element-color': 'black',
                    
                      'yes-text': 'yes',
                      'no-text': 'no',
                      'arrow-end': 'block',
                      'scale': 1.5,
                      'symbols': {
                        'start': {
                          'font-color': 'red',
                          'element-color': 'green',
                          'fill': 'black'
                        },
                        'end':{
                          'class': 'end-element'
                         
                        },
                        'operation':{
                        	'font-color': 'white',
                        	'fill':'#62aa3b',
                        	'stroke':'red'
                        	
                        },
                        
                       'condition':
                    	   {
                    	   'font-color': 'white',
                       	'fill':'#62aa3b',
                       	'stroke':'red'
                    	   
                    	   }

                      },
                      'flowstate' : {
                       /*  'orderCapture' : { 'fill' : 'black', 'font-size' : 12},
                        'current' : {'fill' : 'black', 'font-color' : 'red', 'font-weight' : 'bold'},
                        'future' : { 'fill' : 'green'},
                        'request' : { 'fill' : 'blue'},
                        'invalid': {'fill' : 'green'},
                        'approved' : { 'fill' : 'green', 'font-size' : 12, 'yes-text' : 'APPROVED', 'no-text' : 'n/a' },
                        'rejected' : { 'fill' : 'green', 'font-size' : 12, 'yes-text' : 'n/a', 'no-text' : 'REJECTED' } */
                      }
                    });
                    $('[id^=sub1]').click(function(){
                      ////alert('info here');
                    });
	 }
	 else
		 {
		 //alert('in else');
		 navigation.innerHTML=' <span onclick="loadInitialChart()">     <b>BSS</b></span>  >> <span onclick=loadFlowChart("Orders")><b>Orders</b></a> </span> ';
		 
		 var div=document.getElementById("businessFlow");
		 $("#createflowchart").remove();
			$("#stepTwoFlowChart").remove();
			$("#stepOneFlowChart").remove();
			
		//	////alert(div.innerHTML);
			div.innerHTML=div.innerHTML+'<div id="stepOneFlowChart" style="width: 100%;height:316px;overflow-x:scroll;overflow-y:scroll;"></div>';
			////alert(div.innerHTML);
		var btn = document.getElementById("run"),
	                    cd = document.getElementById("code"),
	                    chart;
	          
	                    var code = cd.value;
	                    if (chart) {
	                      chart.clean();
	                    }
	                    chart = flowchart.parse(code);
	                    chart.drawSVG('stepOneFlowChart', {
	                      // 'x': 30,
	                      // 'y': 50,
	                      'line-width': 1.5,
	                      'maxWidth': 3,//ensures the flowcharts fits within a certian width
	                      'line-length': 10,
	                      'text-margin': 5,
	                      'font-size': 8,
	                      'font': 'normal',
	                      'font-family': 'Helvetica',
	                      'font-weight': 'normal',
	                      'font-color': 'black',
	                      'line-color': 'black',
	                      'element-color': 'black',
	                    
	                      'yes-text': 'yes',
	                      'no-text': 'no',
	                      'arrow-end': 'block',
	                      'scale': 1.5,
	                      'symbols': {
	                        'start': {
	                          'font-color': 'red',
	                          'element-color': 'green',
	                          'fill': 'black'
	                        },
	                        'end':{
	                          'class': 'end-element'
	                         
	                        },
	                        'operation':{
	                        	'font-color': 'white',
	                        	'fill':'#62aa3b',
	                        	'stroke':'red'
	                        	
	                        },
	                        
	                       'condition':
	                    	   {
	                    	   'font-color': 'white',
	                       	'fill':'#62aa3b',
	                       	'stroke':'red'
	                    	   
	                    	   }

	                      },
	                      'flowstate' : {
	                       /*  'orderCapture' : { 'fill' : 'black', 'font-size' : 12},
	                        'current' : {'fill' : 'black', 'font-color' : 'red', 'font-weight' : 'bold'},
	                        'future' : { 'fill' : 'green'},
	                        'request' : { 'fill' : 'blue'},
	                        'invalid': {'fill' : 'green'},
	                        'approved' : { 'fill' : 'green', 'font-size' : 12, 'yes-text' : 'APPROVED', 'no-text' : 'n/a' },
	                        'rejected' : { 'fill' : 'green', 'font-size' : 12, 'yes-text' : 'n/a', 'no-text' : 'REJECTED' } */
	                      }
	                    });
	                    $('[id^=sub1]').click(function(){
	                      ////alert('info here');
	                    });
		 
		 }
	 
		 }
         function click(id)
         {
        	 ////alert('going to click');
        	
        	 
         }
		 function changeTheme(theme)
		 {
		 if(theme=='gray'){
		 document.getElementById("navtitle").style.backgroundColor='dimgrey';
		 document.getElementById("navbar").style.backgroundColor='dimgrey';
		  document.getElementById("left-col").style.backgroundColor='dimgrey';
		  document.getElementById("nav-menu").style.backgroundColor='dimgrey';
		//  document.getElementById("menu1").style.backgroundColor='dimgrey';
			 document.getElementById("menu2").style.backgroundColor='dimgrey';
		 }
		else if(theme=='black')
{
 document.getElementById("navtitle").style.backgroundColor='black';
		 document.getElementById("navbar").style.backgroundColor='black';
		 document.getElementById("left-col").style.backgroundColor='black';
		 document.getElementById("nav-menu").style.backgroundColor='black';
		 //document.getElementById("menu1").style.backgroundColor='black';
		 document.getElementById("menu2").style.backgroundColor='black';


}
else
{
document.getElementById("navtitle").style.backgroundColor='#2A3F54';
		 document.getElementById("navbar").style.backgroundColor='#2A3F54';
		 document.getElementById("left-col").style.backgroundColor='#2A3F54';
		 document.getElementById("nav-menu").style.backgroundColor='#2A3F54';
		 //document.getElementById("menu1").style.backgroundColor='#2A3F54';
		 document.getElementById("menu2").style.backgroundColor='#2A3F54';
		 
}		
		 }
		 function generateFlowChart()
		 {
		 
		 var flowone=document.getElementById("flow").value;
		 var flowtwo=document.getElementById("flow1").value;
		 var flowthree=document.getElementById("flow2").value;
		 var flowfour=document.getElementById("flow3").value;
		 var flowfive=document.getElementById("flow4").value;
		 
		 var code=flowone+"=>operation: "+flowone+"\n"+flowtwo+"=>operation: "+flowtwo+"\n"+flowthree+"=>operation: "+flowthree+"\n"+flowfour+"=>operation: "+flowfour+"\n"+flowfive+"=>operation: "+flowfive;
var code1=flowone+"(right)->"+flowtwo+"(right)->"+flowthree+"(right)->"+flowfour+"(right)->"+flowfive;
var codefinal=code+"\n"+code1;
/* ////alert(codefinal); */



                 var   chart = flowchart.parse(codefinal);
				 var div=document.getElementById("canvas");
				 div.innerHTML="";
				/*  ////alert(chart); */
                    chart.drawSVG('canvas', {
                      // 'x': 30,
                      // 'y': 50,
                      'line-width': 3,
                      'maxWidth': 3,//ensures the flowcharts fits within a certian width
                      'line-length': 10,
                      'text-margin': 5,
                      'font-size': 8,
                      'font': 'normal',
                      'font-family': 'Helvetica',
                      'font-weight': 'normal',
                      'font-color': 'black',
                      'line-color': 'black',
                      'element-color': 'black',
                      'fill': 'white',
                      'yes-text': 'yes',
                      'no-text': 'no',
                      'arrow-end': 'block',
                      'scale': 1.5,
                      'symbols': {
                        'start': {
                          'font-color': 'red',
                          'element-color': 'green',
                          'fill': ''
                        },
                        'end':{
                          'class': 'end-element'
                        }
                      },
                      'flowstate' : {
                    /*    'past' : { 'fill' : '#CCCCCC', 'font-size' : 12},
                        'current' : {'fill' : 'yellow', 'font-color' : 'red', 'font-weight' : 'bold'},
                        'future' : { 'fill' : 'green'},
                        'request' : { 'fill' : 'blue'},
                        'invalid': {'fill' : '#444444'},
                        'approved' : { 'fill' : '#58C4A3', 'font-size' : 12, 'yes-text' : 'APPROVED', 'no-text' : 'n/a' },
                        'rejected' : { 'fill' : '#C45879', 'font-size' : 12, 'yes-text' : 'n/a', 'no-text' : 'REJECTED' }*/
                      }
                    });
                    $('[id^=sub1]').click(function(){
                     /*  ////alert('info here'); */
                    });

		 
		 }
 
		
		 
		 function replaceBell()
		  {
			 var xmlhttp=new XMLHttpRequest();
			 var marquee1="sss";
			 xmlhttp.onreadystatechange=function(){
			 	if(xmlhttp.status==200&&xmlhttp.readyState==4){
			 		var a=xmlhttp.responseText;
			 	
			 	var a1=$.parseJSON(a);
			 	var test = a1.split(",")
			 
			 	 marquee1='<marquee scrollamount=2 onmouseout="this.start()" onmouseover="this.stop()"  behavior="scroll" direction="up" style="height:250px;color:black;">';
			 	for(var i=0;i<test.length;i++)
			 		{
			 		var splitStr  = test[i].split("~");
			 	var increm = 0;
			 		var con ='';
			 		while(increm < splitStr.length-1) {
			 			var marString = splitStr[increm].replace(/[^\w\s]/gi, '');
			 			if(increm < 2) {
			 				con = "<b>"+con+ marString+"</b>"+" - ";
			 			} else {
			 				con = con+ marString;	
			 			}
			 			
			 			increm++;
			 		} 
			 		marquee1 = marquee1+con+"<span class=\"blink\">~~"+splitStr[splitStr.length-1].replace(/"/g,"").replace(/[^\w\s]/gi, '')+ "</span>"+"<br><br>";
			 		}
				 marquee1=marquee1+'</marquee>'
				 document.getElementById("openMajors").innerHTML=marquee1 ;
			 	}
			 	}

			 xmlhttp.open("POST", "notification.do", true);
			 xmlhttp.send();
			 
		 

		  }
		 
		 
		 

		  function addData(chart, label, color, data,headLab) {
				chart.data.datasets.push({
					label:label,
					backgroundColor: color,
					borderColor: color,
					borderWidth:2,
					hoverBackgroundColor:color,
					hoverBorderColor:color,
					data:data
		  });
				
		  chart.update();
		}
		function dynamicDataAppendOnChart(YAxislabels1, dataVal)
		  
		  {
			var barChartData = {
					labels:  ["WOMS",  "BIOS",  "OPENNET",  "GIS",  "MARS"],
					 fontColor: 'black'
				};
			var ctx = document.getElementById('canvas').getContext('2d');
			//alert(document.getElementById('canvas'));
			var barChart = new Chart(ctx, {
				type: 'bar',
				data: barChartData,
				options: {
				legend: {
		    display: false,
		},
					title: {
						display: true,
						text: 'Major Incident',
					},
					responsive: true,
					scales: {
						xAxes: [{
							stacked: true,
						}],
						yAxes: [{
							stacked: true
						}]
					}
				}
			});
				
				var incc = 0;
				var efficiency = [];
				var coloR = ["rgb(155,89,182)","rgb(107,158,239)","rgb(35,198,239)","rgb(228,188,87)","rgb(98,142,6)","rgb(222,193,177)","rgb(228,188,87)"];
				/*var dynamicColors = function() {
		            var r = Math.floor(1 * 255);
		            var g = Math.floor(1 * 255);
		            var b = Math.floor(Math.random() * 255);
		            return "rgb(" + r + "," + g + "," + b + ")";
		         };*/
				
				while(incc < dataVal.length) {
					var data1 = dataVal[incc].split(",");
					var datasetVal1=[];
					var datasetLabel1=[];
					for (i = 0, len = data1.length; i < len; i++) { 
					var split1= data1[i].split("~");
				    datasetVal1[i] = split1[1].replace(/\]/g, '');
					datasetLabel1[i]=split1[0].replace(/\[/g, ''); 
							//alert(datasetLabel1[i]);
					}	
				//	var rgbb = dynamicColors();
					addData(barChart,YAxislabels1[incc], coloR[incc], datasetVal1,datasetLabel1);
					incc++;
				}
						
		  }

		  
		  $(document).ready(function(){
			  var data, lablels;
			  var result ;
			  var YAxislabels ;
		  $('a[href="#incidentTrends"]').click(function(){
		      $.ajax({
		          url: "getMajorTrend.do",
		          type: "POST",
		          data: data,
		         // async: isAsync,
		          success: function (result) {
		        	  
		        	  var json_obj = $.parseJSON(result);//parse JSON
		        	  for (var i in json_obj) 
		              {
		                  if(i <= 0 ) {
		                	  lablels =  json_obj[i];
		                  } else {
		                	  data =  json_obj[i];
		                  }
		                 
		              }
		        	  
		            dynamicDataAppendOnChart(lablels, data);
		            // replaceCharrrt();
		          }
		      });
		      
		  });
		 // Now you can call the function by passing labels and data
		  });  

  function replaceexclamation()
  {
  document.getElementById("otherAlerts").innerHTML='<marquee scrollamount=2 onmouseout="this.start()" onmouseover="this.stop()"  behavior="scroll" direction="up" style="height:250px;color:black;font-size:15px"><b>PN Sent from OPOM to MTS is Low </b><span class=\"blink\"><b style="color:#FF6600;"> ~~ Action Required</span></b><br><br>Active Connections in HELIX MOBILE Application Server is Increasing  <span class=\"blink\"><b style="color:#FF6600;"> ~~ Action Required</b> </span><br><br>Pending Requests in Queue : EAI is above Threshold limit continuously for past 15 Minutes  <span class=\"blink\"><b style="color:#FF6600;"> ~~ Action Required </b></span><br><br>Pending Requests in Queue : NFT is above Threshold limit continuously for past 15 Minutes  <span class=\"blink\"><b style="color:#FF6600;"> ~~ Action Required</b></span></marquee>';

  }
  
  function replacesignal()
  {
	  document.getElementById("incidentTrends").innerHTML='<div id="chartContainer" style="height: 230px; max-width: 100%; margin: 0px auto;"></div>';
	  var options = {
			  	responsive: true,	
			  	height: 250,
			  	width: 450,
			  	animationEnabled: true,
				theme: "light2",
				title:{
					text: "Incident Variation Trend"
				},
				
				axisY:{
					title:"Number"
				},

				
				legend:{
					verticalAlign: "top",
					horizontalAlign: "center"
				},
				 toolTip:{
			        enabled: true   
			      },
				data: [
				{     
					type: "stackedColumn",
					showInLegend: false,
				
					axisYType: "secondary",
					color: "#6b9eef",
					
					dataPoints: [
						{ y: 70, label: "BCC Stuck Order" },
						{ y: 23, label: "OPOM Order submission failure" },
						{ y: 17, label: "POPI Port out notification not received" },
						{ y: 28, label: "Helix Unable to login" },
						{ y: 30, label: "Helix Mobile Stuck Order" }
						
					]
				},
				{
					type: "stackedColumn",
				
						
					axisYType: "secondary",
					color: "#9B59B6",
					dataPoints: [
						{ y: 48, label: "BCC Unable to create case" },
						{  },
						{  },
						{  },
						{ y: 41, label: "Helix Mobile Unable to Create HLR Case " }
					]
				},
				{
					type: "stackedColumn",
				
						
					axisYType: "secondary",
					color: "#F0D6A7",
					dataPoints: [
						{ y: 0, label: "BCC" },
						{ y: 0, label: "OPOM" },
						{ y: 0, label: "POPI" },
						{ y: 0, label: "Helix" },
						{ y: 0, label: "Helix Mobile" }
					]
				}
				
				]
			};
////alert("loading chart");
			$("#chartContainer").CanvasJSChart(options);
			
  
	  

  }
  
  function replaceBeat()
  {
  $('#x_content1').empty();
  document.getElementById("x_content1").innerHTML='	<div id="wrapper" style="width:100%;height:60px;overflow-y:scroll;"></div>';    
   var tagInput = $('<input />', {

});
tagInput.appendTo($('#wrapper'));
tagInput.tagsinput({
});
  
  
  
  }
  
  function loadNewFlowChart()
	 {
	  var div=document.getElementById("title");
	  div.innerHTML='<i class="material-icons" onclick=loadEnlargedDiv()>timeline</i>';
	 var div=document.getElementById("businessFlow");
	$("#basic-example").remove();
	$("#createflowchart").remove();
	$("#stepOneFlowChart").remove();
//	////alert(div.innerHTML);
	 var navigation=document.getElementById("navigation");
	 if(!navigation.innerHTML.includes('Porting Orders')){
		 //alert('condition is true creating chart');
		navigation.innerHTML=navigation.innerHTML+' >> <span onclick=loadNewFlowChart("")> <b>Porting Orders</b> </span> ';

	div.innerHTML=div.innerHTML+'<div id="stepTwoFlowChart" style="width: 100%;height:316px;overflow-x:scroll;overflow-y:scroll;"></div>';
	////alert(div.innerHTML);
var btn = document.getElementById("run"),
          cd = document.getElementById("code1"),
          chart;

          var code = cd.value;
          if (chart) {
            chart.clean();
          }
          chart = flowchart.parse(code);
          chart.drawSVG('stepTwoFlowChart', {
            // 'x': 30,
            // 'y': 50,
            'line-width': 1.5,
            'maxWidth': 3,//ensures the flowcharts fits within a certian width
            'line-length': 10,
            'text-margin': 5,
            'font-size': 8,
            'font': 'normal',
            'font-family': 'Helvetica',
            'font-weight': 'normal',
            'font-color': 'black',
            'line-color': 'black',
            'element-color': 'black',
          
            'yes-text': 'yes',
            'no-text': 'no',
            'arrow-end': 'block',
            'scale': 1.5,
            'symbols': {
              'start': {
                'font-color': 'red',
                'element-color': 'green',
                'fill': 'black'
              },
              'end':{
                'class': 'end-element'
               
              },
              'operation':{
              	'font-color': 'white',
              	'fill':'#62aa3b',
              	'stroke':'red'
              	
              },
              
             'condition':
          	   {
          	   'font-color': 'white',
             	'fill':'#62aa3b',
             	'stroke':'red'
          	   
          	   }

            },
            'flowstate' : {
             /*  'orderCapture' : { 'fill' : 'black', 'font-size' : 12},
              'current' : {'fill' : 'black', 'font-color' : 'red', 'font-weight' : 'bold'},
              'future' : { 'fill' : 'green'},
              'request' : { 'fill' : 'blue'},
              'invalid': {'fill' : 'green'},
              'approved' : { 'fill' : 'green', 'font-size' : 12, 'yes-text' : 'APPROVED', 'no-text' : 'n/a' },
              'rejected' : { 'fill' : 'green', 'font-size' : 12, 'yes-text' : 'n/a', 'no-text' : 'REJECTED' } */
            }
          });
          $('[id^=sub1]').click(function(){
            ////alert('info here');
          });
	 }
	 else
		 {
		 
		 var div=document.getElementById("businessFlow");
		 $("#stepTwoFlowChart").remove();
		 div.innerHTML=div.innerHTML+'<div id="stepTwoFlowChart" style="width: 100%;height:316px;overflow-x:scroll;overflow-y:scroll;"></div>'+'<button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#myModal" id="createflowchart">Maximize flow cahrt</button>';
			////alert(div.innerHTML);
		var btn = document.getElementById("run"),
		          cd = document.getElementById("code1"),
		          chart;

		          var code = cd.value;
		          if (chart) {
		            chart.clean();
		          }
		          chart = flowchart.parse(code);
		          chart.drawSVG('stepTwoFlowChart', {
		            // 'x': 30,
		            // 'y': 50,
		            'line-width': 1.5,
		            'maxWidth': 3,//ensures the flowcharts fits within a certian width
		            'line-length': 10,
		            'text-margin': 5,
		            'font-size': 8,
		            'font': 'normal',
		            'font-family': 'Helvetica',
		            'font-weight': 'normal',
		            'font-color': 'black',
		            'line-color': 'black',
		            'element-color': 'black',
		          
		            'yes-text': 'yes',
		            'no-text': 'no',
		            'arrow-end': 'block',
		            'scale': 1.5,
		            'symbols': {
		              'start': {
		                'font-color': 'red',
		                'element-color': 'green',
		                'fill': 'black'
		              },
		              'end':{
		                'class': 'end-element'
		               
		              },
		              'operation':{
		              	'font-color': 'white',
		              	'fill':'#62aa3b',
		              	'stroke':'red'
		              	
		              },
		              
		             'condition':
		          	   {
		          	   'font-color': 'white',
		             	'fill':'#62aa3b',
		             	'stroke':'red'
		          	   
		          	   }

		            },
		            'flowstate' : {
		             /*  'orderCapture' : { 'fill' : 'black', 'font-size' : 12},
		              'current' : {'fill' : 'black', 'font-color' : 'red', 'font-weight' : 'bold'},
		              'future' : { 'fill' : 'green'},
		              'request' : { 'fill' : 'blue'},
		              'invalid': {'fill' : 'green'},
		              'approved' : { 'fill' : 'green', 'font-size' : 12, 'yes-text' : 'APPROVED', 'no-text' : 'n/a' },
		              'rejected' : { 'fill' : 'green', 'font-size' : 12, 'yes-text' : 'n/a', 'no-text' : 'REJECTED' } */
		            }
		          });
		          $('[id^=sub1]').click(function(){
		            ////alert('info here');
		          });
		 
		 }
	 }
  
  function loadOrder()
  {
	  
	  
	  var dataPoints = [];
	  var datapointsbar=[];
	  var bardata=[100,	90,	80,	100,	130,	120,	100,	30,	80,	80,	90,	110,	50,	80,	120,	100,	111,100,	70,	80,	80,	90,	100,	90,	80,	100,	130,	120,	100,	30,	80,	80,	90,	110,	50,	80,	120,	100,	111,	100,	70,	80,	80,	90,	100,	90,	80,	100,	130,	120,	100,	30,	80,	80,	90,	110,	50,	80,	120,	100,111];
	  var linedata=[90,	81,	70,	90,	120,	111,	90,	20,	70,	71,	80,	100,	41,	70,	110,	90,	102,	170,	60,	70,	71,	80,	90,	81,	70,	90,	120,	111,	90,	20,	70,	71,	80,	100,	41,	70,	110,	90,	102,	170,	60,	70,	71,	80,	90,	81,	70,	90,	120,	111,	90,	20,	70,	71,	80,	100,	41,	70,	110,	90,	102];
	  
	 var x, y = 10;
	 for( i = 0; i <=60; i++ ) {
		 
		 if(i%15==0)
	     dataPoints.push({x: new Date(2018,07,06,10,i), y:linedata[i] });
	 }
	 for( i = 0; i <=60; i++ ) {
	     datapointsbar.push({x: new Date(2018,07,06,10,i), y: bardata[i] });
	 }
	 var chart = new CanvasJS.Chart("queueMonitoringThree",
	     {
	       title:{
	           text: ""
	       },
	 	  dataPointWidth: 6,
	       axisX:{
	         interval: 15,    // for every 10minutes
	         intervalType: "minute",
	         valueFormatString: "hh:mm tt"
	       },
	       data: [
	       
	 	  {
	         type: "column",
	 		color: "#6b9eef",
	         dataPoints: datapointsbar
	      },
	 	 {
	         type: "line",
	 		color: "#914468",
	         dataPoints: dataPoints
	      }
	 	 
	      ]
	 });
	 chart.render();  
	  
	  
	  
  
  }
  
  function loadEnlargedDiv()
  {
	  $("#myModal").modal();
  }
  
  function loadBilling()
  {
	  
	  var dataPoints = [];
	  var datapointsbar=[];
	  var bardata=[200,	190,	180,	200,	230,	220,	200,	130,	180,	180,	190,	210,	150,	180,	220,	200,	211,	280,	170,	180,	180,	190,	200,	190,	180,	200,	230,	220,	200,	130,	180,	180,	190,	210,	150,	180,	220,	200,	211,	280,	170,	180,	180,	190,	200,	190,	180,	200,	230,	220,	200,	130,	180,	180,	190,	210,	150,	180,	220,	200,	211];
	  var linedata=[140,	131,	120,	140,	170,	161,	140,	70,	120,	121,	130,	150,	91,	120,	160,	140,	152,	220,	110,	120,	121,	130,	140,	131,	120,	140,	170,	161,	140,	70,	120,	121,	130,	150,	91,	120,	160,	140,	152,	220,	110,	120,	121,	130,	140,	131,	120,	140,	170,	161,	140,	70,	120,	121,	130,	150,	91,	120,	160,	140,	152];
	  
	 var x, y = 10;
	 for( i = 0; i <=60; i++ ) {
	     dataPoints.push({x: new Date(2018,07,06,10,i), y:linedata[i] });
	 }
	 for( i = 0; i <=60; i++ ) {
	     datapointsbar.push({x: new Date(2018,07,06,10,i), y: bardata[i] });
	 }
	 var chart = new CanvasJS.Chart("queueMonitoringTwo",
	     {
	       title:{
	           text: ""
	       },
	 	  dataPointWidth: 6,
	       axisX:{
	         interval: 15,    // for every 10minutes
	         intervalType: "minute",
	         valueFormatString: "hh:mm tt"
	       },
	       data: [
	       
	 	  {
	         type: "column",
	 		color: "#6b9eef",
	         dataPoints: datapointsbar
	      },
	 	 {
	         type: "line",
	 		color: "#914468",
	         dataPoints: dataPoints
	      }
	 	 
	      ]
	 });
	 chart.render();
	  
  }
  
  function showMTSQueue(id) {
	  var ex1 = document.getElementById(id).value;
	  if(ex1 == "all") {
		  loadMTSQueue();
	  } else if(ex1 == "prepaid") {
		  loadMTSQueuePrepaid();
	  } else if(ex1 == "postpaid") {
		  loadMTSQueuePostpaid();
	  }
  }
  
  function loadMTSQueuePostpaid() {
	  var chart = new CanvasJS.Chart("chartContainerMTS", {
			animationEnabled: true,
			axisX: {
				valueFormatString: "DD MMM,YY"
			},
			axisY: {
				title: "Provisioning",
				includeZero: false,
				suffix: "",
					stripLines: [{
			  			value: 3000,
			  			label: "Average"
			  		}]
			},
			legend:{
				cursor: "pointer",
				fontSize: 16,
				itemclick: toggleDataSeries
			},
			toolTip:{
				shared: true
			},
			data: [{
				name: "Postpaid",
				type: "spline",
				yValueFormatString: "#",
				showInLegend: true,
				dataPoints: [
					{ x: new Date(2018,6,30), y: 2500 },
					{ x: new Date(2018,6,31), y: 3000 },
					{ x: new Date(2018,7,1), y: 3800 },
					{ x: new Date(2018,7,2), y: 1700 },
					{ x: new Date(2018,7,3), y: 4600 },
					{ x: new Date(2018,7,4), y: 2500 },
					{ x: new Date(2018,7,5), y: 3350 }
				]
			}
			]
		});
		chart.render();
  }
  
  function loadOrderInPort()
  {
	  
	  var div=document.getElementById("queueMonitoringOneSLA");
	  ////alert(div+" "+div.innerHTML);
	  //div.innerHTML="";
	  div.innerHTML=' <div  id="queueMonitoringOneBar" style="height: 250px; width: 100%;"></div>';
	  var dataPoints = [];
	  var datapointsbar=[];
	  var bardata=[100,	90,	80,	100,	130,	120,	100,	30,	80,	80,	90,	110,	50,	80,	120,	100,	111,100,	70,	80,	80,	90,	100,	90,	80,	100,	130,	120,	100,	30,	80,	80,	90,	110,	50,	80,	120,	100,	111,	100,	70,	80,	80,	90,	100,	90,	80,	100,	130,	120,	100,	30,	80,	80,	90,	110,	50,	80,	120,	100,111];
	  var linedata=[90,	81,	70,	90,	120,	111,	90,	20,	70,	71,	80,	100,	41,	70,	110,	90,	102,	170,	60,	70,	71,	80,	90,	81,	70,	90,	120,	111,	90,	20,	70,	71,	80,	100,	41,	70,	110,	90,	102,	170,	60,	70,	71,	80,	90,	81,	70,	90,	120,	111,	90,	20,	70,	71,	80,	100,	41,	70,	110,	90,	102];
	  
	 var x, y = 10;
	 for( i = 0; i <=60; i++ ) {
		 
		 if(i%15==0)
	     dataPoints.push({x: new Date(2018,07,06,10,i), y:linedata[i] });
	 }
	 for( i = 0; i <=60; i++ ) {
	     datapointsbar.push({x: new Date(2018,07,06,10,i), y: bardata[i] });
	 }
	 var chart = new CanvasJS.Chart("queueMonitoringOneBar",
	     {
	       title:{
	           text: ""
	       },
	 	  dataPointWidth: 6,
	       axisX:{
	         interval: 15,    // for every 10minutes
	         intervalType: "minute",
	         valueFormatString: "hh:mm tt"
	       },
	       data: [
	       
	 	  {
	         type: "column",
	 		color: "#6b9eef",
	         dataPoints: datapointsbar
	      },
	 	 {
	         type: "line",
	 		color: "#914468",
	         dataPoints: dataPoints
	      }
	 	 
	      ]
	 });
	 chart.render();  
	  
	  
	  
  
  }
  
  
  function loadSLAChart()
  {
	  var div=document.getElementById("queueMonitoringOneSLA");
	  ////alert(div+" "+div.innerHTML);
	  //div.innerHTML="";
	  div.innerHTML=' <canvas class="canvasDoughnutSLA"  style=" width: 100%; height: 250px;margin-top:10%;"></canvas>';
	  ////alert("Loading SLA");
	  var a={type:"doughnut",tooltipFillColor:"rgba(51, 51, 51, 0.55)",data:{labels:["Beyond 7 minutes","Within 7 minutes"],datasets:[{data:[30,70],backgroundColor:["#961223","#35911e"]}]},options:{legend:!1,responsive:!1}};
	  $(".canvasDoughnutSLA").each(function(){var b=$(this);new Chart(b,a)})
	  
	  
	  
  }

  
function loadMTSQueuePrepaid() {
	  var chart = new CanvasJS.Chart("chartContainerMTS", {
			animationEnabled: true,
			
			axisX: {
				valueFormatString: "DD MMM,YY"
			},
			axisY: {
				title: "Provisioning",
				includeZero: false,
				suffix: "",
					stripLines: [{
			  			value: 1500,
			  			label: "Average"
			  		}]
			},
			legend:{
				cursor: "pointer",
				fontSize: 16,
				itemclick: toggleDataSeries
			},
			toolTip:{
				shared: true
			},
			data: [
			{
				name: "Prepaid",
				type: "spline",
				yValueFormatString: "#",
				showInLegend: true,
				dataPoints: [
					{ x: new Date(2018,6,30), y: 1500 },
					{ x: new Date(2018,6,31), y: 2000 },
					{ x: new Date(2018,7,1), y: 2200 },
					{ x: new Date(2018,7,2), y: 1300 },
					{ x: new Date(2018,7,3), y: 2400 },
					{ x: new Date(2018,7,4), y: 2000 },
					{ x: new Date(2018,7,5), y: 650 }
				]
			},
			]
		});
		chart.render();
  }
  
  
  function loadMTSQueue() {
	  var chart = new CanvasJS.Chart("chartContainerMTS", {
			animationEnabled: true,
			
			axisX: {
				valueFormatString: "DD MMM,YY"
			},
			axisY: {
				title: "Provisioning",
				includeZero: false,
				suffix: "",
					stripLines: [{
			  			value: 3000,
			  			label: "Average"
			  		}]
			},
			legend:{
				cursor: "pointer",
				fontSize: 16,
				itemclick: toggleDataSeries
			},
			toolTip:{
				shared: true
			},
			data: [{
				name: "Postpaid",
				type: "spline",
				yValueFormatString: "#",
				showInLegend: true,
				dataPoints: [
					{ x: new Date(2018,6,30), y: 2500 },
					{ x: new Date(2018,6,31), y: 3000 },
					{ x: new Date(2018,7,1), y: 3800 },
					{ x: new Date(2018,7,2), y: 1700 },
					{ x: new Date(2018,7,3), y: 4600 },
					{ x: new Date(2018,7,4), y: 2500 },
					{ x: new Date(2018,7,5), y: 3350 }
				]
			},
			{
				name: "Prepaid",
				type: "spline",
				yValueFormatString: "#",
				showInLegend: true,
				dataPoints: [
					{ x: new Date(2018,6,30), y: 1500 },
					{ x: new Date(2018,6,31), y: 2000 },
					{ x: new Date(2018,7,1), y: 2200 },
					{ x: new Date(2018,7,2), y: 1300 },
					{ x: new Date(2018,7,3), y: 2400 },
					{ x: new Date(2018,7,4), y: 2000 },
					{ x: new Date(2018,7,5), y: 650 }
				]
			},
			]
		});
		chart.render();
  }
  
  function showTMTQueue(id) {
	  var ex1 = document.getElementById(id).value;
	  if(ex1 == "all") {
		  loadTMTQueue();
	  } else if(ex1 == "prepaid") {
		  loadTMTQueuePrepaid();
	  } else if(ex1 == "postpaid") {
		  loadTMTQueuePostpaid();
	  }
  }
  
  
function loadTMTQueuePostpaid() {
	  
	  
	  var chart = new CanvasJS.Chart("chartContainerTMT", {
	animationEnabled: true,
			
			axisX: {
				valueFormatString: "DD MMM,YY"
			},
			axisY: {
				title: "Provisioning",
				includeZero: false,
				suffix: "",
					stripLines: [{
			  			value: 2500,
			  			label: "Average"
			  		}]
			},
			legend:{
				cursor: "pointer",
				fontSize: 16,
				itemclick: toggleDataSeries
			},
			toolTip:{
				shared: true
			},
			data: [
				
				{
				name: "Postpaid",
				type: "spline",
				yValueFormatString: "#",
				showInLegend: true,
				dataPoints: [
					{ x: new Date(2018,6,30), y: 2500 },
					{ x: new Date(2018,6,31), y: 3000 },
					{ x: new Date(2018,7,1), y: 3800 },
					{ x: new Date(2018,7,2), y: 1700 },
					{ x: new Date(2018,7,3), y: 4600 },
					{ x: new Date(2018,7,4), y: 2500 },
					{ x: new Date(2018,7,5), y: 3350 }
				]
			}
			]
		});
		chart.render();

	
  }
 function loadTMTQueuePrepaid() {
	  
	  
	  var chart = new CanvasJS.Chart("chartContainerTMT", {
	animationEnabled: true,
			
			axisX: {
				valueFormatString: "DD MMM,YY"
			},
			axisY: {
				title: "Provisioning",
				includeZero: false,
				suffix: "",
					stripLines: [{
			  			value: 1500,
			  			label: "Average"
			  		}]
			},
			legend:{
				cursor: "pointer",
				fontSize: 16,
				itemclick: toggleDataSeries
			},
			toolTip:{
				shared: true
			},
			data: [
				
				
			{
				name: "Prepaid",
				type: "spline",
				yValueFormatString: "#",
				showInLegend: true,
				dataPoints: [
					{ x: new Date(2018,6,30), y: 1500 },
					{ x: new Date(2018,6,31), y: 2000 },
					{ x: new Date(2018,7,1), y: 2200 },
					{ x: new Date(2018,7,2), y: 1300 },
					{ x: new Date(2018,7,3), y: 2400 },
					{ x: new Date(2018,7,4), y: 2000 },
					{ x: new Date(2018,7,5), y: 650 }
				]
			}
			]
		});
		chart.render();

	
  }
  
  function loadTMTQueue() {
	  
	  
	  var chart = new CanvasJS.Chart("chartContainerTMT", {
	animationEnabled: true,
			
			axisX: {
				valueFormatString: "DD MMM,YY"
			},
			axisY: {
				title: "Provisioning",
				includeZero: false,
				suffix: "",
					stripLines: [{
			  			value: 2500,
			  			label: "Average"
			  		}]
			},
			legend:{
				cursor: "pointer",
				fontSize: 16,
				itemclick: toggleDataSeries
			},
			toolTip:{
				shared: true
			},
			data: [
				
				{
				name: "Postpaid",
				type: "spline",
				yValueFormatString: "#",
				showInLegend: true,
				dataPoints: [
					{ x: new Date(2018,6,30), y: 2500 },
					{ x: new Date(2018,6,31), y: 3000 },
					{ x: new Date(2018,7,1), y: 3800 },
					{ x: new Date(2018,7,2), y: 1700 },
					{ x: new Date(2018,7,3), y: 4600 },
					{ x: new Date(2018,7,4), y: 2500 },
					{ x: new Date(2018,7,5), y: 3350 }
				]
			},
			{
				name: "Prepaid",
				type: "spline",
				yValueFormatString: "#",
				showInLegend: true,
				dataPoints: [
					{ x: new Date(2018,6,30), y: 1500 },
					{ x: new Date(2018,6,31), y: 2000 },
					{ x: new Date(2018,7,1), y: 2200 },
					{ x: new Date(2018,7,2), y: 1300 },
					{ x: new Date(2018,7,3), y: 2400 },
					{ x: new Date(2018,7,4), y: 2000 },
					{ x: new Date(2018,7,5), y: 650 }
				]
			}
			]
		});
		chart.render();

	
  }
  
  function loadHelixQueue() {
	  
	  var chart = new CanvasJS.Chart("chartContainerHelix", {
	animationEnabled: true,
			
			axisX: {
				valueFormatString: "DD MMM,YY"
			},
			axisY: {
				title: "Provisioning",
				includeZero: false,
				suffix: "",
					stripLines: [{
			  			value: 5500,
			  			label: "Average"
			  		}]
			},
			legend:{
				cursor: "pointer",
				fontSize: 16,
				itemclick: toggleDataSeries
			},
			toolTip:{
				shared: true
			},
			data: [{
				name: "All",
				type: "spline",
				yValueFormatString: "#",
				showInLegend: true,
				dataPoints: [
					{ x: new Date(2018,6,30), y: 4000 },
					{ x: new Date(2018,6,31), y: 5000 },
					{ x: new Date(2018,7,1), y: 6000 },
					{ x: new Date(2018,7,2), y: 3000 },
					{ x: new Date(2018,7,3), y: 7000 },
					{ x: new Date(2018,7,4), y: 4500 },
					{ x: new Date(2018,7,5), y: 4000 }
				]
			}
			]
		});
		chart.render();

	

	 

	  }

  
  function toggleDataSeries(e){
	  	if (typeof(e.dataSeries.visible) === "undefined" || e.dataSeries.visible) {
	  		e.dataSeries.visible = false;
	  	}
	  	else{
	  		e.dataSeries.visible = true;
	  	}
	  	chart.render();
	  }
  
  
  function healthCheck()
  {
	  
	  var healthcheckarray=[];
	  var healthcheckarray1;

	  var xmlhttp=new XMLHttpRequest();
	  		
	  		   xmlhttp.onreadystatechange=function(){
	  		    ////alert(xmlhttp.status+" "+xmlhttp.readyState)
	  		    if(xmlhttp.status==200&&xmlhttp.readyState==4){
	  		     var a=xmlhttp.responseText;
	  		    
	  		  var b=$.parseJSON(a);
	  		 var d=b.split(",");
	  		  for(var c=0;c<d.length;c++)
	  			  {
	  			  healthcheckarray[c]="'"+d[c].replace('[','').replace(']','')+"'";
	  			  
	  			  }
	  		  alert(healthcheckarray);
	  		
	  		 
	  		alert(healthcheckarray[0]);
	  		    }
	  		    }

	  		  xmlhttp.open("GET", "healthCheck.do", true);
	  		  // xmlhttp.send();






	      $('#tokenfield').tokenfield({
	    	  
	        autocomplete: {
	        	  
	        	source: function (request, response) {
	                jQuery.get("healthCheck.do", {
	                    query: request.term
	                }, function (data) {
	                	//alert(data);
	                    data = $.parseJSON(data);
	                    response(data);
	                });
	            },
	          delay: 100
	        },
	        showAutocompleteOnFocus: true
	      });
	      
	      $("form").submit(function(e) {
	          e.preventDefault();
	          $('.form-data').text( $('#tokenfield').val());
	      });
	  	
	  	
	  	$('#tokenfield').on('tokenfield:createtoken', function (e) {
	      var data = e.attrs.value.split('|')
	      e.attrs.value = data[1] || data[0]
	      e.attrs.label = data[1] ? data[0] + ' (' + data[1] + ')' : data[0]
	    }).on('tokenfield:createdtoken', function (e) {
	    
	      // �ber-simplistic e-mail validation
	      var re = /\S+@\S+\.\S+/
	      var valid = re.test(e.attrs.value)
	      if (!valid) {
	    	  var div=document.getElementById("apps");
	    	  var button=document.getElementById(e.attrs.value);
	    	  if(button==null)
	    	{
	    	  div.innerHTML=div.innerHTML+"<button id="+e.attrs.value+">"+e.attrs.value+"</button>"
	    	}
	      }
	    }).on('tokenfield:removedtoken', function (e) {
	    var div=document.getElementById(e.attrs.value);
	    
	      div.parentNode.removeChild(div);
	    })
  }
  
  
  
  function add_health()
  {
	  document.getElementById("healthcheck").innerHTML='<input type="text" class="form-control"  data-tokens="PGW,Helix" id="tokenfield" /><div id="apps"><button id="PGW">PGW</button><button id="Helix">Helix</button></div>';
	  
	  
	  
  }