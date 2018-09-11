$(document).ready(function() {
	
	function resetFunction(){
		$('#svgEdit').css("background-color", "rgb(165, 162, 162)");
		$('rect').css("fill", "rgb(165, 162, 162)");
		$('line').css("visibility","hidden");
		
	}
	
	$('#PN').click(function(){
		$('#svgEdit').css({visibility:"visible"});
		resetFunction();
	    $('#PortINRect').css({ fill: "white" , transition: "1s"});
	    $('#line1').css({ stroke: "black",visibility: "visible",});
		$('#MiddleReceiveRect').css({ fill: "white", transition: "1s"});
		$('#line2').css({ stroke: "black",visibility: "visible"});
	    $('#RcvReqRect').css({ fill: "white", transition: "1s"});
	    $('#LosingRect').css({ fill: "white", transition: "1s"});
	    $('#line3').css({ stroke: "black",visibility: "visible"});
	})
	
	$('#PNREC').click(function(){
		$('#svgEdit').css({visibility:"visible"});
		resetFunction();
	    $('#CRMNotiRect').css({ fill: "white" , transition: "1s"});
	    $('#line4').css({ stroke: "black",visibility: "visible"});
		$('#NotifyMiddleRect').css({ fill: "white", transition: "1s"});
		$('#line6').css({ stroke: "black",visibility: "visible"});
	    $('#confirmRect').css({ fill: "white", transition: "1s"});
	    $('#line7').css({ stroke: "black",visibility: "visible"});
	    $('#RcvRespRect').css({ fill: "white", transition: "1s"});
	    $('#line17').css({ stroke: "black",visibility: "visible"});
	    $('#line16').css({ stroke: "black",visibility: "visible"});
	    $('#LosingRect').css({ fill: "white", transition: "1s"});
	})
	
	$('#PNREC').click(function(){
		$('#svgEdit').css({visibility:"visible"});
		resetFunction();
	    $('#CRMNotiRect').css({ fill: "white" , transition: "1s"});
	    $('#line4').css({ stroke: "black",visibility: "visible"});
	    $('#line5').css({ stroke: "black",visibility: "visible"});
		$('#NotifyMiddleRect').css({ fill: "white", transition: "1s"});
		$('#line6').css({ stroke: "black",visibility: "visible"});
	    $('#confirmRect').css({ fill: "white", transition: "1s"});
	    $('#line7').css({ stroke: "black",visibility: "visible"});
	    $('#RcvRespRect').css({ fill: "white", transition: "1s"});
	    $('#line17').css({ stroke: "black",visibility: "visible"});
	    $('#line16').css({ stroke: "black",visibility: "visible"});
	    $('#LosingRect').css({ fill: "white", transition: "1s"});
	})
	
	$('#PNREJ').click(function(){
		$('#svgEdit').css({visibility:"visible"});
		resetFunction();
		$('#TriggerMiddleRect').css({ fill: "white" , transition: "1s"});
		$('#SendDiscRect').css({ fill: "white" , transition: "1s"});
		$('#DisconnectLosingRect').css({ fill: "white" , transition: "1s"});
		$('#line8').css({ stroke: "black",visibility: "visible"});
		$('#line9').css({ stroke: "black",visibility: "visible"});
	})
	
	$('#PWN').click(function(){
		$('#svgEdit').css({visibility:"visible"});
		resetFunction();
		$('#CRMNotiRect').css({ fill: "white" , transition: "1s"});
		$('#NotifyRejectRect').css({ fill: "white" , transition: "1s"});
		$('#disconnectRect').css({ fill: "white" , transition: "1s"});
		$('#RcvResp2Rect').css({ fill: "white" , transition: "1s"});
		$('#DisconnectLosingRect').css({ fill: "white" , transition: "1s"});
		$('#line4').css({ stroke: "black",visibility: "visible"});
		$('#line15').css({ stroke: "black",visibility: "visible"});
		$('#line26').css({ stroke: "black",visibility: "visible"});
		$('#line13').css({ stroke: "black",visibility: "visible"});
		$('#line11').css({ stroke: "black",visibility: "visible"});
		$('#line18').css({ stroke: "black",visibility: "visible"});
		$('#line19').css({ stroke: "black",visibility: "visible"});
	})
	
	$('#PWN').click(function(){
		$('#svgEdit').css({visibility:"visible"});
		resetFunction();
		$('#CRMNotiRect').css({ fill: "white" , transition: "1s"});
		$('#NotifyRejectRect').css({ fill: "white" , transition: "1s"});
		$('#disconnectRect').css({ fill: "white" , transition: "1s"});
		$('#RcvResp2Rect').css({ fill: "white" , transition: "1s"});
		$('#DisconnectLosingRect').css({ fill: "white" , transition: "1s"});
		$('#line4').css({ stroke: "black",visibility: "visible"});
		$('#line15').css({ stroke: "black",visibility: "visible"});
		$('#line26').css({ stroke: "black",visibility: "visible"});
		$('#line13').css({ stroke: "black",visibility: "visible"});
		$('#line11').css({ stroke: "black",visibility: "visible"});
		$('#line18').css({ stroke: "black",visibility: "visible"});
		$('#line19').css({ stroke: "black",visibility: "visible"});
		$('#line31').css({ stroke: "black",visibility: "visible"});
	})
	
	$('#PWNCON').click(function(){
		$('#svgEdit').css({visibility:"visible"});
		resetFunction();
		$('#InitiationRect').css({ fill: "white" , transition: "1s"});
		$('#activationSystemRect').css({ fill: "white" , transition: "1s"});
		$('#disconnectRect').css({ fill: "white" , transition: "1s"});
		$('#RcvResp2Rect').css({ fill: "white" , transition: "1s"});
		$('#DisconnectLosingRect').css({ fill: "white" , transition: "1s"});
		$('#ellipseCarrier').css({ fill: "white" , transition: "1s"});
		$('#line19').css({ stroke: "black",visibility: "visible"});
		$('#line18').css({ stroke: "black",visibility: "visible"});
		$('#line11').css({ stroke: "black",visibility: "visible"});
		$('#line28').css({ stroke: "black",visibility: "visible"});
		$('#line29').css({ stroke: "black",visibility: "visible"});
		$('#line14').css({ stroke: "black",visibility: "visible"});
		$('#line27').css({ stroke: "black",visibility: "visible"});
		$('#line25').css({ stroke: "black",visibility: "visible"});
		$('#line30').css({ stroke: "black",visibility: "visible"});
		$('#line31').css({ stroke: "black",visibility: "visible"});
	})
	
	$('#PWNREJ').click(function(){
		$('#svgEdit').css({visibility:"visible"});
		resetFunction();
		$('#InitiationRect').css({ fill: "white" , transition: "1s"});
		$('#activationSystemRect').css({ fill: "white" , transition: "1s"});
		$('#disconnectRect').css({ fill: "white" , transition: "1s"});
		$('#RcvResp2Rect').css({ fill: "white" , transition: "1s"});
		$('#DisconnectLosingRect').css({ fill: "white" , transition: "1s"});
		$('#ellipseCarrier').css({ fill: "white" , transition: "1s"});
		$('#line19').css({ stroke: "black",visibility: "visible"});
		$('#line18').css({ stroke: "black",visibility: "visible"});
		$('#line11').css({ stroke: "black",visibility: "visible"});
		$('#line28').css({ stroke: "black",visibility: "visible"});
		$('#line29').css({ stroke: "black",visibility: "visible"});
		$('#line14').css({ stroke: "black",visibility: "visible"});
		$('#line27').css({ stroke: "black",visibility: "visible"});
		$('#line25').css({ stroke: "black",visibility: "visible"});
		$('#line30').css({ stroke: "black",visibility: "visible"});
		$('#line31').css({ stroke: "black",visibility: "visible"});
	})
	
	$('#PCN').click(function(){
		$('#svgEdit').css({visibility:"visible"});
		resetFunction();
		$('#activationSystemRect').css({ fill: "white" , transition: "1s"});
		$('#BroadcastRect').css({ fill: "white" , transition: "1s"});
		$('#line22').css({ stroke: "black",visibility: "visible"});
		$('#line23').css({ stroke: "black",visibility: "visible"});
		$('#line24').css({ stroke: "black",visibility: "visible"});
	})
	
	$('#PNCON').click(function(){
		$('#svgEdit').css({visibility:"visible"});
		resetFunction();
		$('#TriggerMiddleRect').css({ fill: "white" , transition: "1s"});
		$('#confirmRect').css({ fill: "white" , transition: "1s"});
		$('#RcvRespRect').css({ fill: "white" , transition: "1s"});
		$('#LosingRect').css({ fill: "white" , transition: "1s"});
		$('#line20').css({ stroke: "black",visibility: "visible"});
		$('#line21').css({ stroke: "black",visibility: "visible"});
		$('#line7').css({ stroke: "black",visibility: "visible"});
		$('#line16').css({ stroke: "black",visibility: "visible"});
		$('#line17').css({ stroke: "black",visibility: "visible"});
	})
	
	$('#PCNCON').click(function(){
		$('#svgEdit').css({visibility:"visible"});
		resetFunction();
		$('#BroadcastRect').css({ fill: "white" , transition: "1s"});
		$('#NotifiedCarrierRect').css({ fill: "white" , transition: "1s"});
		$('#line10').css({ stroke: "black",visibility: "visible"});
	})
	
	$('#PCNREJ').click(function(){
		resetFunction();
	})
	
	$('#PCCOM').click(function(){
		resetFunction();
	})
	
	$('#PORTMSN').click(function(){
		resetFunction();
	})
	
	$('#BPCN').click(function(){
		resetFunction();
	})
	
	$('#BPCNREC').click(function(){
		resetFunction();
	})
	
	$('#BPCNCOM').click(function(){
		resetFunction();
	})
	
	$('#BPCCOM').click(function(){
		resetFunction();
	})
	
	$('#BPCCOMREC').click(function(){
		resetFunction();
	})
});