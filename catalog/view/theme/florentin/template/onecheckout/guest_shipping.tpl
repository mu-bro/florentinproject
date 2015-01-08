<div class="sub_header"><?php echo $text_recipient_title; ?></div>
<table class="form" style="margin-bottom:9px;">
  <tr>
    <td><label><span class="required">*</span> <?php echo $entry_firstname; ?></label>
    <input type="text" name="firstname" value="<?php echo $firstname; ?>" class="large-field" /><br /></td>
  </tr>
  <tbody style="display:none;">
  <tr>
    <td><label><span class="required">*</span> <?php echo $entry_lastname; ?></label>
    <input type="text" name="lastname" value="<?php echo $lastname; ?>" class="large-field" /><br /></td>
  </tr>  
  <tr>
    <td><label><?php echo $entry_company; ?></label>
    <input type="text" name="company" value="<?php echo $company; ?>" class="large-field" /></td>
  </tr>
  </tbody>
<!--  <tr>
    <td><label><span class="required">*</span> <?php echo $entry_address_1; ?></label>
    <input type="text" name="address_1" value="<?php echo $address_1; ?>" class="large-field" /><br /></td>
  </tr>
  <tr>
    <td>
		<label><span class="required">*</span> <?php echo $entry_delivery_time; ?></label>
		<div class="date_block">
			<input type="text" name="delivery_time" value="<?php echo $delivery_time; ?>" class="large-field date_quest_shipping" style="width:190px;"/>
			<div></div>
		</div>
    </td>
  </tr>-->


  
  <tbody style="display:none;">
  <tr>
    <td><label><?php echo $entry_address_2; ?></label>
    <input type="text" name="address_2" value="<?php echo $address_2; ?>" class="large-field" /></td>
  </tr>  
  <tr>
    <td><label><span class="required">*</span> <?php echo $entry_city; ?></label>
    <input type="text" name="city" value="<?php echo $city; ?>" class="large-field" /><br /></td>
  </tr>
  </tbody>
  <tbody style="display:none;">
  <tr>
    <td><label><span id="shipping-postcode-required" class="required">*</span> <?php echo $entry_postcode; ?></label>
    <input type="text" name="postcode" value="<?php echo $postcode; ?>" class="large-field" /><br /></td>
  </tr>
  </tbody>
  <tbody style="display:none;">
  <tr>
    <td><label><span class="required">*</span> <?php echo $entry_country; ?></label>
    <select name="country_id" class="large-field">
        <option value=""><?php echo $text_select; ?></option>
        <?php foreach ($countries as $country) { ?>
        <?php if ($country['country_id'] == $country_id) { ?>
        <option value="<?php echo $country['country_id']; ?>" selected="selected"><?php echo $country['name']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $country['country_id']; ?>"><?php echo $country['name']; ?></option>
        <?php } ?>
        <?php } ?>
      </select><br /></td>
  </tr>
  <tr>
    <td><label><span class="required">*</span> <?php echo $entry_zone; ?></label>
	<select name="zone_id" class="large-field">
			</select>
    </td>
  </tr>  
  </tbody>
  <tr>
    <td class="need2call_td">
		<label style="font-size:11px;"><span class="required">*</span> <?php echo $text_if_need_to_call; ?></label>
		<select name="need2call">
			<option value="0" <?php if ($need2call == 0) echo 'selected="selected"'; ?>  id="need2call">Сделать сюрприз</option>
			<option value="1" <?php if ($need2call == 1) echo 'selected="selected"'; ?>  id="no_need2call">Позвонить</option>
		</select>
    </td>
  </tr>
   <tbody id="shipping_telephone">
	<tr>
		<td><label><span class="required">*</span> <?php echo $entry_telephone; ?></label>
		<input type="text" name="telephone" value="<?php echo $telephone; ?>" class="large-field telephone_guest_shipping" /><br /></td>
	</tr>
  </tbody>
</table>
<script type="text/javascript"><!--

$('#shipping-address select[name=\'need2call\']').bind('change', function() {	
	val = $('#shipping-address select[name=\'need2call\'] option:selected').attr('value');
	if (val == 1) {
		$('#shipping_telephone').show();
	} else {
		$('#shipping_telephone').hide();
	}
});

$('#shipping-address select[name=\'need2call\']').trigger('change');


$('#shipping-address select[name=\'country_id\']').bind('change', function() {
	getzone('shipping','<?php echo $zone_id; ?>');
});
getzone('shipping','<?php echo $zone_id; ?>');

$('.date_block div').bind('click',function() {
	$(this).parent().find('input').datetimepicker('show');
});

$('.date_quest_shipping').datetimepicker({
	onGenerate:function( ct ){
		jQuery(this).find('.xdsoft_date.disableDates')
		.addClass('xdsoft_disabled');
	},
	defaultSelect: false,
	closeOnWithoutClick :false,
	todayButton: false,
	<?php  if (empty($delivery_time)) echo 'value: "' .  date("d.m.Y H:i",strtotime('+2 day')) . '",'; ?>
	disableDates:['<?php echo implode("','",$weekends); ?>'],
	minDate:'<?php echo $min_date; ?>',
	allowTimes:['<?php echo implode("','",$allowTimes); ?>'],
	format:'d.m.Y H:i'
}).attr('readonly','readonly');

$(function(){
	$.mask.definitions['x'] = '[0-9]';
});
$(function(){
	$('.telephone_guest_shipping').mask("+7 (xxx) xxx xxxx", {placeholder:"_"});
});
//--></script>