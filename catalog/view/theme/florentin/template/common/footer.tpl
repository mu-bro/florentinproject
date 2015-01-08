	<div id="footer">
		<div class="column">
			<div class="sub_title" style="margin:4px 40px 20px 30px;"><?php echo $spec_pred; ?></div>
			<div class="action_text">
				<?php echo $this->config->get('config_promo_text'); ?>
			</div>
		</div>
		<div class="column central">
			<a href="<?php echo $this->url->link("information/information","information_id=10"); ?>" class="footer_center sub_title">
				<img src="catalog/view/theme/florentin/image/bottom_icon.png" alt="<?php echo $text_how_to_prolong; ?>" /><br/><br/>
				<?php echo $text_how_to_prolong; ?>
			</a>
		</div>
		<div class="column" style="width:30%;">
			<div class="sub_title" style="margin-left:40px;margin-bottom:20px;"><?php echo $text_contacts; ?></div>
			<div class="contact_text">
				<?php //echo $text_per_orders; ?>
				
				<?php echo $text_phone; ?><br/>
				<?php echo $this->config->get('config_per_telephone'); ?><br/><br/>
				<?php echo $text_email; ?><br/>
				<?php echo $this->config->get('config_per_email'); ?><br/><br/>
				<?php //echo $text_coorp_orders; ?><br/>
				<?php //echo $this->config->get('config_cor_telephone'); ?><br/>
				<?php //echo $this->config->get('config_cor_email'); ?><br/>
			</div>
		</div>
	</div>

	<div id="down_footer">
		<div id="f_message">
		</div>
		<div class="column">
			<div class="soc_buttons">
				<a target="_blank" href="https://www.facebook.com/pages/Florentin-%D0%94%D0%BE%D1%81%D1%82%D0%B…%BA%D0%BE%D1%80%D0%BE%D0%B1%D0%BA%D0%B0%D1%85/694208537319445?sk=timeline"><img src="catalog/view/theme/florentin/image/tw.png" /></a>
				<a target="_blank" href="https://vk.com/club73945493"><img src="catalog/view/theme/florentin/image/vk.png" /></a>
				<a target="_blank" href="http://instagram.com/florentinproject"><img src="catalog/view/theme/florentin/image/in.png" /></a>
				<a target="_blank" href=""><img src="catalog/view/theme/florentin/image/pi.png" /></a>
			</div>
		</div>
		<div class="column central">
			<div class="bottom_logo">
				www . florentinproject . com
			</div>
		</div>
		<div class="column" style="width:30%;">
			<div class="sub_title" style="margin-left:40px;margin-bottom:5px;"><?php echo $text_subscribe2news; ?></div>
			<div class="contact_text">
				<?php echo $text_subscribe2news_sub; ?>
				<div class="newsletter">
					<input type="text" name="newsletter" placeholder="Your email" id="newsletter_input" />
					<div class="add_email"></div>
				</div>
			</div>
		</div>
		<div class="powered">
			©<?php echo date('Y'); ?>. <?php echo $text_rights_reserved; ?>
		</div>
	</div>
</div>


<script>
$(document).keypress(function(e) {
    if(e.which == 13 && $("#newsletter_input").is(":focus")) {
		$('.add_email').trigger('click');
    }
});

$('.add_email').bind('click',function() {
	email = $("#newsletter_input").val();

	$.ajax({
		url: 'index.php?route=common/home/subscribe',
		type: 'post',
		data: "email=" + email,
		dataType: 'json',
		beforeSend: function() {
			$('.add_email').attr('disabled', true);
			$('.add_email').after('<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>');
		},
		complete: function() {
			$('.add_email').attr('disabled', false);
			$('.wait').remove();
		},
		success: function(json) {
			if (json['error']) {
				$('#f_message').html('<div class="warning" style="display: none;">' + json['error'] + '</div>');
				$('#f_message .warning').fadeIn('slow').delay(4000).fadeOut('slow');
			}
			if (json['success']) {
				$('#f_message').html('<div class="success" style="display: none;">' + json['success'] + '</div>');
				$('#f_message .success').fadeIn('slow').delay(4000).fadeOut('slow');
				$("#newsletter_input").val("");
			}			
			
		}
	});

});
</script>

</body></html>