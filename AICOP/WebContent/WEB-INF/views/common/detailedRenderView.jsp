<!-- <script src="resources/js/custom/aicop_func.js"></script>
 -->
<!-- <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
 -->
<!-- CSS Files -->
<link rel="stylesheet" href="resources/css/custom/chart.css">
<style>

/*  .checkbtn{
    background-color: #4CAF50;
    border: none;
    color: white;   
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 13px;
    margin: 4px 2px;
    cursor: pointer;
    text-transform: uppercase;
    border-radius: 8px;
}
 */
#bodyContent{
 height: 250px;
}
#bodyContentBtn{
height: 240px;
 overflow-y:scroll;
 margin-bottom:10px;
}

	 
</style>

 <script src=https://cdnjs.cloudflare.com/ajax/libs/flowchart/1.11.3/flowchart.js></script>
 <script type="text/javascript" src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
 <script type="text/javascript" src="resources/js/custom/businessFlow.js"></script>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!-- Navbar -->

 
<!-- <div class="content">
  <div class="container-fluid">-->
   
  <div class="row">
    <div class="col-md-3">
      <div class="card ">
        <div class="card-header card-header-icon card-header-info "  style="background-color: #e6adb2;">
          <h4 class="card-title">Current Port in Req
            <!-- <small class="description">Notifications</small> -->
          </h4>
        </div> 
        <div class="card-body" id="bodyContent">
        
        <div class ="imgdiv">
        	<img src="resources/images/CurrentPort.PNG">
        </div>
         
        </div>
      </div>
    </div>
    
    <div class="col-md-5" >
      <div class="card ">
        <div class="card-header card-header-icon card-header-info "  style="background-color: #e6adb2;">
          <h4 class="card-title">Business Transactions
           <!--  <small class="description">Notifications</small> -->
          </h4>
        </div>
        <div class="card-body" id="bodyContentBtn">
          <!-- <ul class="nav nav-pills nav-pills-warning" role="tablist">   -->
          <!-- <span class="dynamicButtonBTrxn"/> -->
        
        <!--  <span class="dynamicButtonBTrxn">btnlist
         </span> -->
         
         <span class="dynamicButtonTrxn" id="dynamicBtnTitle">
         </span>
         	
         <!--  </ul> -->
          
        </div>
      </div>
    </div>
    
    <div class="col-md-4" >
      <div class="card ">
        <div class="card-header card-header-icon card-header-info "  style="background-color: #e6adb2;">
          <h4 class="card-title">Alerts
           <!--  <small class="description">Notifications</small> -->
          </h4>
        </div>
        <div class="card-body " id="bodyContent">
         <!--  <ul class="nav nav-pills nav-pills-warning" role="tablist">  -->
         
            <ul class="nav nav-pills_custom nav-pills-primary nav-pills-just-icons" role="tablist"> 
        	
        	<li class="nav-item_custom">
              <a class="nav-link_custom active" data-toggle="tab" href="#openMajors" role="tablist" data-toggle="tooltip" title="Open Majors" onclick="replaceBell()">
                <i class="material-icons">notification_important</i>
              </a>
            </li>
            
            
            <li class="nav-item_custom">
              <a class="nav-link_custom" data-toggle="tab" href="#otherAlerts" role="tablist" data-toggle="tooltip" title="Other Alerts" onclick="replaceexclamation()">
                <i class="material-icons">history</i>
              </a>
            </li>
          <div class="tab-content tab-space">
            <div class="tab-pane active" id="openMajors">
            
            
            
              <marquee scrollamount=2 onmouseout="this.start()"
							onmouseover="this.stop()" behavior="scroll" direction="up">
							<span class="blink"><b style="color:#FF6600;">1801040252 - OPOM</b></span>
							
							<b style="color:black;"> - Unable to place porting orders - Stuck
							in Order Summary Page</b> <br>
							<br>
							<span class="blink"><b style="color:#FF6600;">1801040276 - MyOptus</b></span><b style="color:black;">- App crashes frequently</b>
						</marquee>

            </div>
        
          </div>
          
          </ul>          
          
          
        </div>
      </div>
    </div>
   
  </div>
  
  <!-- <div class="row"> -->
   <div class="col-md-12">
      <div class="card ">
        <div class="card-header card-header-icon card-header-info "  style="background-color: #e6adb2;">
          <h4 class="card-title">Business Process Flow
           <!--  <small class="description">Notifications</small> -->
          </h4>
        </div>
        <div class="card-body ">
        <br/><br/>
        <!-- Business Flow Diagram -->
        <div class="detLink">
        <br/><br/>
        <svg width="1100" height="500" id="svgEdit"  transform="scale(1.14) translate(100,0)">
        <!--First phase-->
        <g id="firstPhase">
             <rect x="81" y="50" width="130" height="180" class="rectmain" id="CRMBCCRect"/>
             <text x="146" y="65" font-size="11" fill="black" text-anchor="middle" class="textClassBold">CRM-BCC/WSG/OPOM</text>
             <rect x="100" y="75" rx="15" width="92" height="60" id="PortINRect"/>
             <text x="146" y="100" font-size="11" fill="black" text-anchor="middle" class="textClass">Port IN initiated</text>
             <text x="146" y="110" font-size="11" fill="black" text-anchor="middle" class="textClass">in CRM</text>
             <rect x="100" y="150" rx="15" width="92" height="60" id="CRMNotiRect"/>
             <text x="146" y="180" font-size="11" fill="black" text-anchor="middle" class="textClass">CRM is notified</text>
             <rect x="96" y="250" width="100" height="80" rx="10" ry="10" id="ellipseCarrier" />
             <text x="146" y="270" font-size="11" fill="black" text-anchor="middle" class="textClass">Intimate number</text>
             <text x="146" y="285" font-size="11" fill="black" text-anchor="middle" class="textClass">inventory of</text>
             <text x="146" y="300" font-size="11" fill="black" text-anchor="middle" class="textClass">assigned carrier</text>
             <rect x="96" y="350" width="100" height="80" rx="10" ry="10" id="activationSystemRect" />
             <text x="146" y="380" font-size="11" fill="black" text-anchor="middle" class="textClass">Activation system</text>
             <text x="146" y="395" font-size="11" fill="black" text-anchor="middle" class="textClass">completes the</text>
             <text x="146" y="410" font-size="11" fill="black" text-anchor="middle" class="textClass">activation</text>
        </g>
             <!--Second phase-->
        <g id="secondPhase">
             <rect x="280" y="50" width="140" height="380" id="MiddlewareRect"/>
             <text x="350" y="65" font-size="11" fill="black" text-anchor="middle" class="textClassBold">Middleware-MTS/SDP</text>
             <rect x="295" y="75" rx="15" width="110" height="60" id="MiddleReceiveRect"/>
             <text x="350" y="100" font-size="11" fill="black" text-anchor="middle" class="textClass">Middleware receives</text>
             <text x="350" y="115" font-size="11" fill="black" text-anchor="middle" class="textClass">the request</text>
             <rect x="295" y="150" rx="15" width="110" height="60" id="NotifyMiddleRect"/>
             <text x="350" y="180" font-size="11" fill="black" text-anchor="middle" class="textClass">Notify the rejection</text>
             <text x="350" y="195" font-size="11" fill="black" text-anchor="middle" class="textClass">message to CRM</text>
             <rect x="295" y="225" rx="15" width="110" height="60" id="TriggerMiddleRect"/>
             <text x="350" y="250" font-size="11" fill="black" text-anchor="middle" class="textClass">Trigger the cut</text>
             <text x="350" y="265" font-size="11" fill="black" text-anchor="middle" class="textClass">over notification</text>
             <rect x="295" y="300" rx="15" width="110" height="60" id="NotifyRejectRect"/>
             <text x="350" y="320" font-size="11" fill="black" text-anchor="middle" class="textClass">Notify the rejection</text>
             <text x="350" y="335" font-size="11" fill="black" text-anchor="middle" class="textClass">message to CRM</text>
             <rect x="295" y="375" rx="15" width="110" height="35" id="InitiationRect"/>
             <text x="350" y="395" font-size="11" fill="black" text-anchor="middle" class="textClass">Initiate activation</text>
          </g>
             <!--Third phase-->
          <g id="thirdPhase">
             <g transform = " translate(450,90) rotate(45,45,45)">
                <rect x="70" y="14" width="70" height="70" id="confirmRect"/>
             </g>
             <text x="538" y="180" font-size="11" fill="black" text-anchor="middle" class="textClass">Confirmed?</text>
             <g transform = " translate(450,240) rotate(45,45,45)">
                <rect x="70" y="9" width="70" height="70" id="disconnectRect"/>
             </g>
             <text x="538" y="320" font-size="11" fill="black" text-anchor="middle" class="textClass">Disconnect</text>
             <text x="440" y="175" font-size="11" fill="black" text-anchor="middle" class="textClass">No</text>
             <text x="440" y="235" font-size="11" fill="black" text-anchor="middle" class="textClass">Yes</text>
             <text x="440" y="320" font-size="11" fill="black" text-anchor="middle" class="textClass">No</text>
             <text x="440" y="385" font-size="11" fill="black" text-anchor="middle" class="textClass">Yes</text>
             <text x="538" y="335" font-size="11" fill="black" text-anchor="middle" class="textClass">Completed?</text>
          </g>
             <!--Forth phase-->
          <g id="forthPhase">
             <rect x="650" y="50" width="140" height="410" id="PopiRect"/>
             <text x="720" y="65" font-size="11" fill="black" text-anchor="middle" class="textClassBold">POPI</text>
             <rect x="665" y="75" rx="15" width="110" height="60" id="RcvReqRect"/>
             <text x="720" y="100" font-size="11" fill="black" text-anchor="middle" class="textClass">Receives</text>
             <text x="720" y="115" font-size="11" fill="black" text-anchor="middle" class="textClass">the request</text>
             <rect x="665" y="150" rx="15" width="110" height="60" id="RcvRespRect"/>
             <text x="720" y="175" font-size="11" fill="black" text-anchor="middle" class="textClass">Receives</text>
             <text x="720" y="190" font-size="11" fill="black" text-anchor="middle" class="textClass">the response</text>
             <rect x="665" y="225" rx="15" width="110" height="60" id="SendDiscRect"/>
             <text x="720" y="250" font-size="11" fill="black" text-anchor="middle" class="textClass">Sends the</text>
             <text x="720" y="265" font-size="11" fill="black" text-anchor="middle" class="textClass">disconnect request</text>
             <rect x="665" y="300" rx="15" width="110" height="60" id="RcvResp2Rect"/>
             <text x="720" y="325" font-size="11" fill="black" text-anchor="middle" class="textClass">Receives</text>
             <text x="720" y="340" font-size="11" fill="black" text-anchor="middle" class="textClass">the response</text>
             <rect x="665" y="375" rx="15" width="110" height="60" id="BroadcastRect"/>
             <text x="720" y="395" font-size="11" fill="black" text-anchor="middle" class="textClass">Broadcast the</text>
             <text x="720" y="410" font-size="11" fill="black" text-anchor="middle" class="textClass">activation completion</text>
          </g>
            <!--Fifth phase-->
          <g id="fifthPhase">
            <rect x="850" y="75" width="110" height="60" id="LosingRect"/>
            <text x="905" y="100" font-size="11" fill="black" text-anchor="middle" class="textClass">Notify the</text>
            <text x="905" y="115" font-size="11" fill="black" text-anchor="middle" class="textClass">losing carrier</text>
            <rect x="850" y="225" width="125" height="60" id="DisconnectLosingRect"/>
            <text x="911" y="250" font-size="11" fill="black" text-anchor="middle" class="textClass">Disconnection request</text>
            <text x="905" y="265" font-size="11" fill="black" text-anchor="middle" class="textClass">to losing carrier</text>
            <rect x="850" y="375" width="110" height="60" id="NotifiedCarrierRect"/>
            <text x="905" y="400" font-size="11" fill="black" text-anchor="middle" class="textClass">Losing carrier</text>
            <text x="905" y="415" font-size="11" fill="black" text-anchor="middle" class="textClass">is notified</text>
          </g>
          <defs>
              <marker id="arrowhead" markerWidth="10" markerHeight="7" 
              refX="5" refY="3.5" orient="auto">
                <polygon id="point" points="0 0, 10 3.5, 0 7" stroke="white" />
              </marker>
          </defs>
                  <line id="line1" x1="192" y1="105" x2="285" y2="105" stroke="black" stroke-width="1.5" marker-end="url(#arrowhead)"/>
                  <line id="line2" x1="405" y1="105" x2="655" y2="105" stroke="black" stroke-width="1.5" marker-end="url(#arrowhead)" />
                  <line id="line3" x1="775" y1="105" x2="840" y2="105" stroke="black" stroke-width="1.5" marker-end="url(#arrowhead)" />
                  <line id="line4" x1="240" y1="180" x2="202" y2="180" stroke="black" stroke-width="1.5" marker-end="url(#arrowhead)" />
                  <line id="line5" x1="240" y1="180" x2="295" y2="180" stroke="black" stroke-width="1.5"" />
                  <line id="line6" x1="485" y1="180" x2="415" y2="180" stroke="black" stroke-width="1.5" marker-end="url(#arrowhead)" />
                  <line id="line7" x1="665" y1="180" x2="592" y2="180" stroke="black" stroke-width="1.5" marker-end="url(#arrowhead)" />
                  <line id="line8" x1="405" y1="260" x2="655" y2="260" stroke="black" stroke-width="1.5" marker-end="url(#arrowhead)" />
                  <line id="line9" x1="775" y1="260" x2="840" y2="260" stroke="black" stroke-width="1.5" marker-end="url(#arrowhead)" />
                  <line id="line10" x1="775" y1="405" x2="840" y2="405" stroke="black" stroke-width="1.5" marker-end="url(#arrowhead)" />
                  <line id="line11" x1="665" y1="327" x2="595" y2="327" stroke="black" stroke-width="1.5" marker-end="url(#arrowhead)" />
                  <line id="line13" x1="490" y1="327" x2="415" y2="327" stroke="black"stroke-width="1.5" marker-end="url(#arrowhead)" />
                  <line id="line14" x1="295" y1="390" x2="205" y2="390" stroke="black" stroke-width="1.5" marker-end="url(#arrowhead)" />
                  <line id="line15" x1="240" y1="300" x2="240" y2="180" stroke="black" stroke-width="1.5"/>
                  <line id="line31" x1="240" y1="320" x2="240" y2="300" stroke="black" stroke-width="1.5"/>
                  <line id="line30" x1="240" y1="370" x2="240" y2="320" stroke="black" stroke-width="1.5"/>
                  <line id="line16" x1="900" y1="180" x2="785" y2="180" stroke="black" stroke-width="1.5" marker-end="url(#arrowhead)" />
                  <line id="line17" x1="900" y1="135" x2="900" y2="181" stroke="black" stroke-width="1.5"/>
                  <line id="line18" x1="900" y1="327" x2="785" y2="327" stroke="black" stroke-width="1.5" marker-end="url(#arrowhead)" />
                  <line id="line19" x1="900" y1="285" x2="900" y2="328" stroke="black" stroke-width="1.5"/>
                  <line id="line20" x1="535" y1="240" x2="413" y2="240" stroke="black" stroke-width="1.5" marker-end="url(#arrowhead)" />
                  <line id="line21" x1="535" y1="229" x2="535" y2="241" stroke="black" stroke-width="1.5"/>
                  <line id="line22" x1="150" y1="470" x2="720" y2="470" stroke="black" stroke-width="1.5"/>
                  <line id="line23" x1="150" y1="430" x2="150" y2="471" stroke="black" stroke-width="1.5"/>
                  <line id="line24" x1="720" y1="471" x2="720" y2="445" stroke="black" stroke-width="1.5" marker-end="url(#arrowhead)"/>
                  <line id="line25" x1="198" y1="370" x2="240" y2="370" stroke="black" stroke-width="1.5"/>
            	  <line id="line26" x1="295" y1="320" x2="240" y2="320" stroke="black" stroke-width="1.5"/>
            	  <line id="line27" x1="240" y1="300" x2="205" y2="300" stroke="black" stroke-width="1.5" marker-end="url(#arrowhead)"/>
              	  <line id="line28" x1="538" y1="390" x2="415" y2="390" stroke="black" stroke-width="1.5" marker-end="url(#arrowhead)"></line>
                  <line id="line29" x1="538" y1="375" x2="538" y2="391" stroke="black" stroke-width="1.5"/>
             <g>
             <text x="240" y="112" font-size="20" fill="black" text-anchor="middle" class="textClass">>></text>
             <a href="detailedListView.do">
             <circle  cx="240" cy="104" r="15" style="fill:red">
                <animate id="animation1" attributeName="opacity" from="0" to="0.5" dur="1s" begin="0s;animation2.end" />
                <animate id="animation2"attributeName="opacity" from="0.5" to="0" dur="1s"begin="animation1.end" />
             </circle >
             </a>
             </g>
       </svg>
  </div>
  </div>
  <br/><br/>
  <div>
          <!-- Body start -->
          	<!--	<div class="detLink" >
	                    <ul class="nav">
	                        <li id="detailedListViewNav" class="nav-item ">
	                            <a class="nav-link" href="detailedListView.do">
	                              <span class="sidebar-normal"> Detailed View </span>
	                            </a>
	                        </li>
	                    </ul>
	              </div>-->
	                    
	              <div>
	                    <c:set var="detid" value="${detailList}"/>
						<c:if test="${detid.equals('success')}">
						<jsp:include page="/WEB-INF/views/common/detailedView.jsp" />
						</c:if>	
				</div>
         
         <!-- Body end -->
         
         <div id="imgdisp" >
         
         </div>
         
        </div>
      </div>
    </div>
    
   <!--  </div> -->
   
   <script>
   if(window.location.href.indexOf("detailedListView") > -1) 
   {
	   $('.detLink') .hide();
   }
   </script>
  
