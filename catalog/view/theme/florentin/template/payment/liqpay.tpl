<form action="<?php echo $action; ?>" method="post" onsubmit="return func_check_confirm();">
  <input type="hidden" name="operation_xml" value="<?php echo $xml; ?>">
  <input type="hidden" name="signature" value="<?php echo $signature; ?>">
  <div class="buttons">
    <div class="right">
      <input type="submit" value="<?php echo $button_go2payment; ?>" class="button big_b" />
    </div>
  </div>
</form>
<script type="text/javascript"><!--
function func_check_confirm() {
	if ( !$('input[name="confirm_agree"]').is(':checked') ) {
		$('#confirm .onecheckout-content').prepend('<div class="warning" style="display: none;"><?php echo $button_error_confirm_info; ?></div>');
		$('.warning').fadeIn('slow');
		setTimeout(function() {
			$('.wait').remove();
			$('#confirmorder #button-confirm').removeAttr('disabled');
		},200);
		return false;
	} else {
		return true;
	}
}
//--></script> 