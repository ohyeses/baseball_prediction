/**
 * 
 */


		$('#submit-python').click(function(){
			var select_day = $("#datepicker").val();
			var location = $(".location").val();
			var home_team = $("#selecthome").val();
			var away_team = $("#selectaway").val();
			$('#result_text').text("");
			$('#result').text("");
			
			$.ajax({
				url:'http://127.0.0.1:9005/home',
				type:'POST',
				dataType: 'json',
				data: {"select_day": select_day,
			        "location": location,
			        "home_team": home_team},
				success: function(data) {
					//python에서 값 가져오기 
					var result = data.key1;
					
					
					var home_result = "";
					var away_result = "";
					
					if(result == '1') {
						home_result = "WIN";
						away_result = "LOOSE";
					}else {
						home_result = "LOOSE";
						away_result = "WIN";
					}
					
					
					if( home_result == "WIN") {
						$('#result_text').text("WIN"); 
					}else if (home_result == "LOOSE") {
						$('#result').text('LOSE'); 
					}
					if( away_result == "WIN") {
						$('#result_text').text("WIN");
					}else if ( away_result == "LOOSE") {
						$('#result').text('LOSE'); 
					}
					
				},
				error: function(e){
					//console.log(e)
					alert('값을 선택해 주세요.');
					
				}
			})
			
			
		});
