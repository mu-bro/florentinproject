<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="success"><?php echo $success; ?></div>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/product.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="location = '<?php echo $insert; ?>'" class="button"><?php echo $button_insert; ?></a><a onclick="$('#form').attr('action', '<?php echo $copy; ?>'); $('#form').submit();" class="button"><?php echo $button_copy; ?></a><a onclick="$('form').submit();" class="button"><?php echo $button_delete; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form">
	<input hidden id="page" value="<?php echo $page ?>">
	<input hidden id="sort" value="<?php echo $sort ?>">
	<input hidden id="order" value="<?php echo $order ?>">
        <table class="list">
          <thead>
            <tr id="head">
              <td width="1" style="text-align: center;"><input type="checkbox" onclick="$('input[name*=\'selected\']').attr('checked', this.checked);" /></td>
              <td class="center"><?php echo $column_image; ?></td>
              <td class="left"><?php if ($sort == 'pd.name') { ?>
                <a href="<?php echo $sort_name; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_name; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_name; ?>"><?php echo $column_name; ?></a>
                <?php } ?></td>
              <?php if (!$this->user->isManager()) { ?>
				<td class="left">Магазин</td>
              <?php } ?>
              <td class="left"><?php if ($sort == 'p.price') { ?>
                <a href="<?php echo $sort_price; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_price; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_price; ?>"><?php echo $column_price; ?></a>
                <?php } ?></td>
              <td class="right"><?php if ($sort == 'p.quantity') { ?>
                <a href="<?php echo $sort_quantity; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_quantity; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_quantity; ?>"><?php echo $column_quantity; ?></a>
                <?php } ?></td>
              <td class="left"><?php if ($sort == 'p.status') { ?>
                <a href="<?php echo $sort_status; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_status; ?></a>
                <?php } else { ?>
                <a href="<?php echo $sort_status; ?>"><?php echo $column_status; ?></a>
                <?php } ?></td>
              <td class="right"><?php echo $column_action; ?></td>
            </tr>
          </thead>
          <tbody>
            <tr class="filter">
              <td></td>
              <td></td>             
              <td><input type="text" name="filter_name" value="<?php echo $filter_name; ?>" /></td>
              <?php if (!$this->user->isManager()) { ?>
				<td>
					<select name="filter_store_id" >
						<option value="*" selected="selected"></option>
						<?php foreach($stores as $store_id => $store) { ?>
							<option value="<?php echo $store_id; ?>" >
								<?php echo $store['config_name'] ?> - <?php echo $store['zone'] ?>
							</option>
						<?php }?>
					</select>
				</td>
              <?php } ?>
              <td align="left"><input type="text" name="filter_price" value="<?php echo $filter_price; ?>" size="8"/></td>
              <td align="right"><input type="text" name="filter_quantity" value="<?php echo $filter_quantity; ?>" size="8" style="text-align: right;" /></td>
              <td><select name="filter_status">
                  <option value="*"></option>
                  <?php if ($filter_status) { ?>
                  <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                  <?php } else { ?>
                  <option value="1"><?php echo $text_enabled; ?></option>
                  <?php } ?>
                  <?php if (!is_null($filter_status) && !$filter_status) { ?>
                  <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                  <?php } else { ?>
                  <option value="0"><?php echo $text_disabled; ?></option>
                  <?php } ?>
                </select></td>
              <td align="right"><a onclick="clear_filter();" class="button"><?php echo $button_clear; ?></a></td>
            </tr>
          </tbody>
          <tbody id="product_list">
			<?php include "view/template/catalog/product_list_template.tpl"; ?>
          </tbody>
        </table>
      </form>
      <div class="pagination"><?php echo $pagination; ?></div>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
function filter() {
	url = 'index.php?route=catalog/product/filter&token=<?php echo $token; ?>';

	url += '&page=' + $('#page').val();

	if ($('#sort').val()) {
		url += '&sort=' + $('#sort').val();
	}
	if ($('#order').val()) {
		url += '&order=' + $('#order').val();
	}
	
	var filter_name = $('input[name=\'filter_name\']').attr('value');
	
	if (filter_name) {
		url += '&filter_name=' + encodeURIComponent(filter_name);
	}
	
	var filter_store_id = $('select[name=\'filter_store_id\']').attr('value');
	
	if (filter_store_id != '*') {
		url += '&filter_store_id=' + encodeURIComponent(filter_store_id);
	}
	
	var filter_price = $('input[name=\'filter_price\']').attr('value');
	
	if (filter_price) {
		url += '&filter_price=' + encodeURIComponent(filter_price);
	}
	
	var filter_quantity = $('input[name=\'filter_quantity\']').attr('value');
	
	if (filter_quantity) {
		url += '&filter_quantity=' + encodeURIComponent(filter_quantity);
	}
	
	var filter_status = $('select[name=\'filter_status\']').attr('value');
	
	if (filter_status != '*') {
		url += '&filter_status=' + encodeURIComponent(filter_status);
	}	

	$.ajax({
		url: url,
		dataType: 'json',
		success : function(json) {
				  $("#product_list").html(json.result);
				  $('.pagination').html(json.pagination);
			  }
	});
}
//--></script> 
<script type="text/javascript"><!--

function gsUV(e, t, v) {
    var n = String(e).split("?");
    var r = "";
    if (n[1]) {
        var i = n[1].split("&");
        for (var s = 0; s <= i.length; s++) {
            if (i[s]) {
                var o = i[s].split("=");
                if (o[0] && o[0] == t) {
                    r = o[1];
                    if (v != undefined) {
                        i[s] = o[0] +'=' + v;
                    }
                    break;
                }
            }
        }
    }
    if (v != undefined) {
        return n[0] +'?'+ i.join('&');
    }
    return r
}
$('#form input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#page').val(1);
		filter();
	}
});
$('#form input').bind("input", function() {
	if ($(this).val()=='') {
		$('#page').val(1);
		filter();
	}
});

$('#form select').bind("change", function() {
	$('#page').val(1);
	filter();
});

$('.pagination .links a').live("click", function() {
	var page = gsUV($(this).attr('href'), 'page');
	$('#page').val(page);
	filter();
	return false;
});

$('#head a').live("click", function() {

	var sort = gsUV($(this).attr('href'), 'sort');
	$('#sort').val(sort);
	var order = gsUV($(this).attr('href'), 'order');
	$('#order').val(order);
	$(this).attr('href', gsUV($(this).attr('href'), 'order', order=='DESC'?'ASC':'DESC'));
	$('#head a').removeAttr('class');
	this.className = order.toLowerCase();
	filter();
	return false;
});
function clear_filter() {
	$('tr.filter select option:selected').prop('selected', false);
	$('tr.filter input').val('');
	filter();
	return false;
}
//--></script> 
<script type="text/javascript"><!--
$('.filter input').autocomplete({
	delay: 500,
	source: function(request, response) {
	    filter();
	}
});

//--></script> 
<?php echo $footer; ?>