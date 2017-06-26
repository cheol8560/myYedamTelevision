<script>
	$(function() {

		$(".get-icon").on("click", "i", function() {
			var thisTxt = $(this).attr('class');
			console.log(thisTxt);
			if('${param.mode}'==1){
				opener.document.getElementsByName( "contentIcon" )[0].value = thisTxt;	
			}
			else {
				opener.document.getElementsByName( "contentIcon" )[1].value = thisTxt;
			}
			
			window.close();
		});

	});

</script>

<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-angellist">fa-angellist</i>
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-area-chart">fa-area-chart</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-at">fa-at</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-bell-slash">fa-bell-slash</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-bell-slash-o">fa-bell-slash-o</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-bicycle">fa-bicycle</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-binoculars">fa-binoculars</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-birthday-cake">fa-birthday-cake</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-bus">fa-bus</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-calculator">fa-calculator</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-cc">fa-cc</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-cc-amex">fa-cc-amex</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-cc-discover">fa-cc-discover</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-cc-mastercard">fa-cc-mastercard</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-cc-paypal">fa-cc-paypal</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-cc-stripe">fa-cc-stripe</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-cc-visa">fa-cc-visa</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-copyright">fa-copyright</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-eyedropper">fa-eyedropper</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-futbol-o">fa-futbol-o</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-google-wallet">fa-google-wallet</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-ils">fa-ils</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-ioxhost">fa-ioxhost</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-lastfm">fa-lastfm</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-lastfm-square">fa-lastfm-square</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-line-chart">fa-line-chart</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-meanpath">fa-meanpath</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-newspaper-o">fa-newspaper-o</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-paint-brush">fa-paint-brush</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-paypal">fa-paypal</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-pie-chart">fa-pie-chart</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-plug">fa-plug</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-shekel">fa-shekel</i>  <span class="text-muted">(alias)</span>
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-sheqel">fa-sheqel</i>  <span class="text-muted">(alias)</span>
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-slideshare">fa-slideshare</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-soccer-ball-o">fa-soccer-ball-o</i>  <span
		class="text-muted">(alias)</span>
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-toggle-off">fa-toggle-off</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-toggle-on">fa-toggle-on</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-trash">fa-trash</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-tty">fa-tty</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-twitch">fa-twitch</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-wifi">fa-wifi</i> 
</div>
<div class="fa-item col-md-3 col-sm-4 get-icon">
	<i class="fa fa-yelp">fa-yelp</i> 
</div>
