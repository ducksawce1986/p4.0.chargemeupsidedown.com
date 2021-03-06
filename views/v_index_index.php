<!DOCTYPE html>

<html lang="en">

<head>

	<title>Landing Page</title>

</head>

<body>

	<div class="footer">
			
			<br><h4> Welcome! Try out our Boston gig earnings calculator below.<br><br>
			
			Access our community by signing up for an account and then logging in.</h4>

	</div>

	<div class="container">
		
		<h2>Step 1: <em>What type of group are you?</em></h2>
		
		<span id='cancun'>
			
			<button id='never_gigged'>For First Time Groups</button>
		
			<button id='acoustic'>For Acoustic-Style Groups</button>
		
			<button id='cover_group'>For Cover-Style Groups</button>
		
			<button id='indie_havens'>For Established Indie Groups</button>
		
			<button id='indie_labels'>For Large Indie-Label Acts</button>
		
			<button id='major_labels'>For Large Major-Label Acts</button>
		
			<button id='rock_stars'>For Bonafied Rock Stars</button>
		
		</span>

		<p>*press again to return to options</p>

		<div class="tent">
			<h2>Step 2: <em>Given our suggestions, what venue(s) would you like to play at?</em></h2>
			
			<p id='obriens'><input type='checkbox' name='venues' value='100'>O'brien's Pub</p>
		
			<p id='midway'><input type='checkbox' name='venues' value='200'>Midway Cafe</p>
		
			<p id='church'><input type='checkbox' name='venues' value='300'>Church<br></p>
	
			<p id='great_scott'><input type='checkbox' name='venues' value='400'>Great Scott<br></p>				<p id='club_passim'><input type='checkbox' name='venues' value='450'>Club Passim<br></p>
				
			<p id='lizard_lounge'><input type='checkbox' name='venues' value='500'>Lizard Lounge<br></p>
		
			<p id='lansdowne_pub'><input type='checkbox' name='venues' value='650'>Lansdowne Pub<br></p>
	
			<p id='tt_the_bears'><input type='checkbox' name='venues' value='750'>T.T the Bear's<br></p>
				
			<p id='middle_east_upstairs'><input type='checkbox' name='venues' value='1000'>Middle East Upstairs<br></p>
		
			<p id='brighton_music_hall'><input type='checkbox' name='venues' value='2500'>Brighton Music Hall<br></p>
				
			<p id='middle_east_downstairs'><input type='checkbox' name='venues' value='4000'>Middle East Downstairs<br></p>
		
			<p id='paradise_rock_club'><input type='checkbox' name='venues' value='5000'>Paradise Rock Club<br></p>
		
			<p id='sinclair'><input type='checkbox' name='venues' value='10000'>The Sinclair<br></p>

			<p id='house_of_blues'><input type='checkbox' name='venues' value='50000'>House of Blues<br></p>
				
			<p id='wang_theater'><input type='checkbox' name='venues' value='100000'>Wang Theater<br></p>
		
			<p id='bank_of_america_pavilion'><input type='checkbox' name='venues' value='500000'>Bank of America Pavilion<br></p>
			
			<p id='td_banknorth_garden'><input type='checkbox' name='venues' value='1000000'>TD BankNorth Garden<br></p>
		
		</div>	

		<h2>Step 3: <em>How many members are in your group?</em></h2>
		
		<select id="member_count">

			<option value="1">1</option>
			
			<option value="2">2</option>
	
			<option value="3">3</option>
				
			<option value="4">4</option>
		
			<option value="5">5</option>
				
			<option value="6">6</option>
		
			<option value="7">7</option>
			
			<option value="8">8</option>
	
			<option value="9">9</option>
			
			<option value="10">10</option>
		
		</select><br>

	</div>


	<div class="footer">
		
		<p><span id="outcome">You'll make $<span id='output'></span> per group member</span></p>
        
    </div>

	<script>

		$('button').click(calculate);
		
		$('input, select').change(calculate);
		
		function calculate() {

			var venues = $('input[name=venues]:checked');
			
			var members = $('#member_count').val();
			
			var total = 0;

			venues.each(function() {

				var earned = $(this).val();

				var profits = earned / members;

				total = total + profits;

			});

			$('#output').html(total);

		}	
		
	</script>

</body>

</html>