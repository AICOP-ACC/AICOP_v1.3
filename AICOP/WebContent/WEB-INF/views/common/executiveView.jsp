<!-- Css Files-->
  <!-- <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">  --> 
  <link rel="stylesheet" type="text/css" href="resources/css/custom/tokenfield_jui.css"> 
 <link rel="stylesheet" type="text/css" href="resources/css/custom/tokenfield.css">
 

<style>
.item {
    background: lightgrey;
    border: 1px solid darkgrey;
}
</style>
  <!-- JS Files -->
  <script src="resources/js/custom/tokenfield.js"></script>
<!-- <script src="resources/js/custom/aicop_func.js"></script>
 -->
<!-- <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
 -->
<!-- CSS Files -->
<script src="resources/js/custom/popper.min.js" ></script>
    <script src="resources/js/custom/bootstrap.min.js" ></script>
 <script src=https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js></script>
 <script src=https://cdnjs.cloudflare.com/ajax/libs/flowchart/1.11.3/flowchart.js></script>
 <script type="text/javascript" src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
 

<script src="resources/js/custom/Chart.bundle.js"></script>
  <script src="resources/js/custom/utils.js"></script>

    <div class="col-md-5">
      <div class="card ">
        <div class="card-header card-header-icon card-header-info ">
        <div class="card-icon">
              <i class="material-icons">notifications_active</i>
            </div>
          <h4 class="card-title">Service Impacts -
            <small class="description">Notifications</small>
          </h4>
        </div>
        <div class="card-body ">
<!--           <ul class="nav nav-pills nav-pills-warning" role="tablist">
 -->          <ul class="nav nav-pills_custom nav-pills-primary nav-pills-just-icons" role="tablist">
  <li class="nav-item_custom">
 <!--  health check Change the onclick function to add token for the below line-->
              <a class="nav-link_custom active" data-toggle="tab" href="#healthcheck" role="tablist" data-toggle="tooltip" title="Health Check"  onclick="addToken()" >
                <i class="fa fa-heartbeat"></i>
              </a>
            </li>
              <li class="nav-item_custom">
              <a class="nav-link_custom" data-toggle="tab" href="#incidentTrends" role="tablist" data-toggle="tooltip" title="Incident Trend"   onclick="replaceexclamation()" >
                <i class="material-icons">poll</i>
              </a>
            </li>
            <li class="nav-item_custom">
              <a class="nav-link_custom" data-toggle="tab" href="#otherAlerts" role="tablist" data-toggle="tooltip" title="Other Alerts" onclick="replaceexclamation()">
                <i class="material-icons">error</i>
              </a>
            </li>
            <li class="nav-item_custom">
              <a class="nav-link_custom" data-toggle="tab" href="#openMajors" role="tablist" data-toggle="tooltip" title="Open Majors" onclick="replaceBell()">
                <i class="material-icons">notification_important</i>
              </a>
            </li>
          </ul>
          <div class="tab-content tab-space">
            <div class="tab-pane" id="openMajors">
             <script>replaceBell()</script>
            </div>
            <div class="tab-pane" id="otherAlerts">
              <br>Other Alerts will be displayed
            </div>
            <div class="tab-pane" id="incidentTrends">
             
          
   <div style="width: 400px;height: 310px;">
<canvas id="canvas" height="200" class="chartjs-render-monitor" width="400" style="display: block; width: 400px; height: 210px;"></canvas>
<div>
<!--Table-->
<table id="tablePreview" class="table">
<!--Table head-->
  <thead>
    <tr>
      <th>Category</th>
      <th>Avg. Count</th>
      <th>Today's Count</th>
      
    </tr>
  </thead>
  <!--Table head-->
  <!--Table body-->
  <tbody>
    <tr>
      <th scope="row">Stucked Order</th>
      <td>Mark</td>
      <td>Otto</td>
     
    </tr>
   
   
  </tbody>
  <!--Table body-->
</table>
<!--Table-->
</div>
	</div>
            </div>
			<!--  health check Change the onclick function to add token for the below line-->
            <div class="tab-pane active" id="healthcheck"><script>addToken()
</script> </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-7">
      <div class="card ">
        <div class="card-header card-header-icon card-header-info">
         
        <div class="card-icon" id="title">
              <i class="material-icons">timeline</i>
            </div>
          <h4 class="card-title">Business Flow -
            <small class="description" id="navigation">           <span onclick="loadInitialChart()">     BSS</span></small>
           
          </h4>
          <p class="card-category">No of Invoices Generated</p>
        </div>
        <div class="card-body ">
        
          <div class="row">
            <div class="col-md-12">
              <div class="tab-content" id="businessFlow">
                						<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.2/raphael-min.js"></script>
                						<div id="tree">
                							<div class="chart" id="basic-example" style="width:100%;height:357px;"></div>
									    <script>
									        new Treant( chart_config );
									    </script>
									    	</div>
						<div>
							<textarea id="code" style="width: 100%;display:none;" rows="11">
								st=>start: Start|past:>javascript:test()
											 orderCapture=>operation: Order Capture:>javascript:test()
								sub1=>subroutine: My Subroutine
								orderValidation=>operation: Order Validation
								orderSubmission=>operation: Order Submission
								op3=>operation: provisioning
								PortingOrders=>operation: Porting Orders:>javascript:loadNewFlowChart()
								NonPortingOrders=>operation: Non Porting Orders 
								provisioning=>operation: Provisioning 
								billing=>operation: Billing 
								orderComp=>operation: Order Completion 
								provcond=>condition: Porting?
								e=>end: Into admin panel
								
								orderCapture(right)->orderValidation(right)->orderSubmission(right)->provcond(up)
								provcond(yes)->PortingOrders->provisioning->billing->orderComp
								provcond(no)->NonPortingOrders->provisioning->billing->orderComp
								
								
							</textarea>
							<textarea id="code1" style="width: 100%;display:none;" rows="11">
								PortINInitiatedinCRM=>operation: Port IN Initiated in CRM
								CRMisNotified=>operation: CRM is Notified
								IntimateNo.OfInventoryofAssignedCarrier=>operation: Intimate No.Of Inventory of Assigned Carrier
								ActivationSystemCompletestheActivation=>operation: Activation System Completes the Activation
								MiddlewarereceivetheRequest=>operation: Middleware receive the Request
								NotifytheRejectionMessagetoCRM=>operation: Notify the Rejection Message to CRM
								TriggertheCutoverNotification=>operation: Trigger the Cutover Notification
								InitiateActivation=>operation: Initiate Activation
								ReceivestheRequest=>operation: Receives the Request
								ReceivestheResponseforNotifyRequest=>operation: Receives the Response for Notify Request
								SendstheDisconnectRequest=>operation: Sends the Disconnect Request
								BroadcasttheActivationCompletion=>operation: Broadcast the Activation Completion
								NotifytheLosingCarrier=>operation: Notify the Losing Carrier
								DisconnectionrequesttoLosingCarrier=>operation: Disconnection request to Losing Carrier
								Losingcarrierisnotified=>operation: Losing carrier is notified
								ReceivestheResponseforDisconnectRequest=>operation: Receives the Response for Disconnect Request
								NotifiedtheRejectionMessagetoCRM=>operation: Notified the Rejection Message to CRM
								Confirmed?=>condition: Confirmed?
								DisconnectCompleted?=>condition: Disconnect Completed?
								e=>end: Into admin panel
								PortINInitiatedinCRM(right)->MiddlewarereceivetheRequest(right)->ReceivestheRequest(right)->NotifytheLosingCarrier->ReceivestheResponseforNotifyRequest->Confirmed?->ReceivestheResponseforDisconnectRequest->DisconnectCompleted?
								Confirmed?(yes)->TriggertheCutoverNotification->SendstheDisconnectRequest->DisconnectionrequesttoLosingCarrier->ReceivestheResponseforDisconnectRequest
								Confirmed?(no)->NotifytheRejectionMessagetoCRM->CRMisNotified
								DisconnectCompleted?(yes)->InitiateActivation->ActivationSystemCompletestheActivation->BroadcasttheActivationCompletion->Losingcarrierisnotified
								DisconnectCompleted?(no)->NotifiedtheRejectionMessagetoCRM->CRMisNotified
							</textarea>

						</div>
						
						<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
    
      <!-- Modal content-->
      <div class="modal-content" id="exapandedflowchart">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Expanded flow Chart</h4>
        </div>
        <div class="modal-body" id="modalbody" style="height:100px;overflow-x:scroll">
				<svg height="1276.5322265625" version="1.1" width="705.57421875" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="overflow: hidden; position: relative; left: -0.328125px;" viewBox="0 0 470.3828125 851.021484375" preserveAspectRatio="xMidYMid meet"><desc style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Created with Raphaël @@VERSION</desc><defs style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><path stroke-linecap="round" d="M5,0 0,2.5 5,5z" id="raphael-marker-block" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></path><marker id="raphael-marker-endblock33-obj73" markerHeight="3" markerWidth="3" orient="auto" refX="1.5" refY="1.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><use xlink:href="#raphael-marker-block" transform="rotate(180 1.5 1.5) scale(0.6,0.6)" stroke-width="1.6667" fill="black" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use></marker><marker id="raphael-marker-endblock33-obj74" markerHeight="3" markerWidth="3" orient="auto" refX="1.5" refY="1.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><use xlink:href="#raphael-marker-block" transform="rotate(180 1.5 1.5) scale(0.6,0.6)" stroke-width="1.6667" fill="black" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use></marker><marker id="raphael-marker-endblock33-obj75" markerHeight="3" markerWidth="3" orient="auto" refX="1.5" refY="1.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><use xlink:href="#raphael-marker-block" transform="rotate(180 1.5 1.5) scale(0.6,0.6)" stroke-width="1.6667" fill="black" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use></marker><marker id="raphael-marker-endblock33-obj76" markerHeight="3" markerWidth="3" orient="auto" refX="1.5" refY="1.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><use xlink:href="#raphael-marker-block" transform="rotate(180 1.5 1.5) scale(0.6,0.6)" stroke-width="1.6667" fill="black" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use></marker><marker id="raphael-marker-endblock33-obj77" markerHeight="3" markerWidth="3" orient="auto" refX="1.5" refY="1.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><use xlink:href="#raphael-marker-block" transform="rotate(180 1.5 1.5) scale(0.6,0.6)" stroke-width="1.6667" fill="black" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use></marker><marker id="raphael-marker-endblock33-obj78" markerHeight="3" markerWidth="3" orient="auto" refX="1.5" refY="1.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><use xlink:href="#raphael-marker-block" transform="rotate(180 1.5 1.5) scale(0.6,0.6)" stroke-width="1.6667" fill="black" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use></marker><marker id="raphael-marker-endblock33-obj80" markerHeight="3" markerWidth="3" orient="auto" refX="1.5" refY="1.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><use xlink:href="#raphael-marker-block" transform="rotate(180 1.5 1.5) scale(0.6,0.6)" stroke-width="1.6667" fill="black" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use></marker><marker id="raphael-marker-endblock33-obj82" markerHeight="3" markerWidth="3" orient="auto" refX="1.5" refY="1.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><use xlink:href="#raphael-marker-block" transform="rotate(180 1.5 1.5) scale(0.6,0.6)" stroke-width="1.6667" fill="black" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use></marker><marker id="raphael-marker-endblock33-obj83" markerHeight="3" markerWidth="3" orient="auto" refX="1.5" refY="1.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><use xlink:href="#raphael-marker-block" transform="rotate(180 1.5 1.5) scale(0.6,0.6)" stroke-width="1.6667" fill="black" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use></marker><marker id="raphael-marker-endblock33-obj84" markerHeight="3" markerWidth="3" orient="auto" refX="1.5" refY="1.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><use xlink:href="#raphael-marker-block" transform="rotate(180 1.5 1.5) scale(0.6,0.6)" stroke-width="1.6667" fill="black" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use></marker><marker id="raphael-marker-endblock33-obj85" markerHeight="3" markerWidth="3" orient="auto" refX="1.5" refY="1.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><use xlink:href="#raphael-marker-block" transform="rotate(180 1.5 1.5) scale(0.6,0.6)" stroke-width="1.6667" fill="black" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use></marker><marker id="raphael-marker-endblock33-obj86" markerHeight="3" markerWidth="3" orient="auto" refX="1.5" refY="1.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><use xlink:href="#raphael-marker-block" transform="rotate(180 1.5 1.5) scale(0.6,0.6)" stroke-width="1.6667" fill="black" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use></marker><marker id="raphael-marker-endblock33-obj88" markerHeight="3" markerWidth="3" orient="auto" refX="1.5" refY="1.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><use xlink:href="#raphael-marker-block" transform="rotate(180 1.5 1.5) scale(0.6,0.6)" stroke-width="1.6667" fill="black" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use></marker><marker id="raphael-marker-endblock33-obj90" markerHeight="3" markerWidth="3" orient="auto" refX="1.5" refY="1.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><use xlink:href="#raphael-marker-block" transform="rotate(180 1.5 1.5) scale(0.6,0.6)" stroke-width="1.6667" fill="black" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use></marker><marker id="raphael-marker-endblock33-obj91" markerHeight="3" markerWidth="3" orient="auto" refX="1.5" refY="1.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><use xlink:href="#raphael-marker-block" transform="rotate(180 1.5 1.5) scale(0.6,0.6)" stroke-width="1.6667" fill="black" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use></marker><marker id="raphael-marker-endblock33-obj92" markerHeight="3" markerWidth="3" orient="auto" refX="1.5" refY="1.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><use xlink:href="#raphael-marker-block" transform="rotate(180 1.5 1.5) scale(0.6,0.6)" stroke-width="1.6667" fill="black" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use></marker><marker id="raphael-marker-endblock33-obj93" markerHeight="3" markerWidth="3" orient="auto" refX="1.5" refY="1.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><use xlink:href="#raphael-marker-block" transform="rotate(180 1.5 1.5) scale(0.6,0.6)" stroke-width="1.6667" fill="black" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use></marker><marker id="raphael-marker-endblock33-obj94" markerHeight="3" markerWidth="3" orient="auto" refX="1.5" refY="1.5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><use xlink:href="#raphael-marker-block" transform="rotate(180 1.5 1.5) scale(0.6,0.6)" stroke-width="1.6667" fill="black" stroke="none" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);"></use></marker></defs><rect x="0" y="0" width="38.5625" height="57.390625" rx="0" ry="0" fill="#62aa3b" stroke="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" stroke-width="1.5" class="flowchart" id="PortINInitiatedinCRM" transform="matrix(1,0,0,1,27.7344,7.8047)"></rect><text x="5" y="28.6953125" text-anchor="start" font-family="Helvetica" font-size="8px" stroke="none" fill="#ffffff" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: Helvetica; font-size: 8px; font-weight: normal;" id="PortINInitiatedinCRMt" class="flowchartt" font="normal" font-weight="normal" transform="matrix(1,0,0,1,27.7344,7.8047)" stroke-width="1"><tspan dy="-16.6875" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Port</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">IN</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Initiated</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">in</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">CRM</tspan></text><rect x="0" y="0" width="52.453125" height="47.796875" rx="0" ry="0" fill="#62aa3b" stroke="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" stroke-width="1.5" class="flowchart" id="MiddlewarereceivetheRequest" transform="matrix(1,0,0,1,97.0859,12.6016)"></rect><text x="5" y="23.8984375" text-anchor="start" font-family="Helvetica" font-size="8px" stroke="none" fill="#ffffff" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: Helvetica; font-size: 8px; font-weight: normal;" id="MiddlewarereceivetheRequestt" class="flowchartt" font="normal" font-weight="normal" transform="matrix(1,0,0,1,97.0859,12.6016)" stroke-width="1"><tspan dy="-11.890625" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Middleware</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">receive</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">the</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Request</tspan></text><rect x="0" y="0" width="43.890625" height="38.1875" rx="0" ry="0" fill="#62aa3b" stroke="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" stroke-width="1.5" class="flowchart" id="ReceivestheRequest" transform="matrix(1,0,0,1,184.6094,17.4063)"></rect><text x="5" y="19.09375" text-anchor="start" font-family="Helvetica" font-size="8px" stroke="none" fill="#ffffff" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: Helvetica; font-size: 8px; font-weight: normal;" id="ReceivestheRequestt" class="flowchartt" font="normal" font-weight="normal" transform="matrix(1,0,0,1,184.6094,17.4063)" stroke-width="1"><tspan dy="-7.09375" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Receives</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">the</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Request</tspan></text><rect x="0" y="0" width="36.78125" height="47.796875" rx="0" ry="0" fill="#62aa3b" stroke="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" stroke-width="1.5" class="flowchart" id="NotifytheLosingCarrier" transform="matrix(1,0,0,1,267.125,12.6016)"></rect><text x="5" y="23.8984375" text-anchor="start" font-family="Helvetica" font-size="8px" stroke="none" fill="#ffffff" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: Helvetica; font-size: 8px; font-weight: normal;" id="NotifytheLosingCarriert" class="flowchartt" font="normal" font-weight="normal" transform="matrix(1,0,0,1,267.125,12.6016)" stroke-width="1"><tspan dy="-11.890625" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Notify</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">the</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Losing</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Carrier</tspan></text><rect x="0" y="0" width="47.5625" height="67" rx="0" ry="0" fill="#62aa3b" stroke="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" stroke-width="1.5" class="flowchart" id="ReceivestheResponseforNotifyRequest" transform="matrix(1,0,0,1,261.7344,73.3984)"></rect><text x="5" y="33.5" text-anchor="start" font-family="Helvetica" font-size="8px" stroke="none" fill="#ffffff" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: Helvetica; font-size: 8px; font-weight: normal;" id="ReceivestheResponseforNotifyRequestt" class="flowchartt" font="normal" font-weight="normal" transform="matrix(1,0,0,1,261.7344,73.3984)" stroke-width="1"><tspan dy="-21.4921875" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Receives</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">the</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Response</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">for</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Notify</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Request</tspan></text><path fill="#62aa3b" stroke="#000000" d="M21.333984375,10.6669921875L0,21.333984375L42.66796875,42.66796875L85.3359375,21.333984375L42.66796875,0L0,21.333984375" stroke-width="1.5" font="normal" font-family="Helvetica" font-weight="normal" id="Confirmed?" class="flowchart" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Helvetica; font-weight: normal;" transform="matrix(1,0,0,1,242.8477,165.5645)"></path><text x="23.833984375" y="21.333984375" text-anchor="start" font-family="Helvetica" font-size="8px" stroke="none" fill="#ffffff" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: Helvetica; font-size: 8px; font-weight: normal;" id="Confirmed?t" class="flowchartt" font="normal" font-weight="normal" transform="matrix(1,0,0,1,242.8477,165.5645)" stroke-width="1"><tspan dy="2.505859375" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Confirmed?</tspan></text><rect x="0" y="0" width="51.125" height="47.796875" rx="0" ry="0" fill="#62aa3b" stroke="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" stroke-width="1.5" class="flowchart" id="TriggertheCutoverNotification" transform="matrix(1,0,0,1,259.9531,230.834)"></rect><text x="5" y="23.8984375" text-anchor="start" font-family="Helvetica" font-size="8px" stroke="none" fill="#ffffff" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: Helvetica; font-size: 8px; font-weight: normal;" id="TriggertheCutoverNotificationt" class="flowchartt" font="normal" font-weight="normal" transform="matrix(1,0,0,1,259.9531,230.834)" stroke-width="1"><tspan dy="-11.890625" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Trigger</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">the</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Cutover</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Notification</tspan></text><rect x="0" y="0" width="51.34375" height="47.796875" rx="0" ry="0" fill="#62aa3b" stroke="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" stroke-width="1.5" class="flowchart" id="SendstheDisconnectRequest" transform="matrix(1,0,0,1,259.8438,301.2324)"></rect><text x="5" y="23.8984375" text-anchor="start" font-family="Helvetica" font-size="8px" stroke="none" fill="#ffffff" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: Helvetica; font-size: 8px; font-weight: normal;" id="SendstheDisconnectRequestt" class="flowchartt" font="normal" font-weight="normal" transform="matrix(1,0,0,1,259.8438,301.2324)" stroke-width="1"><tspan dy="-11.890625" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Sends</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">the</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Disconnect</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Request</tspan></text><rect x="0" y="0" width="61.796875" height="57.390625" rx="0" ry="0" fill="#62aa3b" stroke="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" stroke-width="1.5" class="flowchart" id="DisconnectionrequesttoLosingCarrier" transform="matrix(1,0,0,1,254.6172,366.834)"></rect><text x="5" y="28.6953125" text-anchor="start" font-family="Helvetica" font-size="8px" stroke="none" fill="#ffffff" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: Helvetica; font-size: 8px; font-weight: normal;" id="DisconnectionrequesttoLosingCarriert" class="flowchartt" font="normal" font-weight="normal" transform="matrix(1,0,0,1,254.6172,366.834)" stroke-width="1"><tspan dy="-16.6875" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Disconnection</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">request</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">to</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Losing</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Carrier</tspan></text><rect x="0" y="0" width="51.34375" height="67" rx="0" ry="0" fill="#62aa3b" stroke="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" stroke-width="1.5" class="flowchart" id="ReceivestheResponseforDisconnectRequest" transform="matrix(1,0,0,1,259.8438,437.2246)"></rect><text x="5" y="33.5" text-anchor="start" font-family="Helvetica" font-size="8px" stroke="none" fill="#ffffff" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: Helvetica; font-size: 8px; font-weight: normal;" id="ReceivestheResponseforDisconnectRequestt" class="flowchartt" font="normal" font-weight="normal" transform="matrix(1,0,0,1,259.8438,437.2246)" stroke-width="1"><tspan dy="-21.4921875" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Receives</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">the</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Response</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">for</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Disconnect</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Request</tspan></text><path fill="#62aa3b" stroke="#000000" d="M22.0078125,11.00390625L0,22.0078125L44.015625,44.015625L88.03125,22.0078125L44.015625,0L0,22.0078125" stroke-width="1.5" font="normal" font-family="Helvetica" font-weight="normal" id="DisconnectCompleted?" class="flowchart" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Helvetica; font-weight: normal;" transform="matrix(1,0,0,1,241.5,528.7168)"></path><text x="24.5078125" y="22.0078125" text-anchor="start" font-family="Helvetica" font-size="8px" stroke="none" fill="#ffffff" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: Helvetica; font-size: 8px; font-weight: normal;" id="DisconnectCompleted?t" class="flowchartt" font="normal" font-weight="normal" transform="matrix(1,0,0,1,241.5,528.7168)" stroke-width="1"><tspan dy="-2.2890625" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Disconnect</tspan><tspan dy="9.6" x="24.5078125" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Completed?</tspan></text><rect x="0" y="0" width="46.234375" height="28.59375" rx="0" ry="0" fill="#62aa3b" stroke="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" stroke-width="1.5" class="flowchart" id="InitiateActivation" transform="matrix(1,0,0,1,262.3984,604.9355)"></rect><text x="5" y="14.296875" text-anchor="start" font-family="Helvetica" font-size="8px" stroke="none" fill="#ffffff" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: Helvetica; font-size: 8px; font-weight: normal;" id="InitiateActivationt" class="flowchartt" font="normal" font-weight="normal" transform="matrix(1,0,0,1,262.3984,604.9355)" stroke-width="1"><tspan dy="-2.296875" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Initiate</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Activation</tspan></text><rect x="0" y="0" width="49.234375" height="57.390625" rx="0" ry="0" fill="#62aa3b" stroke="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" stroke-width="1.5" class="flowchart" id="ActivationSystemCompletestheActivation" transform="matrix(1,0,0,1,260.8984,651.334)"></rect><text x="5" y="28.6953125" text-anchor="start" font-family="Helvetica" font-size="8px" stroke="none" fill="#ffffff" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: Helvetica; font-size: 8px; font-weight: normal;" id="ActivationSystemCompletestheActivationt" class="flowchartt" font="normal" font-weight="normal" transform="matrix(1,0,0,1,260.8984,651.334)" stroke-width="1"><tspan dy="-16.6875" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Activation</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">System</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Completes</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">the</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Activation</tspan></text><rect x="0" y="0" width="52.015625" height="47.796875" rx="0" ry="0" fill="#62aa3b" stroke="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" stroke-width="1.5" class="flowchart" id="BroadcasttheActivationCompletion" transform="matrix(1,0,0,1,259.5078,731.3262)"></rect><text x="5" y="23.8984375" text-anchor="start" font-family="Helvetica" font-size="8px" stroke="none" fill="#ffffff" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: Helvetica; font-size: 8px; font-weight: normal;" id="BroadcasttheActivationCompletiont" class="flowchartt" font="normal" font-weight="normal" transform="matrix(1,0,0,1,259.5078,731.3262)" stroke-width="1"><tspan dy="-11.890625" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Broadcast</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">the</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Activation</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Completion</tspan></text><rect x="0" y="0" width="36.34375" height="47.796875" rx="0" ry="0" fill="#62aa3b" stroke="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" stroke-width="1.5" class="flowchart" id="Losingcarrierisnotified" transform="matrix(1,0,0,1,267.3438,801.7246)"></rect><text x="5" y="23.8984375" text-anchor="start" font-family="Helvetica" font-size="8px" stroke="none" fill="#ffffff" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: Helvetica; font-size: 8px; font-weight: normal;" id="Losingcarrierisnotifiedt" class="flowchartt" font="normal" font-weight="normal" transform="matrix(1,0,0,1,267.3438,801.7246)" stroke-width="1"><tspan dy="-11.890625" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Losing</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">carrier</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">is</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">notified</tspan></text><rect x="0" y="0" width="44.890625" height="67" rx="0" ry="0" fill="#62aa3b" stroke="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" stroke-width="1.5" class="flowchart" id="NotifiedtheRejectionMessagetoCRM" transform="matrix(1,0,0,1,364.1016,517.2246)"></rect><text x="5" y="33.5" text-anchor="start" font-family="Helvetica" font-size="8px" stroke="none" fill="#ffffff" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: Helvetica; font-size: 8px; font-weight: normal;" id="NotifiedtheRejectionMessagetoCRMt" class="flowchartt" font="normal" font-weight="normal" transform="matrix(1,0,0,1,364.1016,517.2246)" stroke-width="1"><tspan dy="-21.4921875" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Notified</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">the</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Rejection</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Message</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">to</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">CRM</tspan></text><rect x="0" y="0" width="37.671875" height="38.1875" rx="0" ry="0" fill="#62aa3b" stroke="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" stroke-width="1.5" class="flowchart" id="CRMisNotified" transform="matrix(1,0,0,1,367.7109,611.6309)"></rect><text x="5" y="19.09375" text-anchor="start" font-family="Helvetica" font-size="8px" stroke="none" fill="#ffffff" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: Helvetica; font-size: 8px; font-weight: normal;" id="CRMisNotifiedt" class="flowchartt" font="normal" font-weight="normal" transform="matrix(1,0,0,1,367.7109,611.6309)" stroke-width="1"><tspan dy="-7.09375" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">CRM</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">is</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Notified</tspan></text><rect x="0" y="0" width="44.890625" height="67" rx="0" ry="0" fill="#62aa3b" stroke="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);" stroke-width="1.5" class="flowchart" id="NotifytheRejectionMessagetoCRM" transform="matrix(1,0,0,1,418.9922,153.3984)"></rect><text x="5" y="33.5" text-anchor="start" font-family="Helvetica" font-size="8px" stroke="none" fill="#ffffff" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: Helvetica; font-size: 8px; font-weight: normal;" id="NotifytheRejectionMessagetoCRMt" class="flowchartt" font="normal" font-weight="normal" transform="matrix(1,0,0,1,418.9922,153.3984)" stroke-width="1"><tspan dy="-21.4921875" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Notify</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">the</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Rejection</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">Message</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">to</tspan><tspan dy="9.6" x="5" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">CRM</tspan></text><path fill="none" stroke="#000000" d="M66.296875,36.5C66.296875,36.5,87.73667284287512,36.5,94.83441841781132,36.5" stroke-width="1.5" marker-end="url(#raphael-marker-endblock33-obj73)" font="normal" font-family="Helvetica" font-weight="normal" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Helvetica; font-weight: normal;"></path><path fill="none" stroke="#000000" d="M149.5390625,36.5C149.5390625,36.5,174.62183311581612,36.5,182.36221936054062,36.5" stroke-width="1.5" marker-end="url(#raphael-marker-endblock33-obj74)" font="normal" font-family="Helvetica" font-weight="normal" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Helvetica; font-weight: normal;"></path><path fill="none" stroke="#000000" d="M228.5,36.5C228.5,36.5,256.6378846168518,36.5,264.8814055006951,36.5" stroke-width="1.5" marker-end="url(#raphael-marker-endblock33-obj75)" font="normal" font-family="Helvetica" font-weight="normal" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Helvetica; font-weight: normal;"></path><path fill="none" stroke="#000000" d="M285.515625,60.3984375C285.515625,60.3984375,285.515625,67.42808246612549,285.515625,71.14885157905519" stroke-width="1.5" marker-end="url(#raphael-marker-endblock33-obj76)" font="normal" font-family="Helvetica" font-weight="normal" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Helvetica; font-weight: normal;"></path><path fill="none" stroke="#000000" d="M285.515625,140.3984375C285.515625,140.3984375,285.515625,157.13196491636336,285.515625,163.30898968529436" stroke-width="1.5" marker-end="url(#raphael-marker-endblock33-obj77)" font="normal" font-family="Helvetica" font-weight="normal" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Helvetica; font-weight: normal;"></path><path fill="none" stroke="#000000" d="M285.515625,208.232421875C285.515625,208.232421875,285.515625,222.86743021011353,285.515625,228.58423034101725" stroke-width="1.5" marker-end="url(#raphael-marker-endblock33-obj78)" font="normal" font-family="Helvetica" font-weight="normal" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Helvetica; font-weight: normal;"></path><text x="288.015625" y="213.232421875" text-anchor="start" font-family="Helvetica" font-size="8px" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: Helvetica; font-size: 8px; font-weight: normal;" font="normal" font-weight="normal" stroke-width="1"><tspan dy="2.513671875" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">yes</tspan></text><path fill="none" stroke="#000000" d="M328.18359375,186.8984375C328.18359375,186.8984375,402.76369857788086,186.8984375,416.7474682331085,186.8984375" stroke-width="1.5" marker-end="url(#raphael-marker-endblock33-obj80)" font="normal" font-family="Helvetica" font-weight="normal" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Helvetica; font-weight: normal;"></path><text x="330.68359375" y="181.8984375" text-anchor="start" font-family="Helvetica" font-size="8px" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: Helvetica; font-size: 8px; font-weight: normal;" font="normal" font-weight="normal" stroke-width="1"><tspan dy="2.5078125" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">no</tspan></text><path fill="none" stroke="#000000" d="M285.515625,278.630859375C285.515625,278.630859375,285.515625,293.2658677101135,285.515625,298.98266784101725" stroke-width="1.5" marker-end="url(#raphael-marker-endblock33-obj82)" font="normal" font-family="Helvetica" font-weight="normal" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Helvetica; font-weight: normal;"></path><path fill="none" stroke="#000000" d="M285.515625,349.029296875C285.515625,349.029296875,285.515625,359.7880162000656,285.515625,364.5790083995089" stroke-width="1.5" marker-end="url(#raphael-marker-endblock33-obj83)" font="normal" font-family="Helvetica" font-weight="normal" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Helvetica; font-weight: normal;"></path><path fill="none" stroke="#000000" d="M285.515625,424.224609375C285.515625,424.224609375,285.515625,431.2542543411255,285.515625,434.9750234540552" stroke-width="1.5" marker-end="url(#raphael-marker-endblock33-obj84)" font="normal" font-family="Helvetica" font-weight="normal" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Helvetica; font-weight: normal;"></path><path fill="none" stroke="#000000" d="M285.515625,504.224609375C285.515625,504.224609375,285.515625,520.412719367072,285.515625,526.4674519129348" stroke-width="1.5" marker-end="url(#raphael-marker-endblock33-obj85)" font="normal" font-family="Helvetica" font-weight="normal" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Helvetica; font-weight: normal;"></path><path fill="none" stroke="#000000" d="M285.515625,572.732421875C285.515625,572.732421875,285.515625,595.3673283047974,285.515625,602.6838849730229" stroke-width="1.5" marker-end="url(#raphael-marker-endblock33-obj86)" font="normal" font-family="Helvetica" font-weight="normal" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Helvetica; font-weight: normal;"></path><text x="288.015625" y="577.732421875" text-anchor="start" font-family="Helvetica" font-size="8px" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: Helvetica; font-size: 8px; font-weight: normal;" font="normal" font-weight="normal" stroke-width="1"><tspan dy="2.513671875" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">yes</tspan></text><path fill="none" stroke="#000000" d="M329.53125,550.724609375C329.53125,550.724609375,354.199344702065,550.724609375,361.85994442399533,550.724609375" stroke-width="1.5" marker-end="url(#raphael-marker-endblock33-obj88)" font="normal" font-family="Helvetica" font-weight="normal" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Helvetica; font-weight: normal;"></path><text x="332.03125" y="545.724609375" text-anchor="start" font-family="Helvetica" font-size="8px" stroke="none" fill="#000000" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); text-anchor: start; font-family: Helvetica; font-size: 8px; font-weight: normal;" font="normal" font-weight="normal" stroke-width="1"><tspan dy="2.505859375" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0);">no</tspan></text><path fill="none" stroke="#000000" d="M285.515625,633.529296875C285.515625,633.529296875,285.515625,644.2880162000656,285.515625,649.0790083995089" stroke-width="1.5" marker-end="url(#raphael-marker-endblock33-obj90)" font="normal" font-family="Helvetica" font-weight="normal" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Helvetica; font-weight: normal;"></path><path fill="none" stroke="#000000" d="M285.515625,708.724609375C285.515625,708.724609375,285.515625,723.3596177101135,285.515625,729.0764178410172" stroke-width="1.5" marker-end="url(#raphael-marker-endblock33-obj91)" font="normal" font-family="Helvetica" font-weight="normal" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Helvetica; font-weight: normal;"></path><path fill="none" stroke="#000000" d="M285.515625,779.123046875C285.515625,779.123046875,285.515625,793.7580552101135,285.515625,799.4748553410172" stroke-width="1.5" marker-end="url(#raphael-marker-endblock33-obj92)" font="normal" font-family="Helvetica" font-weight="normal" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Helvetica; font-weight: normal;"></path><path fill="none" stroke="#000000" d="M386.546875,584.224609375C386.546875,584.224609375,386.546875,602.8426766395569,386.546875,609.3880909122527" stroke-width="1.5" marker-end="url(#raphael-marker-endblock33-obj93)" font="normal" font-family="Helvetica" font-weight="normal" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Helvetica; font-weight: normal;"></path><path fill="none" stroke="#000000" d="M441.4375,220.3984375C441.4375,220.3984375,441.4375,606.630859375,441.4375,606.630859375C441.4375,606.630859375,386.546875,606.630859375,386.546875,606.630859375C386.546875,606.630859375,386.546875,608.0523872375488,386.546875,609.3795167654753" stroke-width="1.5" marker-end="url(#raphael-marker-endblock33-obj94)" font="normal" font-family="Helvetica" font-weight="normal" style="-webkit-tap-highlight-color: rgba(0, 0, 0, 0); font-family: Helvetica; font-weight: normal;"></path></svg>
        </div>
        <div class="modal-footer">
                  </div>
      </div>
      
    </div>
  </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
    
    <!-- row 2 start -->
            <div class="row">
                  <div class="col-md-4">
                    <div class="card card-chart" data-count="4">
                      <div class="card-header card-header-info_custom" data-header-animation="true">
                        <div class="ct-chart" id="queueMonitoringOneSLA">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                                                <!-- <svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-bar" style="width: 100%; height: 100%;"><g class="ct-grids"><line y1="120" y2="120" x1="40" x2="235" class="ct-grid ct-vertical"></line><line y1="96" y2="96" x1="40" x2="235" class="ct-grid ct-vertical"></line><line y1="72" y2="72" x1="40" x2="235" class="ct-grid ct-vertical"></line><line y1="48" y2="48" x1="40" x2="235" class="ct-grid ct-vertical"></line><line y1="24" y2="24" x1="40" x2="235" class="ct-grid ct-vertical"></line><line y1="0" y2="0" x1="40" x2="235" class="ct-grid ct-vertical"></line></g><g><g class="ct-series ct-series-a"><line x1="48.125" x2="48.125" y1="120" y2="54.959999999999994" class="ct-bar" ct:value="542" opacity="1"></line><line x1="64.375" x2="64.375" y1="120" y2="66.84" class="ct-bar" ct:value="443" opacity="1"></line><line x1="80.625" x2="80.625" y1="120" y2="81.6" class="ct-bar" ct:value="320" opacity="1"></line><line x1="96.875" x2="96.875" y1="120" y2="26.400000000000006" class="ct-bar" ct:value="780" opacity="1"></line><line x1="113.125" x2="113.125" y1="120" y2="53.64" class="ct-bar" ct:value="553" opacity="1"></line><line x1="129.375" x2="129.375" y1="120" y2="65.64" class="ct-bar" ct:value="453" opacity="1"></line><line x1="145.625" x2="145.625" y1="120" y2="80.88" class="ct-bar" ct:value="326" opacity="1"></line><line x1="161.875" x2="161.875" y1="120" y2="67.92" class="ct-bar" ct:value="434" opacity="1"></line><line x1="178.125" x2="178.125" y1="120" y2="51.84" class="ct-bar" ct:value="568" opacity="1"></line><line x1="194.375" x2="194.375" y1="120" y2="46.8" class="ct-bar" ct:value="610" opacity="1"></line><line x1="210.625" x2="210.625" y1="120" y2="29.28" class="ct-bar" ct:value="756" opacity="1"></line><line x1="226.875" x2="226.875" y1="120" y2="12.599999999999994" class="ct-bar" ct:value="895" opacity="1"></line></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="40" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">J</span></foreignObject><foreignObject style="overflow: visible;" x="56.25" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">F</span></foreignObject><foreignObject style="overflow: visible;" x="72.5" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">M</span></foreignObject><foreignObject style="overflow: visible;" x="88.75" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">A</span></foreignObject><foreignObject style="overflow: visible;" x="105" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">M</span></foreignObject><foreignObject style="overflow: visible;" x="121.25" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">J</span></foreignObject><foreignObject style="overflow: visible;" x="137.5" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">J</span></foreignObject><foreignObject style="overflow: visible;" x="153.75" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">A</span></foreignObject><foreignObject style="overflow: visible;" x="170" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">S</span></foreignObject><foreignObject style="overflow: visible;" x="186.25" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">O</span></foreignObject><foreignObject style="overflow: visible;" x="202.5" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">N</span></foreignObject><foreignObject style="overflow: visible;" x="218.75" y="125" width="30" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 30px; height: 20px;">D</span></foreignObject><foreignObject style="overflow: visible;" y="96" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">0</span></foreignObject><foreignObject style="overflow: visible;" y="72" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">200</span></foreignObject><foreignObject style="overflow: visible;" y="48" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">400</span></foreignObject><foreignObject style="overflow: visible;" y="24" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">600</span></foreignObject><foreignObject style="overflow: visible;" y="0" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">800</span></foreignObject><foreignObject style="overflow: visible;" y="-30" x="0" height="30" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 30px; width: 30px;">1000</span></foreignObject></g></svg> -->
                              <div class="col-md-4 col-sm-4 col-xs-12">
                              <script>loadSLAChart()</script>
                              </div>
               			 </div>
               			 
               			 <div class="col-md-12 col-sm-12 col-xs-12">
                                                <!-- <svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-bar" style="width: 100%; height: 100%;"><g class="ct-grids"><line y1="120" y2="120" x1="40" x2="235" class="ct-grid ct-vertical"></line><line y1="96" y2="96" x1="40" x2="235" class="ct-grid ct-vertical"></line><line y1="72" y2="72" x1="40" x2="235" class="ct-grid ct-vertical"></line><line y1="48" y2="48" x1="40" x2="235" class="ct-grid ct-vertical"></line><line y1="24" y2="24" x1="40" x2="235" class="ct-grid ct-vertical"></line><line y1="0" y2="0" x1="40" x2="235" class="ct-grid ct-vertical"></line></g><g><g class="ct-series ct-series-a"><line x1="48.125" x2="48.125" y1="120" y2="54.959999999999994" class="ct-bar" ct:value="542" opacity="1"></line><line x1="64.375" x2="64.375" y1="120" y2="66.84" class="ct-bar" ct:value="443" opacity="1"></line><line x1="80.625" x2="80.625" y1="120" y2="81.6" class="ct-bar" ct:value="320" opacity="1"></line><line x1="96.875" x2="96.875" y1="120" y2="26.400000000000006" class="ct-bar" ct:value="780" opacity="1"></line><line x1="113.125" x2="113.125" y1="120" y2="53.64" class="ct-bar" ct:value="553" opacity="1"></line><line x1="129.375" x2="129.375" y1="120" y2="65.64" class="ct-bar" ct:value="453" opacity="1"></line><line x1="145.625" x2="145.625" y1="120" y2="80.88" class="ct-bar" ct:value="326" opacity="1"></line><line x1="161.875" x2="161.875" y1="120" y2="67.92" class="ct-bar" ct:value="434" opacity="1"></line><line x1="178.125" x2="178.125" y1="120" y2="51.84" class="ct-bar" ct:value="568" opacity="1"></line><line x1="194.375" x2="194.375" y1="120" y2="46.8" class="ct-bar" ct:value="610" opacity="1"></line><line x1="210.625" x2="210.625" y1="120" y2="29.28" class="ct-bar" ct:value="756" opacity="1"></line><line x1="226.875" x2="226.875" y1="120" y2="12.599999999999994" class="ct-bar" ct:value="895" opacity="1"></line></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="40" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">J</span></foreignObject><foreignObject style="overflow: visible;" x="56.25" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">F</span></foreignObject><foreignObject style="overflow: visible;" x="72.5" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">M</span></foreignObject><foreignObject style="overflow: visible;" x="88.75" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">A</span></foreignObject><foreignObject style="overflow: visible;" x="105" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">M</span></foreignObject><foreignObject style="overflow: visible;" x="121.25" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">J</span></foreignObject><foreignObject style="overflow: visible;" x="137.5" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">J</span></foreignObject><foreignObject style="overflow: visible;" x="153.75" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">A</span></foreignObject><foreignObject style="overflow: visible;" x="170" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">S</span></foreignObject><foreignObject style="overflow: visible;" x="186.25" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">O</span></foreignObject><foreignObject style="overflow: visible;" x="202.5" y="125" width="16.25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 16px; height: 20px;">N</span></foreignObject><foreignObject style="overflow: visible;" x="218.75" y="125" width="30" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 30px; height: 20px;">D</span></foreignObject><foreignObject style="overflow: visible;" y="96" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">0</span></foreignObject><foreignObject style="overflow: visible;" y="72" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">200</span></foreignObject><foreignObject style="overflow: visible;" y="48" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">400</span></foreignObject><foreignObject style="overflow: visible;" y="24" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">600</span></foreignObject><foreignObject style="overflow: visible;" y="0" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">800</span></foreignObject><foreignObject style="overflow: visible;" y="-30" x="0" height="30" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 30px; width: 30px;">1000</span></foreignObject></g></svg> -->
                              <div class="col-md-4 col-sm-4 col-xs-12">
                              <script>loadSLAChart()</script>
                              </div>
               			 </div>
                        </div>
                      </div>
                      <div class="card-body">
                        <div class="card-actions">
                          <button type="button" class="btn btn-danger btn-link fix-broken-card">
                            <i class="material-icons">build</i> Fix Header!
                          </button>
                   
						 <div class="btn-group ">
									<button type="button" class="btn btn-default  dropdown-toggle " style=" width: 110px;padding: 8px 11px;" data-toggle="dropdown"  >Time Range</button>
									<ul class="dropdown-menu" id="timeRangeOM" >
										<li><a href="#">Last 15 minutes</a></li>
										<li><a href="#">Last 30 minutes</a></li>
										<li><a href="#">Last 60 minutes</a></li>
									</ul>
								</div>
								<div class="btn-group col-md-5">
									<button type="button" class="btn btn-default  dropdown-toggle "  style="width: 122px;padding: 8px 18px;" data-toggle="dropdown">Activation</button>
									<ul class="dropdown-menu">
										<li><a href="#">Activation</a></li>
										<li><a href="#">Cease</a></li>
										<li><a href="#">Port In</a></li>
									</ul>
								</div>
							
                        </div>
                        <h4 class="card-title">Order Management</h4>
                        <p class="card-category" id="selectedTime"><script>getSelecteTimerRange();</script></p>
                        
                       
                      </div>
                         <div class="card-footer">
                        <div class="stats col-md-12">
                        
                           <div class="radio col-md-6">
						    <label ><input type="radio" name="optradio" checked onclick="loadSLAChart()">SLA</label>
					   		</div>
					    <div class="radio col-md-6">
					      	<label ><input type="radio" name="optradio" onclick="loadOrderInPort()" >Flow</label>
					    </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4">
                    <div class="card card-chart">
                      <div class="card-header card-header-info_custom" data-header-animation="true">
                        <div class="ct-chart" id="dailySalesChart">
                          <canvas  id="queueMonitoringTwo" style="height: 250px; width: 100%;"></canvas>
                			<script>getOrderData()</script>
                        </div>
                       
                      </div>
                      <div class="card-body">
                        <div class="card-actions">
                          <button type="button" class="btn btn-danger btn-link fix-broken-card">
                            <i class="material-icons">build</i> Fix Header!
                          </button>
						  <div class="btn-group ">
									<button type="button" class="btn btn-default  dropdown-toggle " style=" width: 110px;padding: 8px 11px;" data-toggle="dropdown"  >Time Range</button>
									<ul class="dropdown-menu" id="timeRangeOP" >
										<li><a href="#">Last 15 minutes</a></li>
										<li><a href="#">Last 30 minutes</a></li>
										<li><a href="#">Last 60 minutes</a></li>
									</ul>
								</div>
                        </div>
                        <h4 class="card-title">Order Provisioning</h4>
						<p class="card-category" id="selectedTimeOP"><script>getSelecteTimerRange();</script></p>

                      </div>
                      <div class="card-footer">
                     
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4">
                    <div class="card card-chart" data-count="1">
                      <div class="card-header card-header-info_custom" data-header-animation="true">
                        <div class="ct-chart" id="completedTasksChart">
                        	<!-- <svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-line" style="width: 100%; height: 100%;"><g class="ct-grids"><line x1="40" x2="40" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="65" x2="65" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="90" x2="90" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="115" x2="115" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="140" x2="140" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="165" x2="165" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="190" x2="190" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="215" x2="215" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line y1="120" y2="120" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="96" y2="96" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="72" y2="72" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="48" y2="48" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="24" y2="24" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="0" y2="0" x1="40" x2="240" class="ct-grid ct-vertical"></line></g><g><g class="ct-series ct-series-a"><path d="M 40 92.4 C 65 30 65 30 65 30 C 90 66 90 66 90 66 C 115 84 115 84 115 84 C 140 86.4 140 86.4 140 86.4 C 165 91.2 165 91.2 165 91.2 C 190 96 190 96 190 96 C 215 97.2 215 97.2 215 97.2" class="ct-line"></path><line x1="40" y1="92.4" x2="40.01" y2="92.4" class="ct-point" ct:value="230" opacity="1"></line><line x1="65" y1="30" x2="65.01" y2="30" class="ct-point" ct:value="750" opacity="1"></line><line x1="90" y1="66" x2="90.01" y2="66" class="ct-point" ct:value="450" opacity="1"></line><line x1="115" y1="84" x2="115.01" y2="84" class="ct-point" ct:value="300" opacity="1"></line><line x1="140" y1="86.4" x2="140.01" y2="86.4" class="ct-point" ct:value="280" opacity="1"></line><line x1="165" y1="91.2" x2="165.01" y2="91.2" class="ct-point" ct:value="240" opacity="1"></line><line x1="190" y1="96" x2="190.01" y2="96" class="ct-point" ct:value="200" opacity="1"></line><line x1="215" y1="97.2" x2="215.01" y2="97.2" class="ct-point" ct:value="190" opacity="1"></line></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="40" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">12p</span></foreignObject><foreignObject style="overflow: visible;" x="65" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">3p</span></foreignObject><foreignObject style="overflow: visible;" x="90" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">6p</span></foreignObject><foreignObject style="overflow: visible;" x="115" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">9p</span></foreignObject><foreignObject style="overflow: visible;" x="140" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">12p</span></foreignObject><foreignObject style="overflow: visible;" x="165" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">3a</span></foreignObject><foreignObject style="overflow: visible;" x="190" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">6a</span></foreignObject><foreignObject style="overflow: visible;" x="215" y="125" width="30" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 30px; height: 20px;">9a</span></foreignObject><foreignObject style="overflow: visible;" y="96" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">0</span></foreignObject><foreignObject style="overflow: visible;" y="72" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">200</span></foreignObject><foreignObject style="overflow: visible;" y="48" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">400</span></foreignObject><foreignObject style="overflow: visible;" y="24" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">600</span></foreignObject><foreignObject style="overflow: visible;" y="0" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">800</span></foreignObject><foreignObject style="overflow: visible;" y="-30" x="0" height="30" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 30px; width: 30px;">1000</span></foreignObject></g></svg> -->
                        	<canvas  id="queueMonitoringThree" style="height: 250px; width: 100%;"></canvas>
                   			 <script>getBilling()</script> 
                        </div>
                      </div>
                      <div class="card-body">
                        <div class="card-actions">
                          <button type="button" class="btn btn-danger btn-link fix-broken-card">
                            <i class="material-icons">build</i> Fix Header!
                          </button>
						      <div class="btn-group ">
									<button type="button" class="btn btn-default  dropdown-toggle " style=" width: 110px;padding: 8px 11px;" data-toggle="dropdown"  >Time Range</button>
									<ul class="dropdown-menu" id="timeRangeBill" >
										<li><a href="#">Last 15 minutes</a></li>
										<li><a href="#">Last 30 minutes</a></li>
										<li><a href="#">Last 60 minutes</a></li>
									</ul>
								</div>
                         </div>
                        <h4 class="card-title">Billing Management</h4>
                        <p class="card-category" id="selectedTimeBill"><script>getSelecteTimerRange();</script></p>
                      </div>
                      <div class="card-footer">
                    
                      </div>
                    </div>
                  </div>
                </div>
                <!-- row 2 end -->
                
    
    <!-- row 3 start-->
            <div class="row">
                  <div class="col-md-4">
                    <div class="card card-chart" data-count="4">
                      <div class="card-header card-header-info_custom" data-header-animation="true">
                        <canvas id="helix_chart" style="height: 250px; width: 100%;"></canvas>
                        
                                                    <script>getHelixData()</script>
               			 	
                        
                      </div>
                      <div class="card-body">
                         <div class="card-actions">
                       <div class="btn-group ">
									<button type="button" class="btn btn-default  dropdown-toggle " style=" width: 110px;padding: 8px 11px;" data-toggle="dropdown"  >Time Range</button>
									<ul class="dropdown-menu" id="timeRangeHelix" >
										<li><a href="#">Last 15 minutes</a></li>
										<li><a href="#">Last 30 minutes</a></li>
										<li><a href="#">Last 60 minutes</a></li>
									</ul>
						</div>
						</div>
                        <h4 class="card-title">Helix Queue</h4>
                        <p class="card-category" id="selectedTimeHelix"><script>getSelecteTimerRange();</script></p>
                        
                       
                      </div>
                      <div class="card-footer">
                        
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4">
                    <div class="card card-chart">
                      <div class="card-header card-header-info_custom" data-header-animation="true">
                        <canvas  id="chartContainerTMT" style="height: 250px; width: 100%;">
                        <!-- <svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-line" style="width: 100%; height: 100%;"><g class="ct-grids"><line x1="40" x2="40" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="68.57142857142857" x2="68.57142857142857" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="97.14285714285714" x2="97.14285714285714" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="125.71428571428572" x2="125.71428571428572" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="154.28571428571428" x2="154.28571428571428" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="182.85714285714286" x2="182.85714285714286" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="211.42857142857144" x2="211.42857142857144" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line y1="120" y2="120" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="96" y2="96" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="72" y2="72" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="48" y2="48" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="24" y2="24" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="0" y2="0" x1="40" x2="240" class="ct-grid ct-vertical"></line></g><g><g class="ct-series ct-series-a"><path d="M 40 91.2 C 68.571 79.2 68.571 79.2 68.571 79.2 C 97.143 103.2 97.143 103.2 97.143 103.2 C 125.714 79.2 125.714 79.2 125.714 79.2 C 154.286 64.8 154.286 64.8 154.286 64.8 C 182.857 76.8 182.857 76.8 182.857 76.8 C 211.429 28.8 211.429 28.8 211.429 28.8" class="ct-line"></path><line x1="40" y1="91.2" x2="40.01" y2="91.2" class="ct-point" ct:value="12" opacity="1"></line><line x1="68.57142857142857" y1="79.2" x2="68.58142857142857" y2="79.2" class="ct-point" ct:value="17" opacity="1"></line><line x1="97.14285714285714" y1="103.2" x2="97.15285714285714" y2="103.2" class="ct-point" ct:value="7" opacity="1"></line><line x1="125.71428571428572" y1="79.2" x2="125.72428571428573" y2="79.2" class="ct-point" ct:value="17" opacity="1"></line><line x1="154.28571428571428" y1="64.8" x2="154.29571428571427" y2="64.8" class="ct-point" ct:value="23" opacity="1"></line><line x1="182.85714285714286" y1="76.8" x2="182.86714285714285" y2="76.8" class="ct-point" ct:value="18" opacity="1"></line><line x1="211.42857142857144" y1="28.799999999999997" x2="211.43857142857144" y2="28.799999999999997" class="ct-point" ct:value="38" opacity="1"></line></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="40" y="125" width="28.571428571428573" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 29px; height: 20px;">M</span></foreignObject><foreignObject style="overflow: visible;" x="68.57142857142857" y="125" width="28.571428571428573" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 29px; height: 20px;">T</span></foreignObject><foreignObject style="overflow: visible;" x="97.14285714285714" y="125" width="28.571428571428577" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 29px; height: 20px;">W</span></foreignObject><foreignObject style="overflow: visible;" x="125.71428571428572" y="125" width="28.57142857142857" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 29px; height: 20px;">T</span></foreignObject><foreignObject style="overflow: visible;" x="154.28571428571428" y="125" width="28.57142857142857" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 29px; height: 20px;">F</span></foreignObject><foreignObject style="overflow: visible;" x="182.85714285714286" y="125" width="28.571428571428584" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 29px; height: 20px;">S</span></foreignObject><foreignObject style="overflow: visible;" x="211.42857142857144" y="125" width="30" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 30px; height: 20px;">S</span></foreignObject><foreignObject style="overflow: visible;" y="96" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">0</span></foreignObject><foreignObject style="overflow: visible;" y="72" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">10</span></foreignObject><foreignObject style="overflow: visible;" y="48" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">20</span></foreignObject><foreignObject style="overflow: visible;" y="24" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">30</span></foreignObject><foreignObject style="overflow: visible;" y="0" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">40</span></foreignObject><foreignObject style="overflow: visible;" y="-30" x="0" height="30" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 30px; width: 30px;">50</span></foreignObject></g></svg> -->
                     <script>getTMT()</script> 
                			
                        
                       
                      </div>
                      <div class="card-body">
                        <div class="card-actions">
                          <button type="button" class="btn btn-danger btn-link fix-broken-card">
                            <i class="material-icons">build</i> Fix Header!
                          </button>
						  <div class="btn-group ">
									<button type="button" class="btn btn-default  dropdown-toggle " style=" width: 110px;padding: 8px 11px;" data-toggle="dropdown"  >Time Range</button>
									<ul class="dropdown-menu" id="timeRangeTMT" >
										<li><a href="#">Last 15 minutes</a></li>
										<li><a href="#">Last 30 minutes</a></li>
										<li><a href="#">Last 60 minutes</a></li>
									</ul>
						</div>
                        </div>
                        <h4 class="card-title">TMT Queues</h4>
                        <p class="card-category" id="selectedTimeTMT"><script>getSelecteTimerRange();</script></p>

                      </div>
                       <div class="card-footer">
                    
							 </div>
                      <div class="card-footer">
                        <div class="stats">
                           <div class="iradio_flat-green checked hover" style="position: relative;">
		                <p>
		                
		                <input type="radio" class="flat" name="MobileTypeTmt" id="allTmt" value="all" checked="" required onclick="getTMT()" /> All
                       
                        <input type="radio" class="flat" name="MobileTypeTmt" id="postpaidTmt" value="postpaid" required  onclick="getTMT()" /> Postpaid
                        <input type="radio" class="flat" name="MobileTypeTmt" id="prepaidTmt" value="prepaid" onclick="getTMT()"  /> Prepaid
                      </p>
                      </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4">
                    <div class="card card-chart" data-count="1">
                      <div class="card-header card-header-info_custom" data-header-animation="true">
                        <canvas  id="chartContainerMTS" style="height: 250px; width: 100%;">
                        	<!-- <svg xmlns:ct="http://gionkunz.github.com/chartist-js/ct" width="100%" height="100%" class="ct-chart-line" style="width: 100%; height: 100%;"><g class="ct-grids"><line x1="40" x2="40" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="65" x2="65" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="90" x2="90" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="115" x2="115" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="140" x2="140" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="165" x2="165" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="190" x2="190" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line x1="215" x2="215" y1="0" y2="120" class="ct-grid ct-horizontal"></line><line y1="120" y2="120" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="96" y2="96" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="72" y2="72" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="48" y2="48" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="24" y2="24" x1="40" x2="240" class="ct-grid ct-vertical"></line><line y1="0" y2="0" x1="40" x2="240" class="ct-grid ct-vertical"></line></g><g><g class="ct-series ct-series-a"><path d="M 40 92.4 C 65 30 65 30 65 30 C 90 66 90 66 90 66 C 115 84 115 84 115 84 C 140 86.4 140 86.4 140 86.4 C 165 91.2 165 91.2 165 91.2 C 190 96 190 96 190 96 C 215 97.2 215 97.2 215 97.2" class="ct-line"></path><line x1="40" y1="92.4" x2="40.01" y2="92.4" class="ct-point" ct:value="230" opacity="1"></line><line x1="65" y1="30" x2="65.01" y2="30" class="ct-point" ct:value="750" opacity="1"></line><line x1="90" y1="66" x2="90.01" y2="66" class="ct-point" ct:value="450" opacity="1"></line><line x1="115" y1="84" x2="115.01" y2="84" class="ct-point" ct:value="300" opacity="1"></line><line x1="140" y1="86.4" x2="140.01" y2="86.4" class="ct-point" ct:value="280" opacity="1"></line><line x1="165" y1="91.2" x2="165.01" y2="91.2" class="ct-point" ct:value="240" opacity="1"></line><line x1="190" y1="96" x2="190.01" y2="96" class="ct-point" ct:value="200" opacity="1"></line><line x1="215" y1="97.2" x2="215.01" y2="97.2" class="ct-point" ct:value="190" opacity="1"></line></g></g><g class="ct-labels"><foreignObject style="overflow: visible;" x="40" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">12p</span></foreignObject><foreignObject style="overflow: visible;" x="65" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">3p</span></foreignObject><foreignObject style="overflow: visible;" x="90" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">6p</span></foreignObject><foreignObject style="overflow: visible;" x="115" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">9p</span></foreignObject><foreignObject style="overflow: visible;" x="140" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">12p</span></foreignObject><foreignObject style="overflow: visible;" x="165" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">3a</span></foreignObject><foreignObject style="overflow: visible;" x="190" y="125" width="25" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 25px; height: 20px;">6a</span></foreignObject><foreignObject style="overflow: visible;" x="215" y="125" width="30" height="20"><span class="ct-label ct-horizontal ct-end" xmlns="http://www.w3.org/2000/xmlns/" style="width: 30px; height: 20px;">9a</span></foreignObject><foreignObject style="overflow: visible;" y="96" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">0</span></foreignObject><foreignObject style="overflow: visible;" y="72" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">200</span></foreignObject><foreignObject style="overflow: visible;" y="48" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">400</span></foreignObject><foreignObject style="overflow: visible;" y="24" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">600</span></foreignObject><foreignObject style="overflow: visible;" y="0" x="0" height="24" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 24px; width: 30px;">800</span></foreignObject><foreignObject style="overflow: visible;" y="-30" x="0" height="30" width="30"><span class="ct-label ct-vertical ct-start" xmlns="http://www.w3.org/2000/xmlns/" style="height: 30px; width: 30px;">1000</span></foreignObject></g></svg> -->
                   			 <script>getMTS()</script> 
                        
                      </div>
                      <div class="card-body">
                        <div class="card-actions">
                          <button type="button" class="btn btn-danger btn-link fix-broken-card">
                            <i class="material-icons">build</i> Fix Header!
                          </button>
						   <div class="btn-group ">
									<button type="button" class="btn btn-default  dropdown-toggle " style=" width: 110px;padding: 8px 11px;" data-toggle="dropdown"  >Time Range</button>
									<ul class="dropdown-menu" id="timeRangeMTS" >
										<li><a href="#">Last 15 minutes</a></li>
										<li><a href="#">Last 30 minutes</a></li>
										<li><a href="#">Last 60 minutes</a></li>
									</ul>
						</div>
                         </div> 	
                        <h4 class="card-title">MTS Queue</h4>
  						  <p class="card-category" id="selectedTimeMTS"><script>getSelecteTimerRange();</script></p>
                      </div>
                       <div class="card-footer">
                     
							 </div>
                      <div class="card-footer">
                        <div class="stats">
	                           <div class="iradio_flat-green checked hover" style="position: relative;">
	                		<p>
	                			
	                        <input type="radio" class="flat" name="MobileTypeMts" id="allMts" value="all" checked="" required onclick="getMTS()" /> All
	                       
	                        <input type="radio" class="flat" name="MobileTypeMts" id="postpaidMts" value="postpaid"  required onclick="getMTS()"/> Postpaid
	                        <input type="radio" class="flat" name="MobileTypeMts" id="prepaidMts" value="prepaid" onclick="getMTS()"/>Prepaid
	                      </p>
                      </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- row 3 end -->
    
    
                
                <div class="row">
                  <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                      <div class="card-header card-header-warning card-header-icon">
                        <div class="card-icon">
                           <i class="material-icons">devices</i>
                        </div>
                        <p class="card-category">Disk Space Utilization</p>
                        <h3 class="card-title">75%</h3>
                      </div>
                      <div class="card-footer">
                        <div class="stats">
                          <i class="material-icons text-danger">warning</i>
                          <a href="#pablo">Get More Space...</a>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                      <div class="card-header card-header-rose card-header-icon">
                        <div class="card-icon">
                          <i class="material-icons">equalizer</i>
                        </div>
                        <p class="card-category">Last week order inflow</p>
                        <h3 class="card-title">6,345</h3>
                      </div>
                      <div class="card-footer">
                        <div class="stats">
                          <i class="material-icons">local_offer</i> Tracked from Order provisioning system
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                      <div class="card-header card-header-success card-header-icon">
                        <div class="card-icon">
                          <i class="material-icons">local_atm</i>
                        </div>
                        <p class="card-category">No of Invoices Generated</p>
                        <h3 class="card-title">80,003</h3>
                      </div>
                      <div class="card-footer">
                        <div class="stats">
                          <i class="material-icons">date_range</i> Last 24 Hours
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="card card-stats">
                      <div class="card-header card-header-info card-header-icon">
                        <div class="card-icon">
                          <i class="material-icons">sd_storage</i>
                        </div>
                        <p class="card-category">Last week Order activation</p>
                        <h3 class="card-title">5,000</h3>
                      </div>
                      <div class="card-footer">
                        <div class="stats">
                          <i class="material-icons">update</i> Just Updated
                        </div>
                      </div>
                    </div>
                  </div>
<!--                             </div>
                
  </div>
            </div>
 -->
