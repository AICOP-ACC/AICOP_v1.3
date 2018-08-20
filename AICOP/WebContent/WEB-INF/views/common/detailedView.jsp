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
								<i
									class="fa fa-arrow-circle-o-right circle-icon-g icon-prechecks-neutral"></i>
							</div>
							<div class="col-md-4">Recent Server Restart/Broken Network
							</div>

							<div class="col-md-2">
								<i
									class="fa fa-arrow-circle-o-right circle-icon-g icon-prechecks-neutral"></i>
							</div>

						</div>
						
						<div class="row mt-3 ml-4">
								<div class="col-md-4">SLA of the flow</div>
	
								<div class="col-md-2">
									<i class="fa fa-thumbs-up circle-icon-g icon-prechecks-success"></i>
								</div>
								
								<div class="col-md-4">Ongoing Bulk submission in OPOM</div>
	
								<div class="col-md-2">
									<i
										class="fa fa-arrow-circle-o-right circle-icon-g icon-prechecks-neutral"></i>
								</div>

						</div>

						<div class="row mt-3 ml-4">
							<div class="col-md-4">New/Unexpected Errors</div>

							<div class="col-md-2">
								<i class="fa fa-thumbs-down circle-icon-r icon-prechecks-danger"></i>
							</div>
							<div class="col-md-4">Long running DB queries</div>

							<div class="col-md-2">
								<i class="fa fa-thumbs-down circle-icon-r icon-prechecks-danger"></i>
							</div>

						</div>
							
						<div class="row mt-3 ml-4">
						</div>
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
                    <p id="notesContent">Notes for Major - 1801040331
                      </p>
	                     <div class="swal2-content" style="display: block;">
		                     <div class="form-group bmd-form-group"><input id="inputFieldNotes" placeholder="Type here..." type="text" class="form-control">
		                     </div>
	                     </div>
                    </div>
                    <div class="modal-footer">
                     <button id="saveNotesBtn" type="button" class="btn btn-primary">Save changes</button> 
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
                <tr>
                  <!-- <td class="text-center">5</td> -->
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
                </tr>
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
		                          <a class="nav-link active" href="#notesHistory" data-toggle="tab">
		                            <i class="material-icons">event_note</i> Notes History
		                          </a>
		                        </li>
		                        <li class="nav-item">
		                          <a class="nav-link" href="#triageAction" data-toggle="tab">
		                            <i class="material-icons">brightness_auto</i> Triage Action
		                          </a>
		                        </li>
		                      </ul>
		                    </div>
		                  </div>
		                </div>
		                <div class="card-body ">
		                  <div class="tab-content text-center">
		                    <div class="tab-pane active" id="notesHistory">
		                      <div class="card">
							        <div class="card-header card-header-rose card-header-icon">
							         <!--  <div class="card-icon">
							            <i class="material-icons">assignment</i>
							          </div> -->
							          <h4 class="card-title">Notes History</h4>
							        </div>
							        <div class="card-body">
							          <div class="toolbar">
						             
							          </div>
							          <div class="material-datatables">
							            <div id="datatables_wrapper" class="dataTables_wrapper dt-bootstrap4">
							            <div class="row">
							            	<div class="col-sm-12 col-md-6">
							            		<div class="dataTables_length" id="datatables_length">
							            			<label>Show <select name="datatables_length" aria-controls="datatables" class="custom-select custom-select-sm form-control form-control-sm">
							            				<option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="-1">All</option>
							            				</select> entries</label>
							            				</div>
							            		</div>
							            		<div class="col-sm-12 col-md-6">
							            		<div id="datatables_filter" class="dataTables_filter">
							            			<label><span class="bmd-form-group bmd-form-group-sm">
							            				<input type="search" class="form-control form-control-sm" placeholder="Search records" aria-controls="datatables">
							            				</span></label>
							            		</div>
							            	</div>
							            </div>
							            
							            <div class="row">
							            <div class="col-sm-12"><table id="notesHistoryTable" class="table table-striped table-no-bordered table-hover dataTable dtr-inline" cellspacing="0" width="100%" style="width: 100%;" role="grid" aria-describedby="datatables_info">
							            
							              <thead>
							                <tr role="row"><th class="sorting_asc" tabindex="0" aria-controls="datatables" rowspan="1" colspan="1" style="width: 222px;" aria-sort="ascending" aria-label="Name: activate to sort column descending">Notes</th><th class="sorting" tabindex="0" aria-controls="datatables" rowspan="1" colspan="1" style="width: 326px;" aria-label="Position: activate to sort column ascending">User</th><th class="sorting" tabindex="0" aria-controls="datatables" rowspan="1" colspan="1" style="width: 168px;" aria-label="Office: activate to sort column ascending">Time Stamp</th></tr>
							              </thead>
							              <tfoot>
							                <tr><th rowspan="1" colspan="1">Notes</th><th rowspan="1" colspan="1">User</th><th rowspan="1" colspan="1">Time Stamp</th></tr>
							              </tfoot>
							              <tbody>
		 	
										   <c:forEach items="${notesList}" var="notes">
										   <tr>
										   <td>
										   <c:out value="${notes.notes}"/>
										   </td>
										   <td>
										   <c:out value="${notes.owner}"/>
										   </td>
										   <td>
										   <c:out value="${notes.timestamp}"/>
										   </td>
										   </tr>
										   
										   </c:forEach>
										   </tbody>
							            </table>
							            </div></div><div class="row"><div class="col-sm-12 col-md-5"><div class="dataTables_info" id="datatables_info" role="status" aria-live="polite">Showing 1 to 10 of 40 entries</div></div><div class="col-sm-12 col-md-7"><div class="dataTables_paginate paging_full_numbers" id="datatables_paginate"><ul class="pagination"><li class="paginate_button page-item first disabled" id="datatables_first"><a href="#" aria-controls="datatables" data-dt-idx="0" tabindex="0" class="page-link">First</a></li><li class="paginate_button page-item previous disabled" id="datatables_previous"><a href="#" aria-controls="datatables" data-dt-idx="1" tabindex="0" class="page-link">Previous</a></li><li class="paginate_button page-item active"><a href="#" aria-controls="datatables" data-dt-idx="2" tabindex="0" class="page-link">1</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatables" data-dt-idx="3" tabindex="0" class="page-link">2</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatables" data-dt-idx="4" tabindex="0" class="page-link">3</a></li><li class="paginate_button page-item "><a href="#" aria-controls="datatables" data-dt-idx="5" tabindex="0" class="page-link">4</a></li><li class="paginate_button page-item next" id="datatables_next"><a href="#" aria-controls="datatables" data-dt-idx="6" tabindex="0" class="page-link">Next</a></li><li class="paginate_button page-item last" id="datatables_last"><a href="#" aria-controls="datatables" data-dt-idx="7" tabindex="0" class="page-link">Last</a></li></ul></div></div></div></div>
							          </div>
							        </div>
							        end content
							      </div>    
		                    </div>
		                    <div class="tab-pane" id="triageAction">
		                      <p> Triage actions have to be displayed</p>
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




