<div class="buttons">
  <div class="right">
    <input type="button" value="<?php echo $button_confirmorder; ?>" id="button-confirm" class="button big_b" />
  </div>
</div>
<script type="text/javascript"><!--
$('#button-confirm').bind('click', function() {	
	if ( !$('input[name="confirm_agree"]').is(':checked') ) {
		$('#confirm .onecheckout-content').prepend('<div class="warning" style="display: none;"><?php echo $button_error_confirm_info; ?></div>');
		$('.warning').fadeIn('slow');
		setTimeout(function() {
			$('.wait').remove();
			$('#confirmorder #button-confirm').removeAttr('disabled');
		},200);
		
	} else {
		$.ajax({
			type: 'get',
			url: 'index.php?route=payment/cod/confirm',
			success: function() {
				location = '<?php echo $continue; ?>';
			}
		});
	}
});
//--></script> 
