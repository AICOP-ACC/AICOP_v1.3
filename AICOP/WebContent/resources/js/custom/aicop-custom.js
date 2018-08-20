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

/*$('#impactedAppl').on('click',function(){
	console.log("On select");
	var selOpt = $(this).text();
	console.log("selected option::"+selOpt);
})*/
$( "#impactedAppl" ).change(function () {
	console.log("onchange");
    var str = ""; 
    var populateStr = "";
    $( "#impactedAppl option:selected" ).each(function() {
    	var eachOpt = $( this ).text()
    	populateStr += "<span class='tag'><span>"+eachOpt+";&nbsp;&nbsp;</span></span>";
      str += $( this ).text() + " ";
    });
   // $( "#divId" ).text( str );
   // populateStr += '<div id="tags_1_addTag"><input id="tags_1_tag" value="" data-default="add a tag" style="color: rgb(102, 102, 102); width: 72px;"></div><div class="tags_clear"></div>';
    $('#tags_1_tagsinput').html(populateStr);
  })
  .change();


    $('[data-toggle="tooltip"]').tooltip(); 
    //var currentActionTable = $('#currActionTable').dataTable();
    
   var currActionTable = $('.currActionTable').dataTable({
        'bFilter': false,
        'bInfo': false,
        'bPaginate': false,
      });
  
   


$(".addRow").on("click", function() {
	var row = ['','','','','','<form><select><option>Not Started</option><option>In Progress</option><option>Completed</option></select></form>','','','','<form><select><option>--Please Select--</option><option>Success</option><option>Failure</option></select></form>','<div class="text-center"><a data-toggle="tooltip" title="Remove Actions"><span class="fa fa-minus-circle fa-lg  text-danger"></span></a></div>'];
	var table = $('.currActionTable').DataTable();
	table.row.add(row).draw();
	//table.order([0, 'asc']).draw();
    //table.page('first').draw(false);
	
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
	/*var notesTxt = $("#notesTxtId").val();
	console.log("notesTxtId"+notesTxt);
	var notesShowTxt = $("textarea#notesTxtShowId").val();
	console.log("notesTxtShowId"+notesShowTxt);
	$("#notesTxtShowId").append("\n"+notesTxt);*/
	var notesVal = $("#notesContent").text();
	console.log(notesVal);
	//$("#notesTxtId").val("");
	
	$.ajax({
		url : "/AICOP/notesHistory.do",
		contentType : "application/json",
		type : "POST",
		
		data : JSON.stringify(notesVal),
			success : function(data){
				console.log('inside success');
				console.log(data.notes);
				console.log(data.owner);
				console.log(data.timestamp);
				console.log('inside success1');
				var notesDataTable = $('#notesHistoryTable').DataTable({
				    "bPaginate": false,
				    "bLengthChange": false,
				    "bFilter": false,
				    "bInfo": false,
				    "bAutoWidth": false});
				   // "order": [[1, "desc"]]});
				
				notesDataTable.row.add([
				     data.notes,
				     data.owner,
				     data.timestamp]).draw(false);
				notesDataTable.order([2, 'desc']).draw();
				//notesDataTable.page('last').draw(false);
			},
			error : function(){
				console.log("error")
			}
		
	});
	$("#notesTxtId").val("");
});

});