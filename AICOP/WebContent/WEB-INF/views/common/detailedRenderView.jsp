<!-- <script src="resources/js/custom/aicop_func.js"></script>
 -->
<!-- <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
 -->
<!-- CSS Files -->
<style>

 .checkbtn{
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

	 
</style>

 <script src=https://cdnjs.cloudflare.com/ajax/libs/flowchart/1.11.3/flowchart.js></script>
 <script type="text/javascript" src="https://canvasjs.com/assets/script/jquery.canvasjs.min.js"></script>
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
        <div class="card-body ">
        
        <div>
        	<img src="resources/images/CurrentPort.PNG">
        </div>
          <!-- <ul class="nav nav-pills nav-pills-warning" role="tablist">   -->
        	
          <!-- <div class="tab-content tab-space">
            <div class="tab-pane active" id="openMajors">
              <marquee scrollamount=2 onmouseout="this.start()"
							onmouseover="this.stop()" behavior="scroll" direction="up"
							style="height: 250px;">
							<b>1801040252 - OPOM</b> - Unable to place porting orders - Stuck
							in Order Summary Page <br>
							<br>
							<b>1801040276 - MyOptus</b> - App crashes frequently
						</marquee>

            </div>
            <div class="tab-pane" id="otherAlerts">
              <br>Other Alerts will be displayed
            </div>
            <div class="tab-pane" id="incidentTrends">
              Incident Trends will be displayed
            </div>
          </div> -->
        </div>
      </div>
    </div>
    
    <div class="col-md-4" >
      <div class="card ">
        <div class="card-header card-header-icon card-header-info "  style="background-color: #e6adb2;">
          <h4 class="card-title">Business Transactions
           <!--  <small class="description">Notifications</small> -->
          </h4>
        </div>
        <div class="card-body ">
          <ul class="nav nav-pills nav-pills-warning" role="tablist">  
          <!-- <span class="dynamicButtonBTrxn"/> -->
         
         	<button type="button" id="PN" data-set-token="Btrxn" data-value="PN" data-unset-token="BMetrics,BUSINESSFLOW,INFRA,APPLICATIONFLOW,INC,TC,RFCDTLS,TECHOBJ,CHGMGMT,NOTBUSINESSFLOW" class="checkbtn">PN</button> &nbsp;&nbsp;
         	<button type="button" id="PNREC" data-set-token="Btrxn" data-value="PNREC" data-unset-token="BMetrics,BUSINESSFLOW,INFRA,APPLICATIONFLOW,INC,TC,RFCDTLS,TECHOBJ,CHGMGMT,NOTBUSINESSFLOW" class="checkbtn" >PNREC</button>&nbsp;&nbsp;
         	<button type="button" id="PNREC" data-set-token="Btrxn" data-value="PNREC" data-unset-token="BMetrics,BUSINESSFLOW,INFRA,APPLICATIONFLOW,INC,TC,RFCDTLS,TECHOBJ,CHGMGMT,NOTBUSINESSFLOW" class="checkbtn" >PNREJ</button>&nbsp;&nbsp;
         	<button type="button" id="PNREC" data-set-token="Btrxn" data-value="PNREC" data-unset-token="BMetrics,BUSINESSFLOW,INFRA,APPLICATIONFLOW,INC,TC,RFCDTLS,TECHOBJ,CHGMGMT,NOTBUSINESSFLOW" class="checkbtn" >PWN</button>&nbsp;&nbsp;
         	<button type="button" id="PNREC" data-set-token="Btrxn" data-value="PNREC" data-unset-token="BMetrics,BUSINESSFLOW,INFRA,APPLICATIONFLOW,INC,TC,RFCDTLS,TECHOBJ,CHGMGMT,NOTBUSINESSFLOW" class="checkbtn" >PWNCON</button>&nbsp;&nbsp;
         	<button type="button" id="PNREC" data-set-token="Btrxn" data-value="PNREC" data-unset-token="BMetrics,BUSINESSFLOW,INFRA,APPLICATIONFLOW,INC,TC,RFCDTLS,TECHOBJ,CHGMGMT,NOTBUSINESSFLOW" class="checkbtn" >PWNREJ</button>&nbsp;&nbsp;
         	<button type="button" id="PNREC" data-set-token="Btrxn" data-value="PNREC" data-unset-token="BMetrics,BUSINESSFLOW,INFRA,APPLICATIONFLOW,INC,TC,RFCDTLS,TECHOBJ,CHGMGMT,NOTBUSINESSFLOW" class="checkbtn" >PCN</button>&nbsp;&nbsp;
         	<button type="button" id="PNREC" data-set-token="Btrxn" data-value="PNREC" data-unset-token="BMetrics,BUSINESSFLOW,INFRA,APPLICATIONFLOW,INC,TC,RFCDTLS,TECHOBJ,CHGMGMT,NOTBUSINESSFLOW" class="checkbtn" >PCNCON</button>&nbsp;&nbsp;
         	<button type="button" id="PNREC" data-set-token="Btrxn" data-value="PNREC" data-unset-token="BMetrics,BUSINESSFLOW,INFRA,APPLICATIONFLOW,INC,TC,RFCDTLS,TECHOBJ,CHGMGMT,NOTBUSINESSFLOW" class="checkbtn" >PCNREJ</button>&nbsp;&nbsp;
         	<button type="button" id="PNREC" data-set-token="Btrxn" data-value="PNREC" data-unset-token="BMetrics,BUSINESSFLOW,INFRA,APPLICATIONFLOW,INC,TC,RFCDTLS,TECHOBJ,CHGMGMT,NOTBUSINESSFLOW" class="checkbtn" >PCCOM</button>&nbsp;&nbsp;
         	<button type="button" id="PNREC" data-set-token="Btrxn" data-value="PNREC" data-unset-token="BMetrics,BUSINESSFLOW,INFRA,APPLICATIONFLOW,INC,TC,RFCDTLS,TECHOBJ,CHGMGMT,NOTBUSINESSFLOW" class="checkbtn" >PORTMSN</button>&nbsp;&nbsp;
         	<button type="button" id="PNREC" data-set-token="Btrxn" data-value="PNREC" data-unset-token="BMetrics,BUSINESSFLOW,INFRA,APPLICATIONFLOW,INC,TC,RFCDTLS,TECHOBJ,CHGMGMT,NOTBUSINESSFLOW" class="checkbtn" >BPCN</button>&nbsp;&nbsp;
         	<button type="button" id="PNREC" data-set-token="Btrxn" data-value="PNREC" data-unset-token="BMetrics,BUSINESSFLOW,INFRA,APPLICATIONFLOW,INC,TC,RFCDTLS,TECHOBJ,CHGMGMT,NOTBUSINESSFLOW" class="checkbtn" >PCCOM</button>&nbsp;&nbsp;
         	<button type="button" id="PNREC" data-set-token="Btrxn" data-value="PNREC" data-unset-token="BMetrics,BUSINESSFLOW,INFRA,APPLICATIONFLOW,INC,TC,RFCDTLS,TECHOBJ,CHGMGMT,NOTBUSINESSFLOW" class="checkbtn" >PORTMSN</button>&nbsp;&nbsp;
         	<button type="button" id="PNREC" data-set-token="Btrxn" data-value="PNREC" data-unset-token="BMetrics,BUSINESSFLOW,INFRA,APPLICATIONFLOW,INC,TC,RFCDTLS,TECHOBJ,CHGMGMT,NOTBUSINESSFLOW" class="checkbtn" >BPCN</button>&nbsp;&nbsp;
         	<button type="button" id="PNREC" data-set-token="Btrxn" data-value="PNREC" data-unset-token="BMetrics,BUSINESSFLOW,INFRA,APPLICATIONFLOW,INC,TC,RFCDTLS,TECHOBJ,CHGMGMT,NOTBUSINESSFLOW" class="checkbtn" >PCCOM</button>&nbsp;&nbsp;
         	<button type="button" id="PNREC" data-set-token="Btrxn" data-value="PNREC" data-unset-token="BMetrics,BUSINESSFLOW,INFRA,APPLICATIONFLOW,INC,TC,RFCDTLS,TECHOBJ,CHGMGMT,NOTBUSINESSFLOW" class="checkbtn" >PORTMSN</button>&nbsp;&nbsp;
         	<button type="button" id="PNREC" data-set-token="Btrxn" data-value="PNREC" data-unset-token="BMetrics,BUSINESSFLOW,INFRA,APPLICATIONFLOW,INC,TC,RFCDTLS,TECHOBJ,CHGMGMT,NOTBUSINESSFLOW" class="checkbtn" >BPCN</button>&nbsp;&nbsp;
         	
           
          </ul>
          
        </div>
      </div>
    </div>
    
    <div class="col-md-5" >
      <div class="card ">
        <div class="card-header card-header-icon card-header-info "  style="background-color: #e6adb2;">
          <h4 class="card-title">Alerts
           <!--  <small class="description">Notifications</small> -->
          </h4>
        </div>
        <div class="card-body ">
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
							onmouseover="this.stop()" behavior="scroll" direction="up"
							style="height: 150px;">
							<b>1801040252 - OPOM</b> - Unable to place porting orders - Stuck
							in Order Summary Page <br>
							<br>
							<b>1801040276 - MyOptus</b> - App crashes frequently
						</marquee>

            </div>
            <div class="tab-pane" id="otherAlerts">
              <br>Other Alerts will be displayed
            </div>
            <div class="tab-pane" id="incidentTrends">
              Incident Trends will be displayed
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
          <!-- Body start -->
	                    <ul class="nav">
	                        <li id="detailedListViewNav" class="nav-item ">
	                            <a class="nav-link" href="detailedListView.do">
	                              <span class="sidebar-normal"> Detailed View </span>
	                            </a>
	                        </li>
	                    </ul>
         
         <!-- Body end -->
         
        </div>
      </div>
    </div>
    
   <!--  </div> -->
  
