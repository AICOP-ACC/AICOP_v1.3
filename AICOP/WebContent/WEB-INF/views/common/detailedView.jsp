<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- <script src="resources/js/custom/aicop-custom.js"></script> -->
<!-- page content -->

<!-- Test Start -->


<!-- Start Accordion
 -->
    	<div class="col-md-12">
			<div id="accordion" role="tablist">
			  <div class="card card-collapse">
			    <div class="card-header card-header-icon card-header-info" role="tab" id="headingOne">
			      <h5 class="mb-0">
					  <div class="card-icon">
		              	<i class="material-icons">library_books</i>
		            </div>
			        <a data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
			          Standard Pre-Checks
			          <i class="material-icons">keyboard_arrow_down</i>
			        </a>
			      </h5>
			    </div>
			
			    <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
			      <div class="card-body">
			        <div class="row mt-3 ml-4">

							<div class="col-md-4">Special event/launches</div>

							<div class="col-md-2">
								<!-- <i
									class="fa fa-arrow-circle-o-right circle-icon-g icon-prechecks-neutral"></i> -->
									<i	class="fa ${result1}"></i>
							</div>
							<div class="col-md-4">Recent Server Restart/Broken Network
							</div>

							<div class="col-md-2">
								<!-- <i
									class="fa fa-arrow-circle-o-right circle-icon-g icon-prechecks-neutral"></i> -->
									<i	class="fa ${result2}"></i>
							</div>

						</div>
						
						<div class="row mt-3 ml-4">
								<div class="col-md-4">SLA of the flow</div>
	
								<div class="col-md-2">
									<!-- <i class="fa fa-thumbs-up circle-icon-g icon-prechecks-success"></i> -->
									<i	class="fa ${result3}"></i>
								</div>
								
								<div class="col-md-4">Ongoing Bulk submission in OPOM</div>
	
								<div class="col-md-2">
									<!-- <i
										class="fa fa-arrow-circle-o-right circle-icon-g icon-prechecks-neutral"></i> -->
										<i	class="fa ${result4}"></i>
								</div>

						</div>

						<div class="row mt-3 ml-4">
							<div class="col-md-4">New/Unexpected Errors</div>

							<div class="col-md-2">
								<!-- <i class="fa fa-thumbs-down circle-icon-r icon-prechecks-danger"></i> -->
								<i class="fa ${result5}"></i>
							</div>
							<div class="col-md-4">Long running DB queries</div>

							<div class="col-md-2">
								<!-- <i class="fa fa-thumbs-down circle-icon-r icon-prechecks-danger"></i> -->
								<i class="fa ${result6}"></i>
							</div>

						</div>
							
						<div class="row mt-3 ml-4">
						</div>
						
						
						<div class="row mt-3 ml-4">
						
							<div class="col-md-2">
								<table class="table table-striped">
								<tr>
								<th colspan="2">Error Pattern</th>
																
								</tr>
								<tr>
								<td>Usual Error Count</td>
								<td>50</td>
								</tr>
								
								
								<tr>
								<td>Current Error Count</td>
								<td>75</td>
								</tr>
								
								</table>
							</div>
							<div class="col-md-4">
								<table class="table table-striped">
								<tr>
								<th>Top Occuring Errors</th>
								<th>Count</th>
																
								</tr>
								<tr>
								<td>URL is not defined for Carrier 0999</td>
								<td>16</td>
								</tr>
								
								
								<tr>
								<td>String null Can not be converted into a valid URL</td>
								<td>12</td>
								</tr>
								
								</table>
							</div>

							
							<div class="col-md-6">
								<table class="table table-striped">
								<tr>
								<th>Session Id</th>
								<th>Long Running Queries</th>
								<th>Server</th>
								<th>Execute By</th>
								<th>System</th>
																
								</tr>
								<tr>
								<td>3310545319</td>
								<td><button class="btn-info" data-toggle="modal" data-target="#longQueryModal1">Query_3310545319<div class="ripple-container"></div></button></td>
								<td>OPOM1001</td>
								<td>prdusr001</td>
								<td>OPOM</td>
								</tr>
								
								<tr>
								<td>3310545320</td>
								<td><button class="btn-info" data-toggle="modal" data-target="#longQueryModal2">Query_3310545320<div class="ripple-container"></div></button></td>
								<td>OPOM1002</td>
								<td>system</td>
								<td>OPOM</td>
								</tr>
															
								</table>
							
							
							
							</div>

							

						</div>
						
						
						  <!-- Long running query Modal 1 Starts-->
					        <div class="modal fade" id="longQueryModal1" tabindex="-1" role="dialog" aria-labelledby="longQueryModal1Label">
					                <div class="modal-dialog">
					                  <div class="modal-content">
					                    <div class="modal-header">
					                      <h4 class="modal-title">Long Running Query/Session ID: 3310545319</h4>
					                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					                        <i class="material-icons">clear</i>
					                      </button>
					                    </div>
					                    <div class="modal-body">
					                    <h5>Query</h5>
					                     <p>SELECT column1 ,column2 FROM table1 WHERE column3 IN ( SELECT TOP(1) column4 FROM table2 INNER JOIN table3 ON table2.column1 = table3.column1 )</p>
					                    </div>
					                    <div class="modal-footer">
					                     <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button> 
					                     <!--  <button type="button" class="btn btn-danger btn-link" data-dismiss="modal">Close
						                      <div class="ripple-container">
							                      <div class="ripple-decorator ripple-on ripple-out" style="left: 15.0781px; top: 16px; background-color: rgb(244, 67, 54); transform: scale(8.50976);">
							                      </div>
						                      </div>
					                      </button> -->
					                    </div>
					                  </div>
					                </div>
					              </div>
					            <!--Long running query Modal 1  Ends -->  
						
						
						  <!-- Long running query Modal 2 Starts-->
					        <div class="modal fade" id="longQueryModal2" tabindex="-1" role="dialog" aria-labelledby="longQueryModal2Label">
					                <div class="modal-dialog">
					                  <div class="modal-content">
					                    <div class="modal-header">
					                      <h4 class="modal-title">Long Running Query/Session ID: 3310545320</h4>
					                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					                        <i class="material-icons">clear</i>
					                      </button>
					                    </div>
					                    <div class="modal-body">
					                    <h5>Query</h5>
					                     <p>SELECT name, second_name, date_time, address, second_address FROM registry, other_users_data WHERE registry.id = other_users_data.id;</p>
					                    </div>
					                    <div class="modal-footer">
					                     <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button> 
					                     <!--  <button type="button" class="btn btn-danger btn-link" data-dismiss="modal">Close
						                      <div class="ripple-container">
							                      <div class="ripple-decorator ripple-on ripple-out" style="left: 15.0781px; top: 16px; background-color: rgb(244, 67, 54); transform: scale(8.50976);">
							                      </div>
						                      </div>
					                      </button> -->
					                    </div>
					                  </div>
					                </div>
					              </div>
					            <!--Long running query Modal 2  Ends -->  
						
						
						
						
						
						
						
						
						
						
						
						
			      </div>
			    </div>
			  </div>
			  <div class="card card-collapse">
			    <div class="card-header   card-header-icon card-header-info" role="tab" id="headingTwo">
			      <h5 class="mb-0">
			      		<div class="card-icon">
		              		<i class="material-icons">call</i>
		            	</div>
			        <a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
			          Auto Conferencing
			          <i class="material-icons">keyboard_arrow_down</i>
			        </a>
			        
			      </h5>
			    </div>
			    <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
			      <div class="card-body">
			        <div class="card">
        <div class="card-header card-header-rose card-header-icon">
          <div class="card-icon">
            <i class="material-icons">assignment</i>
          </div>
          <h4 class="card-title">Stake Holders</h4>
          
          <h4 class="text-info aicop-padding-top-10">Major Incident : 1801040252
     	 </h4>
          <div>
         <i id="confInit" class="fa fa-phone-square icon-green icon-large mouse-point icon-embossed"></i> 
         
		 <i id="confTerminate" class="fa fa-phone-square icon-red icon-large mouse-point icon-embossed invisible aicop-padding-left-10"></i>
		 <i id="shareBridge" class="fa fa-share-alt-square icon-blue icon-large mouse-point icon-embossed invisible aicop-padding-left-20" data-toggle="modal"></i>
		 <button class="btn btn-info btn-round pull-right" data-toggle="modal" data-target="#myModal">
                Notes
              <div class="ripple-container"></div></button>

		 </div>
    </div>
        <!-- Notes Modal Starts-->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h4 class="modal-title">Notes</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        <i class="material-icons">clear</i>
                      </button>
                    </div>
                    <div class="modal-body">
                     <p id="notesContent"><!-- Notes for Major - 1801040331 -->
                      </p> 
	                     <div class="swal2-content" style="display: block;">
		                     <div class="form-group bmd-form-group"><input id="inputFieldNotes" placeholder="Type here..." type="text" class="form-control">
		                     </div>
	                     </div>
                    </div>
                    <div class="modal-footer">
                     <button id="saveNotesBtn" type="button" class="btn btn-primary" data-dismiss="modal">Save changes</button> 
                     <!--  <button type="button" class="btn btn-danger btn-link" data-dismiss="modal">Close
	                      <div class="ripple-container">
		                      <div class="ripple-decorator ripple-on ripple-out" style="left: 15.0781px; top: 16px; background-color: rgb(244, 67, 54); transform: scale(8.50976);">
		                      </div>
	                      </div>
                      </button> -->
                    </div>
                  </div>
                </div>
              </div>
            <!-- Notes Modal Ends -->  
            
            <!-- Share Bridge Details Modal Starts -->
            <div class="modal fade" id="popUpModalEmail" tabindex="-1" role="dialog" aria-labelledby="popUpModalEmailLabel">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h4 class="modal-title" id="emailModalLabeId"></h4>
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        <i class="material-icons">clear</i>
                      </button>
                    </div>
                    <div class="modal-body">
                    <form action="#">
                      <div class="form-group">
                      			
							      <!-- <label for="toEmail">To:</label> -->
							      <input type="email" class="form-control" id="toEmail" placeholder="To:" name="toEmail">
							    </div>
							    <div class="form-group">
							      <!-- <label for="ccEmail">Cc:</label> -->
							      <input type="email" class="form-control" id="ccEmail" placeholder="Cc:" name="ccEmail">
							    </div>
							  	<div class="form-group">
							      <!-- <label for="subject">Subject:</label> -->
							      <input type="text" class="form-control" id="subject" placeholder="Subject:" name="subject">
							    </div>
							    <div class="form-group">
							      <textarea id="mailContent" placeholder="Type content here..." class="form-control"></textarea>
							      
							    </div>
							   
							  </form>
                    </div>
                    <div class="modal-footer">
                      
                      
	                      <button id="sendMail" type="button" class="btn btn-success btn-round">Send</button>
                      
                    </div>
                  </div>
                </div>
              </div>
             <!-- Share Bridge Details Modal Ends -->
             
             <!-- Error Modal Starts -->
             <div class="modal fade modal-mini modal-primary" id="errorModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog modal-small">
                  <div class="modal-content">
                    <div class="modal-header">
                    <h4 class="modal-title">Error!</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="material-icons">clear</i></button>
                    </div>
                    <div class="modal-body">
                      <p id="dynamicErrorMsg" class="text-danger"></p>
                    </div>
                    <div class="modal-footer justify-content-center">
                      <button type="button" class="btn btn-info" data-dismiss="modal">Ok</button>
                     
                    </div>
                  </div>
                </div>
              </div>
             <!-- Error Modal Ends -->
              
              
              
              
        <div class="card-body">
          <div class="table-responsive">
            <table id="memDetTable" class="table">
              <thead>
                <tr>
                  <!-- <th class="text-center">#</th> -->
                  <th>Application</th>
                  <th>Contact</th>
                  <th>Designation</th>
                  <th>Contact Type</th>
                  <th class="text-right">Number</th>
                  <th class="text-right">Remove</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <!-- <td class="text-center">1</td> -->
                  <td>CC</td>
                  <td>Srinivasan Sadagopan</td>
                  <td>Duty Manager</td>
                  <td>Primary</td>
                  <td class="text-right">+919790978398</td>
                  <td class="td-actions text-right">
                      <button type="button" rel="tooltip" class="btn btn-danger" data-original-title="" title="">
                      <i class="material-icons">close</i>
                    </button>
                  </td>
                </tr>
                <tr>
                  <!-- <td class="text-center">2</td> -->
                  <td>POPI</td>
                  <td>Vinoth G</td>
                  <td>Team Lead</td>
                  <td>Primary</td>
                  <td class="text-right">+919600914814</td>
                  <td class="td-actions text-right">
                      <button type="button" rel="tooltip" class="btn btn-danger" data-original-title="" title="">
                      <i class="material-icons">close</i>
                    </button>
                  </td>
                </tr>
                <tr>
                  <!-- <td class="text-center">3</td> -->
                   <td>MTS</td>
                  <td>Partha</td>
                  <td>SME</td>
                  <td>Primary</td>
                  <td class="text-right">+919176635540</td>
                  <td class="td-actions text-right">
                      <button type="button" rel="tooltip" class="btn btn-danger" data-original-title="" title="">
                      <i class="material-icons">close</i>
                    </button>
                  </td>
                </tr>
                <tr>
                  <!-- <td class="text-center">4</td> -->
                   <td>OPOM</td>
                  <td>Sampath</td>
                  <td>Support Analyst</td>
                  <td>Primary</td>
                  <td class="text-right">+919962306163</td>
                  <td class="td-actions text-right">
                      <button type="button" rel="tooltip" class="btn btn-danger" data-original-title="" title="">
                      <i class="material-icons">close</i>
                    </button>
                  </td>
                </tr>
                <!-- <tr>
                  <td class="text-center">5</td>
                   <td>NA</td>
                  <td>Guest</td>
                  <td>NA</td>
                  <td>NA</td>
                  <td class="text-right">+6596367950</td>
                  <td class="td-actions text-right">
                      <button type="button" rel="tooltip" class="btn btn-danger" data-original-title="" title="">
                      <i class="material-icons">close</i>
                    </button>
                  </td>
                </tr> -->
              </tbody>
            </table>
          </div>
         
          <div class="row">
		 	
		 		<label class="col-md-2 aicop-padding-left-20 text-info">Add Number </label>
		 		<div class="col-md-2">
			 		<select id="countryCode" class="form-control pull-left">
				 		<option>-Select Country Code-</option>
				 		<option>+91</option>
				 		<option>+65</option>
				 		<option>+61</option>
			 		</select>
		 		</div>
		 		<div class="col-md-3"><input id="newPhNum" placeholder="Enter ph no..." class="form-control pull-left" type="number"> </div>
		 		
		 		<div class="col-md-1"> <button id="addNewNumber" class="btn btn-primary btn-round">Add<!-- <i class="material-icons">person_add</i> --></button></div>
		 	
		 	<div class="col-md-3" id="errorMsg" class="form-group text-danger"></div>
		 </div>
		 
        </div>
      </div>
			      </div>
			    </div>
			  </div>
			  <div class="card card-collapse">
			    <div class="card-header   card-header-icon card-header-info" role="tab" id="headingThree">
			    	<div class="card-icon">
		              	<i class="material-icons">label_important</i>
		            </div>
			      <h5 class="mb-0">
			        <a class="collapsed" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
			          Impacts
			          <i class="material-icons">keyboard_arrow_down</i>
			        </a>
			      </h5>
			    </div>
			    
			    
			    
			    
			    
			    <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
			    		      <div class="card-body">
			        <div class="card">
        
       				 <div class="card-body">
          
         	      	<div class="row  aicop-padding-20">
			      		<label class="col-md-3 pull-right">Business Impact</label>
						<div class="col-md-7 aicop-padding-bottom-20">
								<textarea rows="3" cols="75"></textarea>
						</div> 
					</div>
						
						<div class="row  aicop-padding-20">
							<label class="col-md-3 pull-right">Impacted Application</label>
							<div class="col-md-7 col-sm-7 col-xs-12">
								<!-- <input id="tags_1" type="text" class="tags"
									value="BUOS" data-tagsinput-init="true" style="display: none;"> -->
								<div id="tags_1_tagsinput" class="tagsinput"
									style="width: auto; min-height: auto; height: auto;">
									Dynamic content
								</div>
								<div id="suggestions-container"
									style="position: relative; float: left; width: 250px; margin: 10px;"></div>
							</div>
						</div>
						
							<div class="row">
							<label class="col-md-3 pull-right"></label>
							<div class="col-md-8 col-sm-8 col-xs-8 pull-right">
								<select id="impactedAppl"
									style="position: relative; float: left; width: 300px; margin: 10px;"
									name="appl" multiple="multiple">
									<option>OPOM</option>
									<option selected="selected">MTS</option>
									<option>CMBS</option>
									<option selected="selected">POPI</option>
									<option>CNUM</option>
									<option>NRS</option>
								</select>
							</div>
						</div>
						
						
			      
			    </div>
			  </div>
			<!-- </div> -->
			
		<!-- 	End Accordion -->
			</div>	
		</div>
		
		
		
		
 	<!-- 	Start of CMDB Tabs -->	
						<div class="col-md-12">
					
		              <h3>
		                <small>Business Remediation</small>
		              </h3>
		              <div class="card card-nav-tabs">
		                <div class="card-header card-header-primary_custom">
		                  <!-- colors: "header-primary", "header-info", "header-success", "header-warning", "header-danger" -->
		                  <div class="nav-tabs-navigation">
		                    <div class="nav-tabs-wrapper">
		                      <ul class="nav nav-tabs" data-tabs="tabs">
		                       <li class="nav-item">
		                          <a class="nav-link active" href="#changeDetail" data-toggle="tab">
		                           <!--  <i class="material-icons" style="transform:rotate(0deg);float:left;">brightness_auto</i> --> Change Detail
		                          </a>
		                        </li>
		                        <li class="nav-item">
		                          <a class="nav-link" href="#impTechObj" data-toggle="tab">
		                            <!-- <i class="material-icons" style="transform:rotate(0deg);float:left;">brightness_auto</i> --> Impacted Technical Object
		                          </a>
		                        </li>
		                        <li class="nav-item">
		                          <a class="nav-link" href="#sitUatResults" data-toggle="tab">
		                           <!--  <i class="material-icons" style="transform:rotate(0deg);float:left;">brightness_auto</i> --> SIT/UAT Results
		                          </a>
		                        </li>
		                        <li class="nav-item">
		                          <a class="nav-link" href="#pitResults" data-toggle="tab">
		                            <!-- <i class="material-icons" style="transform:rotate(0deg);float:left;">brightness_auto</i>  -->PIT Results
		                          </a>
		                        </li>
		                        <li class="nav-item">
		                          <a class="nav-link" href="#relatedIncidents" data-toggle="tab">
		                            <!-- <i class="material-icons" style="transform:rotate(0deg);float:left;">brightness_auto</i> --> Related Incidents
		                          </a>
		                        </li>
		                        <li class="nav-item">
		                          <a class="nav-link" href="#errorLogs" data-toggle="tab">
		                            <!-- <i class="material-icons" style="transform:rotate(0deg);float:left;">brightness_auto</i> --> Error Logs
		                          </a>
		                        </li>	
		                        <li class="nav-item">
		                          <a class="nav-link" href="#notesHistory" data-toggle="tab">
		                            <!-- <i class="material-icons" style="transform:rotate(0deg);float:left;">event_note</i> --> Notes History
		                          </a>
		                        </li>
		                        <li class="nav-item">
		                          <a class="nav-link" href="#triageAction" data-toggle="tab">
		                           <!--  <i class="material-icons" style="transform:rotate(0deg);float:left;">brightness_auto</i> --> Triage Action
		                          </a>
		                        </li>
		                       
		                        
		                      </ul>
		                    </div>
		                  </div>
		                </div>
		                <div class="card-body ">
		                  <div class="tab-content">
		                  <div class="tab-pane active" id="changeDetail">
		                   <div class="table-responsive">
		                  <table id="rfcDetails" class="table table-striped">
				              <thead>
				                <tr>
				                  <!-- <th class="text-center">#</th> -->
				                  <th>RFC ID</th>
				                  <th>Impacted Applications</th>
				                  <th>Title</th>
				                  <th>Description</th>
				                  <th>Start Time</th>	
				                  <th>End Time</th>
				                  <th>Impacted Nodes</th>
				                  <th>Requester</th>
				                  <th>Status</th>
				                </tr>
				              </thead>
				              <tbody>
				                <tr>
				                	<td>C00162669</td>
				                	<td>OPOM</td>
				                	<td>MCT R1801.1 Production Rollin.</td>
				                	<td>MCT R1801.1 Production Roll In Deployment</td>
				                	<td>4/29/2018 8:00</td>
				                	<td>4/29/2018 10:00</td>
				                	<td>opmprdapps002</td>
				                	<td>cp547489</td>
				                	<td>Completed</td>
				                
				                </tr>
				              </tbody>
				              
				            </table>
		                  
		                  </div>
		                  
		                  </div>
		                  <div class="tab-pane" id="impTechObj">
		                  	<div class="table-responsive">
			                  <table id="impTechObjTable" class="table table-striped">
					              <thead>
					                <tr>
					                  <!-- <th class="text-center">#</th> -->
					                  <th>Application</th>
					                  <th>Object</th>
					                  <th>File Version</th>
					                  <th>Revision Date</th>
					                  
					                </tr>
					              </thead>
					              <tbody>
					                <tr>
					                	<td>OPOM</td>
					                	<td>Queue Package-FileSystem</td>
					                	<td>4</td>
					                	<td>17-Jun-17</td>
					                					                
					                </tr>
					                <tr>
					                	<td>OPOM</td>
					                	<td>MICSM Package-UpdateScheduledTransfer</td>
					                	<td>2</td>
					                	<td>7-Jan-18</td>
					                	
					                </tr>
					                <tr>
					                	<td>OPOM</td>
					                	<td>Management Package-GCSPWorker</td>
					                	<td>8</td>
					                	<td>8-Jan-18</td>
					                	
					                </tr>
					                <tr>
					                	<td>OPOM</td>
					                	<td>Intercarrier Package-RoleComponentWorker</td>
					                	<td>2</td>
					                	<td>8-Jan-18</td>
					                	
					                </tr>
					                <tr>
					                	<td>OPOM</td>
					                	<td>UI Package-RoleComponent</td>
					                	<td>6</td>
					                	<td>7-Jan-18</td>
					                	
					                </tr>
					                <tr>
					                	<td>OPOM</td>
					                	<td>Servlet Package-ACIFEnforcer</td>
					                	<td>3</td>
					                	<td>10-Jan-18</td>
					                	
					                </tr>
					                <tr>
					                	<td>OPOM</td>
					                	<td>Resend Package-SubwithSend</td>
					                	<td>7</td>
					                	<td>8-Jan-18</td>
					                	
					                </tr>
					                <tr>
					                	<td>OPOM</td>
					                	<td>Bean Package- ResultBean</td>
					                	<td>6</td>
					                	<td>9-Jan-18</td>
					                	
					                </tr>
					                <tr>
					                	<td>OPOM</td>
					                	<td>Handlers Package-BatchInterface</td>
					                	<td>5</td>
					                	<td>8-Jan-18</td>
					                	
					                </tr>
					                <tr>
					                	<td>OPOM</td>
					                	<td>Controller Package- PortCaseManager</td>
					                	<td>4</td>
					                	<td>8-Jan-18</td>
					                	
					                </tr>
					              </tbody>
					              
					            </table>
		                  
		                  </div>
		                  
		                  
		                  
		                  
		                  
		                  
		                  </div>
		                  <div class="tab-pane" id="sitUatResults">
		                  <div class="table-responsive">
		                  	<table id="sitUatResultsTable" class="table table-striped">
					              <thead>
					                <tr>
					                  <!-- <th class="text-center">#</th> -->
					                  <th>Application</th>
					                  <th>CR Name</th>
					                  <th>Child CR</th>
					                  <th>Parent CR</th>
					                  <th>RFC Number</th>
					                  <th>Test Scope</th>
					                  <th>Test Cases Executed</th>
					                  <th>Pass Percentage</th>
					                  <th>Defect ID</th>
					                </tr>
					              </thead>
					              <tbody>
					                <tr>
					                	<td>OPOM</td>
					                	<td>Apollo Box Go Live</td>
					                	<td>133267</td>
					                	<td>513103</td>
					                	<td>C00162669</td>
					                	<td>SFTP from OPOM to APOLLO for PACMAN jobsGFFI Transfer of DBRE files to Apollo</td>
					                	<td>14</td>
					                	<td>80%</td>
					                	<td>106</td>
					                	
					                
					                
					                </tr>
					                
					              </tbody>
					              
					          </table>
					          
					        </div>
					              
		                  
		                  
		                  
		                  
		                  </div>
		                  <div class="tab-pane" id="pitResults">
		                  	 <div class="table-responsive">
			                  	<table id="pitResultsTable" class="table table-striped">
						              <thead>
						                <tr>
						                  <!-- <th class="text-center">#</th> -->
						                  <th>Test Case ID</th>
						                  <th>Test Case</th>
						                  <th>Priority</th>
						                  <th>Dependent Test Case</th>
						                  <th>Result</th>
						                  
						                </tr>
						              </thead>
						              <tbody>
						                <tr>
						                	<td>TC022</td>
						                	<td>Check whether request is being sent to MTS for Port out reversal</td>
						                	<td>3</td>
						                	<td>TC024</td>
						                	<td>Passed</td>
						                	
						                </tr>
						                <tr>
						                	<td>TC022</td>
						                	<td>Test the third party scenario for port withdraw</td>
						                	<td>1</td>
						                	<td>TC031</td>
						                	<td>Passed</td>
						                	
						                </tr>
						                <tr>
						                	<td>TC032</td>
						                	<td>Check whether user has initiated the request</td>
						                	<td>4</td>
						                	<td>TC024</td>
						                	<td>Passed</td>
						                	
						                </tr>
						               
						               </tbody>
						          </table>
					         </div>
		                  
		                  
		                  </div>
		                  <div class="tab-pane" id="relatedIncidents">
		                  <div class="table-responsive">
			                  	<table id="relatedIncidentsTable" class="table table-striped">
						              <thead>
						                <tr>
						                  <!-- <th class="text-center">#</th> -->
						                  <th>ID</th>
						                  <th>Title</th>
						                  <th>Status</th>
						                  <th>Application</th>
						                  <th>Created</th>
						                  <th>Current Owner</th>
						                  <th>Raised By</th>
						                  <th>RCA</th>
						                  <th>PCA</th>
						                  
						                </tr>
						              </thead>
						              <tbody>
						                <tr>
						                	<td>1801031436</td>
						                	<td>Give Back No system</td>
						                	<td>Closed</td>
						                	<td>MTS</td>
						                	<td>8-Dec-17</td>
						                	<td>ven_ranjithkumarrat</td>
						                	<td>Madan Nair</td>
						                	<td>Operations:Batch Mgmt gap</td>
						                	<td>N/A</td>
						                	
						                </tr>
						                <tr>
						                	<td>1801031487</td>
						                	<td>Give Back No system</td>
						                	<td>Closed</td>
						                	<td>MTS</td>
						                	<td>24-Dec-17</td>
						                	<td>ven_ranjithkumarrat</td>
						                	<td>Madan Nair</td>
						                	<td>Operations:Batch Mgmt gap</td>
						                	<td>N/A</td>
						                	
						                </tr>
						                <tr>
						                	<td>1801031497</td>
						                	<td>Give Back No system</td>
						                	<td>Closed</td>
						                	<td>MTS</td>
						                	<td>25-Dec-17</td>
						                	<td>ven_naveensak</td>
						                	<td>Madan Nair</td>
						                	<td>Operations:Batch Mgmt gap</td>
						                	<td>N/A</td>
						                	
						                </tr>
						                
						                <tr>
						                	<td>1801031595</td>
						                	<td>Give Back No system</td>
						                	<td>Closed</td>
						                	<td>MTS</td>
						                	<td>8-Dec-17</td>
						                	<td>ven_prasanthmar</td>
						                	<td>Liz Queseja</td>
						                	<td>Operations:Batch Mgmt gap</td>
						                	<td>N/A</td>
						                	
						                </tr>
						                <tr>
						                	<td>1801031602</td>
						                	<td>Give Back No system</td>
						                	<td>Closed</td>
						                	<td>MTS</td>
						                	<td>17-Dec-17</td>
						                	<td>ven_prasanthmar</td>
						                	<td>Liz Queseja</td>
						                	<td>Operations:Batch Mgmt gap</td>
						                	<td>N/A</td>
						                	
						                </tr>
						               
						               </tbody>
						          </table>
					         </div>
		                  
		                  
		                  
		                  
		                  
		                  
		                  
		                  
		                  
		                  
		                  
		                  
		                  </div>
		                  <div class="tab-pane" id="errorLogs">
		                  	<div class="table-responsive">
			                  	<table id="errorLogsTable" class="table table-striped">
						              <thead>
						                <tr>
						                  <!-- <th class="text-center">#</th> -->
						                  <th>Date</th>
						                  <th>Time</th>
						                  <th>Application</th>
						                  <th>Error Type</th>
						                  <th>Error Description</th>
						                  						                  
						                </tr>
						              </thead>
						              <tbody>
						                <tr>
						                	<td>3/8/2018</td>
						                	<td>12:51:02</td>
						                	<td>OPOM</td>
						                	<td>Application Server</td>
						                	<td>[Node Ready Sender, 1902718492] popi.inf.intercarrier.gateway.Pacer.getURL(InterCarrierMsg), URL is not defined for Carrier 1003</td>
						                	
						                </tr>
						               <tr>
						                	<td>3/8/2018</td>
						                	<td>12:51:02</td>
						                	<td>POPI</td>
						                	<td>Web Server</td>
						                	<td>[Node Ready Sender, 1902718492] popi.inf.intercarrier.gateway.Pacer.getURL(InterCarrierMsg), URL is not defined for Carrier 0999</td>
						                	
						                </tr>
						                <tr>
						                	<td>3/8/2018</td>
						                	<td>12:51:02</td>
						                	<td>MTS</td>
						                	<td>DB Server</td>
						                	<td>[Multi sender Node Ready Sender, 961309149] popi.inf.intercarrier.gateway.MultiNodeReadySender.run(), popi.inf.intercarrier.gateway.HTTPSendFailed: String null Can not be converted into a valid URL</td>
						                	
						                </tr>
						                
						                <tr>
						                	<td>3/8/2018</td>
						                	<td>12:51:02</td>
						                	<td>MTS</td>
						                	<td>Web Server</td>
						                	<td>[Multi sender Node Ready Sender, 961309149] popi.inf.intercarrier.gateway.MultiNodeReadySender.run(), popi.inf.intercarrier.gateway.HTTPSendFailed: String null Can not be converted into a valid URL</td>
						                	
						                </tr>
						               <tr>
						                	<td>3/8/2018</td>
						                	<td>12:51:02</td>
						                	<td>MTS</td>
						                	<td>Web Server</td>
						                	<td>[Node Ready Sender, 1802054221] popi.inf.intercarrier.gateway.Pacer.getURL(InterCarrierMsg), URL is not defined for Carrier 1003</td>
						                	
						                </tr>
						               </tbody>
						          </table>
					         </div>
		                  
		                  
		                  
		                  
		                  
		                  
		                  
		                  
		                  </div>
		                  
		                  <div class="tab-pane" id="notesHistory">
		                      <div class="card">
							        <div class="card-header card-header-rose card-header-icon">
							         	
							          <h4 class="card-title">Notes History</h4>
							        </div>
							        <div class="card-body">
							          <div class="toolbar">
						             
							          </div>
							          <div class="material-datatables">
							            <div id="datatables_wrapper" class="dataTables_wrapper dt-bootstrap4">
							            
							            <div class="row">
							            <div class="col-sm-12">
							            <table id="notesHistoryTable" class="table table-striped table-no-bordered table-hover dataTable dtr-inline" cellspacing="0" width="100%" style="width: 100%;" role="grid" aria-describedby="datatables_info">
							            
							              <thead>
							                <tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="datatables" rowspan="1" colspan="1" style="width: 222px;text-align: left;" aria-sort="ascending" aria-label="Name: activate to sort column descending">Notes</th><th class="sorting" tabindex="0" aria-controls="datatables" rowspan="1" colspan="1" style="width: 326px;" aria-label="Position: activate to sort column ascending">User</th><th class="sorting" tabindex="0" aria-controls="datatables" rowspan="1" colspan="1" style="width: 168px;" aria-label="Office: activate to sort column ascending">Time Stamp</th></tr>
							              </thead>
							              <tfoot>
							                <tr>
							                <th rowspan="1" colspan="1" style="width: 222px;text-align: left;">Notes</th>
							                <th rowspan="1" colspan="1" style="width: 326px;text-align: left;">User</th>
							                <th rowspan="1" colspan="1" style="width: 168px;text-align: left;">Time Stamp</th></tr>
							              </tfoot>
							              <tbody>
		 	
										   <c:forEach items="${notesList}" var="notes">
										   <tr>
										   <td style="text-align: left;">
										   <c:out value="${notes.notes}"/>
										   </td>
										   <td style="text-align: left;">
										   <c:out value="${notes.owner}"/>
										   </td>
										   <td style="text-align: left;">
										   <c:out value="${notes.timestamp}"/>
										   </td>
										   </tr>
										   
										   </c:forEach>
										   </tbody>
							            </table>
							            </div>
							            </div>
							          <!--   <div class="row">
								            <div class="col-sm-12 col-md-5"><div class="dataTables_info" id="datatables_info" role="status" aria-live="polite">Showing 1 to 10 of 40 entries
								            </div>
							            </div>
							            <div class="col-sm-12 col-md-7">
							            <div class="dataTables_paginate paging_full_numbers" id="datatables_paginate">
							            <ul class="pagination">
							            <li class="paginate_button page-item first disabled" id="datatables_first">
							            <a href="#" aria-controls="datatables" data-dt-idx="0" tabindex="0" class="page-link">First</a>
							            </li>
							            <li class="paginate_button page-item previous disabled" id="datatables_previous">
							            <a href="#" aria-controls="datatables" data-dt-idx="1" tabindex="0" class="page-link">Previous</a>
							            </li>
							            <li class="paginate_button page-item active">
							            <a href="#" aria-controls="datatables" data-dt-idx="2" tabindex="0" class="page-link">1</a>
							            </li>
							            <li class="paginate_button page-item ">
							            <a href="#" aria-controls="datatables" data-dt-idx="3" tabindex="0" class="page-link">2</a>
							            </li>
							            <li class="paginate_button page-item ">
							            <a href="#" aria-controls="datatables" data-dt-idx="4" tabindex="0" class="page-link">3</a>
							            </li>
							            <li class="paginate_button page-item ">
							            <a href="#" aria-controls="datatables" data-dt-idx="5" tabindex="0" class="page-link">4</a>
							            </li>
							            <li class="paginate_button page-item next" id="datatables_next">
							            <a href="#" aria-controls="datatables" data-dt-idx="6" tabindex="0" class="page-link">Next</a>
							            </li>
							            <li class="paginate_button page-item last" id="datatables_last">
							            <a href="#" aria-controls="datatables" data-dt-idx="7" tabindex="0" class="page-link">Last</a>
							            </li>
							            </ul>
							            </div>
							            </div>
							            </div> -->
							            </div>
							          </div>
							        </div>
							        
							      </div>    
		                    </div>
		                    <div class="tab-pane" id="triageAction">
		                    <div class="card">
		                    	<div class="card-header card-header-rose card-header-icon">
							         
							          <h4 class="card-title">Suggested Actions</h4>
							        </div>
		                    <div class="card-body">
		                    	<div class="material-datatables">
							            <div id="datatables_wrapper" class="dataTables_wrapper dt-bootstrap4">
							            
							            <div class="row">
							             <input type="hidden" id="newActionsAddedHidden"/>
							            <div class="col-sm-12">
							            <table id="suggestedActionsTable" class="table table-striped" cellspacing="0" width="100%" style="width: 100%;" role="grid" aria-describedby="datatables_info">
							            
							              <thead>
							                <tr role="row">
							                <th class="text-center">Action No</th>
											<th>Description</th>
											<th>App Owner</th>
											<th>Dependency</th>
											<th>Occurrences</th>
											<th>Success Percentage</th>
											<th>Expected Duration</th>
											<th>Add Action</th>
							                </tr>
							              </thead>
							              
							              <tbody>
		 	
										   <c:forEach items="${suggestedActionsList}" var="actions">
										   <tr>
										   <td class="text-center">
										   <c:out value="${actions.actionId}"/>
										   </td>
										   <td id="${actions.actionId}_ActionPre">
										   <c:out value="${actions.actionDesc}"/>
										   </td>
										   <td id="${actions.actionId}_OwnerPre">
										   <c:out value="${actions.appOwner}"/>
										   </td>
										   <td>
										   <c:out value="${actions.dependency}"/>
										   </td>
										   <td>
										   <c:out value="${actions.occurrences}"/>
										   </td>
										   <td>
										   <c:out value="${actions.successPercentage}"/>
										   </td>
										   <td id="${actions.actionId}_ExpectDurationPre">
										   <c:out value="${actions.expectedDuration}"/>
										   </td>
										   <td class="td-actions">
                    						<button id="${actions.actionId}_addActionBtn" type="button" rel="tooltip" class="add-action btn btn-success" data-original-title="" title="">
                     						 	<i class="material-icons">add_circle</i>
                    						</button>
										   </td>
										   
										   </tr>
										   
										   </c:forEach>
										   </tbody>
							            </table>
							            </div>
							            </div>
							            
							            </div>
							            
							            </div>
		                    
		                    
		                    </div>
		                    
		                    </div>
		                    
		                    <div class="card">
		                    	<div class="card-header card-header-rose card-header-icon">
							         
							          <h4 class="card-title">Manual Actions</h4>
							          
							          
							          
							           
               <!-- <div id="actionStatus" class="col-lg-5 col-md-6 col-sm-3">
              	  <div class="dropdown">
	  					<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    					Please Select
	 					 </button>
				  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				    <li><a id="NotStarted" class="dropdown-item action-status">Not Started</a></li>
				    <li><a id="InProgress" class="dropdown-item action-status">In Progress</a></li>
				    <li><a id="Completed" class="dropdown-item action-status">Completed</a></li>
				  </ul>
				</div>
			</div>  -->
							          
							          
							          <div class="pull-right">
							          
         
		<!--  <i id="addManualAction" class="fa fa-plus-square-o icon-green icon-large mouse-point icon-embossed"></i>
		
		 
		 <i id="saveManualActions" class="fa fa-save icon-green icon-large mouse-point icon-embossed"></i>  -->
		 
		  <button id="addManualAction" class="btn btn-info btn-round">Add</button>
		
		 
		 <button id="saveManualActions" class="btn btn-success btn-round">Save</button>  
							          </div>
							        </div>
		                    	<div class="card-body">
		                    	<div class="material-datatables">
							            <div id="datatables_wrapper" class="dataTables_wrapper dt-bootstrap4">
							            <div class="row">
							            <div class="col-sm-12">
							            <div class="table-responsive">
            <table id="manualActionsTable" class="table table-striped">
              <thead>
                <tr>
                  <th id="actionNoHeader" class="text-center" style="border:1px solid grey;">Action No</th>
                  <th style="border:1px solid grey;">Description</th>
                  <th style="border:1px solid grey;">Owner</th>
                  <th style="border:1px solid grey;">Dependency</th>
                  <th style="border:1px solid grey;">Expected Duration(min)</th>
                  <th style="border:1px solid grey;">Status</th>
                  <th style="border:1px solid grey;">Start Time</th>
                  <th style="border:1px solid grey;">End Time</th>
                  <th style="border:1px solid grey;">Actual Duration(min)</th>
                  <th style="border:1px solid grey;">Outcome</th>
                  <th id="deleteHeader" style="border:1px solid grey;">Delete</th> 
                </tr>
              </thead>
              
              <tbody>
              				<c:forEach items="${manualActionsBeanList}" var="manualAction">
										   <tr id="${manualAction.actionId}_actionRow">
										   <td id="${manualAction.actionId}_ActionNo" class="text-center" style="border:1px solid grey;">
										   <c:out value="${manualAction.actionId}"/>
										   </td>
										   <td id="${manualAction.actionId}_Action" style="border:1px solid grey;" contenteditable=true>
										   <c:out value="${manualAction.actionDesc}"/>
										   </td>
										   <td id="${manualAction.actionId}_Owner" style="border:1px solid grey;" contenteditable=true>
										   <c:out value="${manualAction.appOwner}"/>
										   </td>
										   <td id="${manualAction.actionId}_Dependency" style="border:1px solid grey;" contenteditable=true>
										   <c:out value="${manualAction.dependency}"/>
										   </td>
										   <td id="${manualAction.actionId}_ETC" style="border:1px solid grey;" contenteditable=true>
										   <c:out value="${manualAction.expectedDuration}"/>
										   </td>
										   <td id="${manualAction.actionId}_Status" style="border:1px solid grey;" contenteditable=true>
										    <select id = "${manualAction.actionId}_actionStatus">
										    <c:if test = "${manualAction.status == 'Not Started'}">
										   	
										   	<option selected>Not Started</option>
										   	<option>In Progress</option>
										   	<option>Completed</option>
										   </c:if>
										   <c:if test = "${manualAction.status == 'In Progress'}">
										   	
										   	<option>Not Started</option>
										   	<option selected>In Progress</option>
										   	<option>Completed</option>
										   </c:if>
										   <c:if test = "${manualAction.status == 'Completed'}">
										   	
										   	<option>Not Started</option>
										   	<option>In Progress</option>
										   	<option selected>Completed</option>
										   </c:if> 
										   </select>
										   </td>
										   <td id="${manualAction.actionId}_StartTime" style="border:1px solid grey;" contenteditable=true>
										   <c:out value="${manualAction.startTime}"/>
										   </td>
										   <td id="${manualAction.actionId}_EndTime" style="border:1px solid grey;" contenteditable=true>
										   <c:out value="${manualAction.endTime}"/>
										   </td>
										   <td id="${manualAction.actionId}_ActualDuration" style="border:1px solid grey;" contenteditable=true>
										   <c:out value="${manualAction.actualDuration}"/>
										   </td>
										   <td id="${manualAction.actionId}_DependencyStatus" style="border:1px solid grey;" contenteditable=true>
										  <%--  <c:out value="${manualAction.outcome}"/> --%>
										   <select id = "${manualAction.actionId}_actionSuccess">
											<c:if test = "${manualAction.outcome == '--Please Select--'}">
											   	
											   	<option selected>--Please Select--</option>
											   	<option>Success</option>
											   	<option>Failure</option>
											   </c:if>
											   <c:if test = "${manualAction.outcome == 'Success'}">
											   	
											   	<option>--Please Select--</option>
											   	<option selected>Success</option>
											   	<option>Failure</option>
											   </c:if>
											   <c:if test = "${manualAction.outcome == 'Failure'}">
											   	
											   	<option>--Please Select--</option>
											   	<option>Success</option>
											   	<option selected>Failure</option>
											   </c:if> 
											   </select>
										   </td>
										   <td class="" id="${manualAction.actionId}_removeAction" style="border:1px solid grey;" >
											   <center>
		                    						<a title="Remove Actions" style="padding: 5px; min-width:60px; height:48px;" id="removeActionBtn" class="">
		                    							<i class="fa fa-minus-circle" style="font-size: 1.73em;color:red"></i>
		                    						</a>
	                    						</center>
										   </td>
										   
										   </tr>
										   
							</c:forEach>
              </tbody>
          
            </table>
          </div>
							            
							            </div></div>
		                    </div>
		                      </div></div>
		                    </div>
		                    
		                  </div>
		                </div>
		              </div>
				</div>
 <!--    End of CMDB Tabs	 -->

	
<!-- </div> -->
<!-- End Row One -->
<!-- Start CMDB Tab -->
			<div class="row" >
			
				</div>
<!-- End CMDB Tab -->
<!-- Test End -->

<script>

$('.dropdown-menu li').on('click', function()
{
//alert("hi");
$('#dropdownMenuButton').html($(this).text());
});
</script>


