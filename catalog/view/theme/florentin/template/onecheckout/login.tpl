<div class='close_la'></div>
<table>
  <tr>
  	<td width="30%"><label><?php echo $entry_email; ?></label><input type="text" name="email" value="" /><br /></td>
	<td width="30%"><label><?php echo $entry_password; ?></label><input type="password" name="password" value="" /><br /></td>
	<td width="15%" align="center"><label>&nbsp;</label><a id="button-login" class="button"><span><?php echo $button_login; ?></span></a><br /></td>
	<td width="25%"><label>&nbsp;</label><a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a></td>
  </tr>
</table>
<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#button-login').click();
	}
});
//--></script>   