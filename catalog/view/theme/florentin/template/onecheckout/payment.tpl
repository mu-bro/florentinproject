<div class="sub_header">Оплата</div>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<?php if ($payment_methods) { ?>
<table class="form">
  <?php foreach ($payment_methods as $payment_method) { ?>
  <tr>
    <td style="width: 1px;"><?php if ($payment_method['code'] == $code || !$code) { ?>
      <?php $code = $payment_method['code']; ?>
      <input style="margin-top: 2px;" type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" checked="checked" />
      <?php } else { ?>
      <input style="margin-top: 2px;"  type="radio" name="payment_method" value="<?php echo $payment_method['code']; ?>" id="<?php echo $payment_method['code']; ?>" />
      <?php } ?></td>
    <td><label for="<?php echo $payment_method['code']; ?>"><?php echo $payment_method['title']; ?></label></td>
  </tr>
  <?php } ?>
</table>
<?php } ?>
<label style="font-size:11px;">
	Комментарий к заказу:
</label>
<textarea name="comment" rows="8" style="width: 100%;"><?php echo $comment; ?></textarea>
<br />
<script type="text/javascript"><!--
$('#payment-method textarea[name=\'comment\']').live('blur', function() {
	jQuery.post('index.php?route=onecheckout/payment/savecomment',$('#payment-method textarea[name=\'comment\']'));
});
//--></script> 