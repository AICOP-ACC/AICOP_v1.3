$(document).ready(function(){
$(".open-button").on("click", function() {
  $(this).closest('.collapse-group').find('.collapse').collapse('show');
});

$(".close-button").on("click", function() {
  $(this).closest('.collapse-group').find('.collapse').collapse('hide');
});

$('.aicop-collapse').on("click",function(){
	var eleId = "#"+$(this).attr('id');
	console.log("eleId-->"+eleId);
	if($(this).hasClass("fa fa-plus-circle")){
		
		$(eleId).removeClass("fa fa-plus-circle");
		$(eleId).addClass("fa fa-minus-circle");
	}
	else{
		$(eleId).removeClass("fa fa-minus-circle");
		$(eleId).addClass("fa fa-plus-circle");
	}
})

/**Soundariya : AutoConferencing Start**/

$( "#inputFieldNotes" ).bind( "keypress", function(e) {
		
		if (e.keyCode == 13) {
			
			$("#notesContent").append("<br/>"+$(this).val());
			$(this).val("");
           
        }
	}); 

$("#popUpNotes").on("click",function(){
	console.log("Btn clciked.....");
	$('#popUpModal').modal('show');
})

//Initiate Conference
$('#confInit').on('click',function(){
	console.log("On click confInit");
	$('#confTerminate').removeClass("invisible");
	$('#shareBridge').removeClass("invisible");
	$('#confInit').prop('disabled',true);
	$.ajax({
			  "async": true,
			  "crossDomain": true,
			  "url": "https://dh.aiam.accenture.com/optusams-node/conference",
			  "method": "POST",
			  "headers": {
				"content-type": "application/x-www-form-urlencoded",
				"cache-control": "no-cache"   
			  },
			  "data": {
				"appName":"OPOM",
				"moderator": "+919994946535",
				"telNos": "+919840272090"
			  },
			  success:function(response){
				  console.log("Call made..");
			  }
			});
})

//Terminate Conference
$('#confTerminate').on('click',function(){
	console.log("On click confTerminate");
	$('#confTerminate').addClass("invisible");
	$('#shareBridge').addClass("invisible");
	$('#confInit').prop('disabled',false);
	$.ajax({
			  "async": true,
			  "crossDomain": true,
			  "url": "https://dh.aiam.accenture.com/optusams-node/terminateCall", 
			  "method": "POST",
				  success:function(response){
					  console.log("Call teminated..");
				  }
			});
	//TODO
	/*var terminatedMsg = "Call has been terminated. Recordings of the call can be found in \"https://dh.aiam.accenture.com/optusams-node/terminateCall/Recordings\"";
	var dt = new Date();
	var utcDate = dt.toUTCString();
	$('#notesTxtId').append("\n"+utcDate+" : "+terminatedMsg);*/
})

//Share Bridge Details
$('#shareBridge').on('click',function(){
	console.log("On click shareBridge");
	$('#popUpModalEmail').modal('show');
	$('#emailModalLabeId').text("Share Bridge Details");
})

$('#notesIcon').on('click',function(){
	console.log("On click notesIcon");
})



$('#addNewNumber').on('click',function(){
		$('#errorMsg').text("");
		console.log("New number added");
		var countryCode = $('#countryCode').val();
		var newNumToAdd = $('#newPhNum').val();
		//Validations for new number
		//India number
		if(countryCode=="+91" && newNumToAdd.length != 10){
			console.log("India number");
			$('#errorModal').modal('show');
			$('#dynamicErrorMsg').html("Phone number must be 10 digit!");
			}
		
		//Singapore number
		else if(countryCode=="+65" && newNumToAdd.length != 8){
			console.log("Singapore Code");
			$('#errorModal').modal('show');
			$('#dynamicErrorMsg').html("Phone number must be 8 digit!");
			}
		
		//Australia number
		else if(countryCode=="+61" && newNumToAdd.length != 9){
			console.log("Australia Code");
			$('#errorModal').modal('show');
			$('#dynamicErrorMsg').html("Phone number must be 9 digit!");
			}
		
		//Validation Passed
		else{
			console.log("Validation passed");
			
			
			var conferenceContactsTable = $('#memDetTable').DataTable({
				"aoColumnDefs" : [
					{ "sClass":"text-right", "aTargets":[4]},
					{ "sClass":"td-actions text-right", "aTargets":[5]}
					
				]
			})
			
			conferenceContactsTable.row.add( [
	            'NA',
	            'Guest',
	            'NA',
	            'NA',
	            countryCode+newNumToAdd,
	            '<button type="button" rel="tooltip" class="btn btn-danger" data-original-title="" title=""><i class="material-icons">close</i></button>'
	        ] ).draw( false );
			conferenceContactsTable.order([1, 'desc']).draw();
		}
	})
/**Soundariya : AutoConferencing End**/

$( "#impactedAppl" ).change(function () {
	console.log("onchange");
    var str = ""; 
    var populateStr = "";
    $( "#impactedAppl option:selected" ).each(function() {
    	var eachOpt = $( this ).text().trim();
    	populateStr += "<span class='tag'><span>"+eachOpt+";&nbsp;&nbsp;</span></span>";
      str += $( this ).text().trim() + " ";
    });
    $('#tags_1_tagsinput').html(populateStr);
  })
  .change();


    $('[data-toggle="tooltip"]').tooltip(); 
    
    
   var currActionTable = $('.currActionTable').dataTable({
        'bFilter': false,
        'bInfo': false,
        'bPaginate': false,
      });
  
   


$(".addRow").on("click", function() {
	var row = ['','','','','','<form><select><option>Not Started</option><option>In Progress</option><option>Completed</option></select></form>','','','','<form><select><option>--Please Select--</option><option>Success</option><option>Failure</option></select></form>','<div class="text-center"><a data-toggle="tooltip" title="Remove Actions"><span class="fa fa-minus-circle fa-lg  text-danger"></span></a></div>'];
	var table = $('.currActionTable').DataTable();
	table.row.add(row).draw();
	
});



$(".saveRow").on("click", function() {
	console.log("save Row");
	});


//Dashboard Title
$("#executiveViewNav").on("click", function() {
	$("#dashBoardTitle a").text("Executive View");
	});

$("#detailedViewNav").on("click", function() {
	$("#dashBoardTitle a").text("Detailed View");
	});

$("#saveNotesBtn").on("click",function(){
	console.log("saveNotesBtn clicked1..");
	var notesVal = $("#notesContent").text().trim();
	
	$.ajax({
		url : "/AICOP/notesHistory.do",
		contentType : "application/json",
		type : "POST",
		
		data : JSON.stringify(notesVal),
			success : function(data){
				
				/*var notesDataTable = $('#notesHistoryTable').DataTable({
				    "bPaginate": false,
				    "bLengthChange": false,
				    "bFilter": false,
				    "bInfo": false,
				    "bAutoWidth": false
				    });*/
				var notesDataTable = $('#notesHistoryTable').DataTable({
				    "bPaginate": true,
				    "bLengthChange": false,
				    "bFilter": true,
				    "bInfo": false,
				    "bAutoWidth": true,
				    "aoColumnDefs" : [
						{ "sWidth": "222px","text-align": "left", "aTargets":[0]},
						{ "sWidth": "326px","text-align": "left", "aTargets":[1]},
						{ "sWidth": "168px","text-align": "left", "aTargets":[2]}
						
					]
			       });
				   
				
				notesDataTable.row.add([
				     data.notes,
				     data.owner,
				     data.timestamp
				     ]).draw(false);
				notesDataTable.order([2, 'desc']).draw();
				
			},
			error : function(){
				console.log("error")
			}
		
	});
	$("#notesTxtId").val("");
	$("#notesContent").html("");
});

/*$(".add-action").on("click",function(){
	var actionId = $(this).attr('id');
	
	$.ajax({
		url : "/AICOP/getActionForId.do",
		contentType : "application/json",
		type : "POST",
		
		data : JSON.stringify(actionId),
			success : function(data){
				var manualActionsTableId = '#manualActionsTable';
				  var manualActionsTableObj = $(manualActionsTableId);

				  if ($.fn.DataTable.isDataTable(manualActionsTableId)){
					  manualActionsTableObj.DataTable().destroy();
				  }
				
				
				var manualActionsDataTable = $('#manualActionsTable').DataTable({
				    "bPaginate": false,
				    "bLengthChange": false,
				    "bFilter": false,
				    "bInfo": false,
				    "bSort": false,
				    "bAutoWidth": false,
				    "select": true,
				    "columnDefs": [ 
				    	{
				    		"targets": 0,
				    		"className":"action-number"
				    	},
				    	
				    	
				    	
				    	{
			            "targets": 5,
			            "data": null,
			            "defaultContent": "<select><option value='0'>Please Select</option><option value='1'>Not Started</option><option value='2'>In Progress</option><option value='3'>Completed</option></select>"
			          
			          
				    },
				    
				    {
			            "targets": 9,
			            "data": null,
			            "defaultContent": "<select><option value='0'>Please Select</option><option value='1'>Success</option><option value='2'>Failure</option></select>"
			          		          
				    }]
				    
				  });
				   
				
				var rowCount = parseInt(manualActionsDataTable.rows().count());
				rowCount = rowCount+1;
				
				manualActionsDataTable.row.add([
					rowCount,
					data.actionDesc,
					data.appOwner,
					data.dependency,
					data.expectedDuration,
					"",
					"",
					"",
					"",	
					""]).draw(false);
			
				$('#deleteHeader').removeClass("td-actions");
				
			},
			error : function(){
				console.log("error")
			}
		
	});
	
});


$('#manualActionsTable tbody').on( 'click', 'tr', function () {
		
	var manualActionsTable = $('#manualActionsTable').DataTable();
	
    if ( $(this).hasClass('selected') ) {
        $(this).removeClass('selected');
    }
    else {
    	manualActionsTable.$('tr.selected').removeClass('selected');
        $(this).addClass('selected');
    }
} );

$('#removeManualAction').on('click', function () {
	
	var manualActionsTable = $('#manualActionsTable').DataTable();
	var selectedRow = manualActionsTable.row('.selected').data();
	console.log("Selected Row-->"+selectedRow[0]+selectedRow[1]);
	manualActionsTable.row('.selected').remove().draw( false );
	
	var count = 0;
	 
	manualActionsTable.rows().every( function ( rowIdx, tableLoop, rowLoop ) {
		    var d = this.data(); 
		    count++;  
		    d[0]=count;
		    this.data(d); 		   
		} );
		 
		// Draw once all updates are done
	manualActionsTable.draw();
	
} );

*/


/*$("#manualActionsTable").on("click",".remove-action",function(){
	
	var colId = parseInt($(this).index());
	var rowId = parseInt($(this).parent().index());
	var actionId = rowId+1;
	
	 var manualActionsTableId = '#manualActionsTable';
	 var manualActionsTableObj = $(manualActionsTableId);
	  
	 var manualActTable =  $('#manualActionsTable').DataTable().row( $(this).parents('tr') ).remove().draw();
	 var count = 0;
	 
	 manualActTable.rows().every( function ( rowIdx, tableLoop, rowLoop ) {
		    var d = this.data(); 
		    count++;  
		    d[0]=count;
		    this.data(d); 		   
		} );
		 
		// Draw once all updates are done
		manualActTable.draw();
	  
	
})*/

/*$('#manualActionsTable').on( 'click', 'tbody td', function () {
	console.log("td clicked");
	var manualActionsTableId = '#manualActionsTable';
	  var manualActionsTableObj = $(manualActionsTableId);

	  if ($.fn.DataTable.isDataTable(manualActionsTableId)){
		  manualActionsTableObj.DataTable().destroy();
	  }
	  var manualActionsDataTable = $('#manualActionsTable').DataTable();
	  manualActionsDataTable.cell( this ).edit();
} );*/



$('#suggestedActionsTable').on("click", ".add-action", function() {
	console.log("Click");
	var elementId = $(this).attr("id");
	console.log("elementId------>"+elementId);
	

	if(elementId.indexOf('_addActionBtn') != -1){
		console.log("Contains button");
		var sNoAction = elementId.split('_addActionBtn');
		var actionNo = sNoAction[0];
		console.log("ActionNo-->"+actionNo);
		var actionsId = "#"+actionNo+"_ActionPre";
		var ownerId = "#"+actionNo+"_OwnerPre";
		var expDurId = "#"+actionNo+"_ExpectDurationPre";
		var actions = $(actionsId).text().trim();
		var owner = $(ownerId).text().trim();
		var expectedDuration = $(expDurId).text().trim();
		console.log("actions-->"+actions);
		
		
		var highestActionNo = $('#manualActionsTable tr:eq(1) td:eq(0)').text();
		console.log(highestActionNo);
		if(highestActionNo==""){
			highestActionNo = "0";
		}
		
			var highestActionNoInt = parseInt(highestActionNo);
			highestActionNoInt = highestActionNoInt + 1;
		
		
		console.log(highestActionNoInt);
		
		$('#manualActionsTable tr:first').after('<tr id="'+highestActionNoInt+'_actionRow" style="background-color:white;color:black" class="even pointer"><td id="'+highestActionNoInt+'_ActionNo" style="border:1px solid grey;" class=" ">'+highestActionNoInt+'</td>'+
		'<td id="'+highestActionNoInt+'_Action" class=" " style="border:1px solid grey;" contenteditable='+true+'>'+actions+'</td>'+
		'<td id="'+highestActionNoInt+'_Owner" class=" " style="border:1px solid grey;" contenteditable='+true+'>'+owner+'</td>'+
		'<td id="'+highestActionNoInt+'_Dependency" class=" " style="border:1px solid grey;" contenteditable='+true+'></td>'+
		'<td id="'+highestActionNoInt+'_ETC" class="select" style="border:1px solid grey;" contenteditable='+true+'>'+expectedDuration+'</td>'+
		'<td id="'+highestActionNoInt+'_Status" style="border:1px solid grey;" class="select" contenteditable='+true+'><select id="'+highestActionNoInt+'_actionStatus" style="width:125px"><option value="Not Started">Not Started</option><option value="In Progress">In Progress</option><option value="Completed">Completed</option></select></td>'+
		'<td id="'+highestActionNoInt+'_StartTime" class=" " style="border:1px solid grey;"></td>'+
		'<td id="'+highestActionNoInt+'_EndTime" class=" " style="border:1px solid grey;"></td>'+		
		'<td id="'+highestActionNoInt+'_ActualDuration" class=" " style="border:1px solid grey;"></td>'+		
		'<td id="'+highestActionNoInt+'_DependencyStatus" style="border:1px solid grey;" class="select" contenteditable='+true+'><select id="'+highestActionNoInt+'_actionSuccess" style="width:125px"><option value="--Please Select--">--Please Select--</option><option value="Success">Success</option><option value="Failure">Failure</option></select></td>'+
		'<td id="'+highestActionNoInt+'_removeAction" style="border:1px solid grey;" class=" " ><center><a title="Remove Actions" style="padding: 5px; min-width:60px; height:48px;" id="removeActionBtn" class=""><i class="fa fa-minus-circle" style="font-size: 1.73em;color:red"></i></a></center></td></tr>');
		
		
		var actionsAddedNew = $('#newActionsAddedHidden').val();
		console.log("actionsAddedNew22-->"+actionsAddedNew);
		if(actionsAddedNew !=""){
		$('#newActionsAddedHidden').val(actionsAddedNew+","+highestActionNoInt);
		}
		else{
			$('#newActionsAddedHidden').val(highestActionNoInt);
		}
		
		
	}
	
});
$('#manualActionsTable').on("click", "td", function() {

	console.log("row selected...");
	
	

	var elementId = $(this).attr("id");
	console.log("elementId!!!->"+elementId);
	var actionNoArray = elementId.split("_");
	var actionNo = actionNoArray[0];
	var actionToPerform = actionNoArray[1];
	
	if(actionToPerform == "removeAction"){
		
	var highestActionNo = $('#manualActionsTable tr:eq(1) td:eq(0)').text().trim();
	
	var highestActionNoInt = parseInt(highestActionNo);
	console.log("deletedIdInt-->"+deletedIdInt+"highestActionNo-->"+highestActionNo);	
	var dependencyFlag = true;
	for(var acNo=1;acNo<=highestActionNoInt;acNo++){
		var dependencyActionNo = $('#'+acNo+'_Dependency').text().trim();
		if(dependencyActionNo==actionNo){
			dependencyFlag = false;
			alert("Cannot Delete! Dependency exists for Action No:"+acNo);
		}
	}
		
		
		
	if(dependencyFlag){	
		
		
	var userChoice = confirm("Are you sure to delete action "+actionNo+" ?");
	if(userChoice){
	rowId = "#"+actionNo+"_actionRow";
	$(rowId).remove();
	var newIdsStr = $('#newActionsAddedHidden').val();
	var changedIds = newIdsStr.replace(actionNo,"NA");
	$('#newActionsAddedHidden').val(changedIds);
	console.log("After delete hidden IDS::"+changedIds);
	deleteFromDatabase(actionNo);
	

	
	/**Start: Adjustment of action No**/
	var deletedIdInt = parseInt(actionNo);
	
	
	if(deletedIdInt==highestActionNoInt){
		console.log("Last row deleted");
		
	}
	else{
		deletedIdInt = deletedIdInt+1;
	for(var i=deletedIdInt;i<=highestActionNoInt;i++){
		//deleteFromFile(i);
		changeId(i,highestActionNoInt);
	}
	}
	}
	/**End: Adjustment of action No**/
	}
	}	
});

function changeId(idToChange,highestActionNoInt){
	var newID = idToChange-1;
	console.log("idToChange-->"+idToChange+"::newID-->"+newID);

	$('#'+idToChange+'_ActionNo').attr('id', newID+'_ActionNo');
	
	/**Start : Check dependency and sync actionNo**/
	
	for(var acNo=1;acNo<=highestActionNoInt;acNo++){
			var dependencyActionNo = $('#'+acNo+'_Dependency').text().trim();
			if(idToChange==dependencyActionNo){
				$('#'+acNo+'_Dependency').text(newID);
				
			}
		}
		
	/**End : Check dependency and sync actionNo**/
	
	$('#'+newID+'_ActionNo').text(newID);
	$('#'+idToChange+'_Action').attr('id', newID+'_Action');
	$('#'+idToChange+'_Owner').attr('id', newID+'_Owner');
	$('#'+idToChange+'_Dependency').attr('id', newID+'_Dependency');
	$('#'+idToChange+'_ETC').attr('id', newID+'_ETC');
	$('#'+idToChange+'_Status').attr('id', newID+'_Status');
	$('#'+idToChange+'_StartTime').attr('id', newID+'_StartTime');
	$('#'+idToChange+'_EndTime').attr('id', newID+'_EndTime');
	$('#'+idToChange+'_ActualDuration').attr('id', newID+'_ActualDuration');
	$('#'+idToChange+'_DependencyStatus').attr('id', newID+'_DependencyStatus');
	$('#'+idToChange+'_removeAction').attr('id', newID+'_removeAction');
	$('#'+idToChange+'_actionStatus').attr('id', newID+'_actionStatus');
	$('#'+idToChange+'_actionSuccess').attr('id', newID+'_actionSuccess');
	$('#'+idToChange+'_actionRow').attr('id', newID+'_actionRow');
	var newIdsStr = $('#newActionsAddedHidden').val();
	var changedIds = newIdsStr.replace(idToChange,newID);
	$('#newActionsAddedHidden').val(changedIds);
	console.log("After delete adjust hidden IDS::"+changedIds);
}

$('#manualActionsTable').on("change","select",function(){
	
	var elementId = $(this).attr("id");
	 eleId = "#"+elementId+" option:selected";
	  var optionSelected = $(eleId).text().trim();
	  console.log("elementId -->"+elementId);
	  console.log("optionSelected -->"+optionSelected);
	  var validationFlag = true;
	  var actionNoArray = elementId.split("_");
	  var actionNo = actionNoArray[0];
	  console.log("actionNo:::"+actionNo);
	  if(optionSelected.trim() == "Completed" || optionSelected.trim() == "In Progress" || optionSelected.trim() == "Not Started"){
			var discreStatusFlag = checkStatusDiscrepancy(actionNo);
			
			if(discreStatusFlag){
			
			var dependencyId = "#"+actionNo+"_Dependency";
			var dependency = $(dependencyId).text().trim();
			console.log("dependencyId::"+dependencyId+"----"+"dependency:: "+dependency);
			if(dependency.trim() == "NA" || dependency.trim() == ""){
				console.log("No Dependency");
			}
			else{
				
			var dependencyStatusId = "#"+dependency+"_actionStatus option:selected" ;
			var dependencyOutcomeId = "#"+dependency+"_actionSuccess option:selected";
			var dependencyOutcome = $(dependencyOutcomeId).text().trim();
			var dependencyStatus = $(dependencyStatusId).text().trim();
			console.log("dependencyOutcome--->"+dependencyOutcome+" ::dependencyStatusId-->"+dependencyStatusId+"dependencyStatus-->"+dependencyStatus);
			if(dependencyStatus=="Completed"){
				console.log("Completed");
				if(dependencyOutcome != "Success"){
					alert("Cannot complete the action ! Dependency Action is failed!");
					validationFlag = false;
					e.preventDefault();	
				}
			}
			else{
				$('#'+elementId).val("Not Started");
				alert("Cannot complete the action ! Dependency for the current Action is not completed!");
				validationFlag = false;
				e.preventDefault();
				
			}
			}	
		if(validationFlag)	{
		
		if(optionSelected.trim() == "Not Started"){
			var startTimeId = "#"+actionNo+"_StartTime";
			var startTimeVal = $(startTimeId).text().trim();
			
			var endTimeId = "#"+actionNo+"_EndTime";
			var endTimeVal = $(endTimeId).text().trim();
			
			if(endTimeVal != ""){
				alert("Cannot change Status from Completed to Not Started");
				$("#"+actionNo+"_actionStatus").val("Completed");
			}
			
		}
			
		if(optionSelected.trim() == "In Progress"){
			console.log("check1");
			
			var startTimeId = "#"+actionNo+"_StartTime";
			var startTimeVal = $(startTimeId).text().trim();
			
			var endTimeId = "#"+actionNo+"_EndTime";
			var endTimeVal = $(endTimeId).text().trim();
			
			if(endTimeVal != ""){
				alert("Cannot change Status from Completed to In Progress");
				$("#"+actionNo+"_actionStatus").val("Completed");
			}
			else{
			if(startTimeVal == "" || startTimeVal.trim()==""){
				console.log("check2");
				var dt = new Date();
				
				var curr_date = dt.getDate();
				var curr_month = dt.getMonth();
				var curr_mont_int = parseInt(curr_month);
				curr_mont_int = curr_mont_int + 1;
				var curr_year = dt.getFullYear();
				var curr_hours = dt.getHours();
				var curr_mins = dt.getMinutes();
				var curr_secs = dt.getSeconds();
				var startTime = curr_mont_int + "/" + curr_date + "/" + curr_year+" "+curr_hours+":"+curr_mins; 
				console.log("start::"+startTime);
				$(startTimeId).html(startTime);
				//autoSave(actionNo);
			}
			}
		}
		


		if(optionSelected.trim() == "Completed"){
			console.log("check3");
			
			var startTimeId = "#"+actionNo+"_StartTime";
			var startTimeVal = $(startTimeId).text().trim();
			
			var endTimeId = "#"+actionNo+"_EndTime";
			var endTimeVal = $(endTimeId).text().trim();
			
			
			if(startTimeVal == ""){
				alert("Cannot change status from Not started to Completed");
				$("#"+actionNo+"_actionStatus").val("Not Started");
			}
			
		else{
			if(endTimeVal == "" || endTimeVal.trim()==""){
				console.log("check4");
				var dt = new Date();
				
				var curr_date = dt.getDate();
				var curr_month = dt.getMonth();
				var curr_mont_int = parseInt(curr_month);
				curr_mont_int = curr_mont_int + 1;
				var curr_year = dt.getFullYear();
				var curr_hours = dt.getHours();
				var curr_mins = dt.getMinutes();
				var curr_secs = dt.getSeconds();
				//var endTime = curr_date + "/" + curr_mont_int + "/" + curr_year+" "+curr_hours+":"+curr_mins; 
				var endTime = curr_mont_int + "/" + curr_date + "/" + curr_year+" "+curr_hours+":"+curr_mins; 
				console.log("end::"+endTime);
				$(endTimeId).html(endTime);
				
				
				
				
				var sd = Date.parse(startTimeVal,"d/m/Y g:i");
				var startTimeValDate = new Date(sd);
				
				
				var ed = Date.parse(endTime,"d/m/Y g:i");
				var endTimeValDate = new Date(ed);
				console.log("endTimeValDate: "+endTimeValDate+" --- startTimeValDate"+startTimeValDate);
				var diffMs = (endTimeValDate - startTimeValDate);
				var diffMins = Math.round(((diffMs % 86400000) % 3600000) / 60000); // minutes
				console.log("diffMs::"+diffMs+"-----diffMins::"+diffMins);
				
				var actualDurId = "#"+actionNo+"_ActualDuration";
				$(actualDurId).html(diffMins);
				
				
			}
		
		//autoSave(actionNo);
		}	
		}	
	   }//end if validation flag	
	  }	
			
	  }
	  
	  
	  if(optionSelected.trim() == "Success" || optionSelected.trim() == "Failure"){
		  
		  var outcomeId = "#"+actionNo+"_actionSuccess";
		  var statusId = "#"+actionNo+"_actionStatus option:selected";
		  console.log("statusId-->"+statusId);
		  var actionStatus = $(statusId).text().trim();
		  console.log("actionStatus"+actionStatus);
		  if(actionStatus.trim() == "Completed"){
			 // autoSave(actionNo);
		  }
		  
		  else{
			  if((actionStatus.trim() == "In Progress") || (actionStatus.trim() == "Not Started")){
				 alert("Please change the action status!");  
			  }
			 
			  $(outcomeId).text("--Please Select");
		  }
	  };
	  
	  
	  if(optionSelected.trim() == "NA"){
		  var outcomeId = "#"+actionNo+"_actionSuccess";
		  var statusId = "#"+actionNo+"_actionStatus option:selected";
		  
		  var actionStatus = $(statusId).text().trim();
		  if(actionStatus.trim() == "Completed"){
				 alert("Cannot change the outcome of Completed action status to NA!");  
				 $(outcomeId).text("--Please Select--");
				 
			  }
		  else{
			   //autoSave(actionNo);
		  }
		  
	  }
})

function checkStatusDiscrepancy(actionNoCurr){
	var flag = true;
	
	var rowCount = $('#manualActionsTable tr').length;
	console.log("checkStatusDiscrepancy :: rowCount : " + rowCount);
	for( var i=0;i<rowCount;i++){
		console.log("forLoop"+i);
	var actionNo = $('#manualActionsTable tr:eq('+i+') td:eq(0)').text().trim();	
	
	var statId = "#"+actionNo+"_actionStatus option:selected";
	var outID = "#"+actionNo+"_actionSuccess option:selected";
	var currStatus = $(statId).text().trim();
	var currOutcomeproduct = $(outID).val();
	//var currOutcomeproduct = $('#manualActionsTable tr:eq('+i+') td:eq(8)').text();
	console.log("currStatus:"+currStatus+":: currOutcomeproduct :::"+currOutcomeproduct);
	if(currStatus=="Completed" && (currOutcomeproduct == "NA" || currOutcomeproduct == "--Please Select--")){
		if(actionNo==actionNoCurr){
			console.log("No discrepancy");
		}
		else{
					flag = false;
				console.log("Discrepancy");
				alert("Outcome for Completed Action #"+actionNo+" should be changed");	
				
		}
	}
	}
	
	return flag;
}






$('#saveManualActions').on("click", function (e) {
	console.log("save btn clickeed");
	var actionsAddedNew = $('#newActionsAddedHidden').val();
	console.log("actionsAddedNew"+actionsAddedNew);
	if(actionsAddedNew == ""){
		
		console.log("No new Rows added");
		alert("No new Rows Added!");
	}
	
	
	
	else{
	var actionsAddedHidden = $('#newActionsAddedHidden').val();
	
	var countNA = (actionsAddedHidden.match(/NA/g) || []).length;
	console.log(countNA);	
		
	var arrayValue = actionsAddedHidden.split(',');
	var arrayValueLength = arrayValue.length;
	console.log("arrayValueLength"+arrayValueLength);
	
	if(countNA == arrayValueLength){
		alert("No new Rows Added!");
	}
	
	else{
	
	/**Start:Getting new values and Validating**/
	var nullCheckFlag = true;
	for(i=0;i<arrayValueLength;i++){
		//console.log("INNNNNNN");
		var actionNoId = arrayValue[i];
				
		if(actionNoId!="NA"){
		//Getting new values
		var sNoId = "#"+actionNoId+"_ActionNo";
		var sNo = $(sNoId).text().trim();
		var actionID = "#"+actionNoId+"_Action";
		var action = $(actionID).text().trim();
		var ownerId = "#"+actionNoId+"_Owner";
		var owner = $(ownerId).text().trim();
		var dependencyId = "#"+actionNoId+"_Dependency"
		var dependency = $(dependencyId).text().trim();
		var etcId = "#"+actionNoId+"_ETC";
		var etc = $(etcId).text().trim();
		var actionStatusId = "#"+actionNoId+"_actionStatus  option:selected";
		var actionStatus = $(actionStatusId).text().trim();
		var plannedTOCId = "#"+actionNoId+"_StartTime";
		var plannedTOC = $(plannedTOCId).text().trim();
		var actualTOCId = "#"+actionNoId+"_EndTime";
		var actualTOC=$(actualTOCId).text().trim();
		var actualDurId = "#"+actionNoId+"_ActualDuration";
		var actualDur=$(actualDurId).text().trim();
		var actionSuccessId = "#"+actionNoId+"_actionSuccess option:selected";
		var actionSuccess = $(actionSuccessId).val();
		var removeActionId = "#"+actionNoId+"_removeAction";
		//console.log(sNo+"-->"+dependency+"-->"+action+"-->"+owner+"-->"+etc+"-->"+actionStatus+"-->"+plannedTOC+"-->"+actualTOC+"-->"+actionSuccess+"-->"+actualDur);
		
		if(action==""){
			nullCheckFlag = false;
			alert("Cannot Save! Description is empty for Action "+sNo);
		}
	
		else if(owner==""){
			nullCheckFlag = false;
			alert("Cannot Save! Owner is empty for Action "+sNo);
		}
	
	/**End:Getting new values and Validating**/
	}
	}//end for 
	
	if(nullCheckFlag){
	
		for(i=0;i<arrayValueLength;i++){
		//console.log("INNNNNNN");
		var actionNoId = arrayValue[i];
		
		//Getting new values
		var sNoId = "#"+actionNoId+"_ActionNo";
		var sNo = $(sNoId).text().trim();
		var actionID = "#"+actionNoId+"_Action";
		var action = $(actionID).text().trim();
		var ownerId = "#"+actionNoId+"_Owner";
		var owner = $(ownerId).text().trim();
		var dependencyId = "#"+actionNoId+"_Dependency"
		var dependency = $(dependencyId).text().trim();
		var etcId = "#"+actionNoId+"_ETC";
		var etc = $(etcId).text().trim();
		var actionStatusId = "#"+actionNoId+"_actionStatus  option:selected";
		var actionStatus = $(actionStatusId).text().trim();
		var startTimeId = "#"+actionNoId+"_StartTime";
		var startTime = $(startTimeId).text().trim();
		var endTimeId = "#"+actionNoId+"_EndTime";
		var endTime=$(endTimeId).text().trim();
		var actualDurId = "#"+actionNoId+"_ActualDuration";
		var actualDur=$(actualDurId).text().trim();
		var actionSuccessId = "#"+actionNoId+"_actionSuccess option:selected";
		var actionSuccess = $(actionSuccessId).val();
		
		console.log(sNo+"-->"+dependency+"-->"+action+"-->"+owner+"-->"+etc+"-->"+actionStatus+"-->"+startTime+"-->"+endTime+"-->"+actionSuccess+"-->"+actualDur);
		console.log("AJAX for Action "+sNo);
		ManualActionsBean = new Object();
		
		ManualActionsBean.actionId = sNo;
		ManualActionsBean.actionDesc = action;
		ManualActionsBean.appOwner = owner;
		ManualActionsBean.dependency = dependency;
		ManualActionsBean.expectedDuration = etc;
		ManualActionsBean.status = actionStatus;
		ManualActionsBean.startTime = startTime;
		ManualActionsBean.endTime = endTime;
		ManualActionsBean.actualDuration = actualDur
		ManualActionsBean.outcome = actionSuccess;
		
		
		$.ajax({
			url : "/AICOP/saveAction.do",
			contentType : "application/json",
			type : "POST",
			
			data : JSON.stringify(ManualActionsBean),
				success : function(data){
					console.log("data saved");
					console.log(data);
					
				},
				error : function(){
					console.log("error")
				}
			
		});
				
		
	}//end for
			$('#newActionsAddedHidden').val("");
		}//end if nullCheckFlag
			
	}		
	}
	
	
});

function deleteFromDatabase(actionNo){
	
	$.ajax({
		url : "/AICOP/removeAction.do",
		contentType : "application/json",
		type : "POST",
		
		data : JSON.stringify(actionNo),
			success : function(data){
				console.log("data saved");
				console.log(data);
				
			},
			error : function(){
				console.log("error")
			}
		
	});
}


$('#addManualAction').on("click", function (e) {
	console.log("Add Action Button clicked");
		var highestActionNo = $('#manualActionsTable tr:eq(1) td:eq(0)').text().trim();
		console.log(highestActionNo);
		if(highestActionNo==""){
			highestActionNo = "0";
		}
		
		var highestActionNoInt = parseInt(highestActionNo);
		highestActionNoInt = highestActionNoInt + 1;
			
		
		$('#manualActionsTable tr:first').after('<tr id="'+highestActionNoInt+'_actionRow" style="background-color:white;color:black" class="even pointer"><td id="'+highestActionNoInt+'_ActionNo" style="border:1px solid grey;" class=" ">'+highestActionNoInt+'</td>'+
		'<td id="'+highestActionNoInt+'_Action" class=" " style="border:1px solid grey;" contenteditable='+true+'></td>'+
		'<td id="'+highestActionNoInt+'_Owner" class=" " style="border:1px solid grey;" contenteditable='+true+'></td>'+
		'<td id="'+highestActionNoInt+'_Dependency" class=" " style="border:1px solid grey;" contenteditable='+true+'></td>'+
		'<td id="'+highestActionNoInt+'_ETC" class="select" style="border:1px solid grey;" contenteditable='+true+'></td>'+
		'<td id="'+highestActionNoInt+'_Status" style="border:1px solid grey;" class="select" contenteditable='+true+'><select style="width:125px" id="'+highestActionNoInt+'_actionStatus"><option value="Not Started">Not Started</option><option value="In Progress">In Progress</option><option value="Completed">Completed</option></select></td>'+
		'<td id="'+highestActionNoInt+'_StartTime" class=" " style="border:1px solid grey;">'+
		'<td id="'+highestActionNoInt+'_EndTime" class=" " style="border:1px solid grey;"></td>'+		
		'<td id="'+highestActionNoInt+'_ActualDuration" class=" " style="border:1px solid grey;"></td>'+		
		'</td><td id="'+highestActionNoInt+'_DependencyStatus" style="border:1px solid grey;" class="select" contenteditable='+true+'><select style="width:125px" id="'+highestActionNoInt+'_actionSuccess"><option value="--Please Select--">--Please Select--</option><option value="Success">Success</option><option value="Failure">Failure</option></select></td>'+
		'<td id="'+highestActionNoInt+'_removeAction" style="border:1px solid grey;" class=" " ><center><a title="Remove Actions" style="padding: 5px; min-width:60px; height:48px;" id="removeActionBtn" class=""><i class="fa fa-minus-circle" style="font-size: 1.73em;color:red"></i></a></center></td></tr>');
		
		var actionsAddedNew = $('#newActionsAddedHidden').val();
		console.log("actionsAddedNew11-->"+actionsAddedNew);
		if(actionsAddedNew !=""){
			
		$('#newActionsAddedHidden').val(actionsAddedNew+","+highestActionNoInt);
		}
		else{
			$('#newActionsAddedHidden').val(highestActionNoInt);
		}
		
		
		
	
	
	
});

$('#sendMail').on("click", function (e) {
	console.log("send mail clicked");
	var toEmail = $('#toEmail').val();
	var subEmail = $('#subject').val();
	var content = $('#mailContent').val();
	console.log(content);
	
	var sendEmail = {
	  "async": true,
	  "crossDomain": true,
	  "url": "https://dh.aiam.accenture.com/optusams-node/sendMail",
	  "method": "POST",
	  "headers": {
		"content-type": "application/x-www-form-urlencoded",
		"cache-control": "no-cache"   
	  },
	  "data": {
		"to": toEmail,
		"subject":subEmail,
		"content":content
	  }
	  
	}

	$.ajax(sendEmail).done(function (response) {
	  console.log(response);
	  console.log("Email sent....")
	});

	});


$('#actionStatus').on("click","a",function(){
	console.log("On click of action Status");
	var elementId = $(this).attr('id');
	console.log("elementId-->"+elementId);
})

if(window.location.href.indexOf("detailedView") > -1) 
{
     var notesDataTable = $('#notesHistoryTable').DataTable({
 	    "bPaginate": true,
 	    "bLengthChange": false,
 	    "bFilter": true,
 	    "bInfo": false,
 	    "bAutoWidth": true
        });
 	notesDataTable.order([2, 'desc']).draw();
}
if(window.location.href.indexOf("executiveView") > -1) 
{
	alert("executive");
     $("#attid").toggle();
     $("#pagesNav").toggle('nav-collapse');
     $("#executiveViewNav").addClass("active");
}
if(window.location.href.indexOf("detailedView") > -1) 
{
	alert("detail");
     $("#attiddetail").toggle();
     $("#pagesNav").toggle('nav-collapse');
     $("#detailedViewNav").addClass("active");
}


});