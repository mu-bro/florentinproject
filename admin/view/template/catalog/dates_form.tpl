<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($success) { ?>
	<div class="success"><?php echo $success; ?></div>
  <?php } ?>  
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/layout.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table id="route" class="list">
          <thead>
            <tr>
              <td class="left"><?php echo $entry_route; ?></td>
              <td></td>
            </tr>
          </thead>
          <?php $date_row = 0; ?>
          <?php foreach ($dates as $date_row => $date) { ?>
          <tbody id="route-row<?php echo $date_row; ?>">
            <tr>
              <td class="left"><input class="date" type="text" name="dates[<?php echo $date_row; ?>]" value="<?php echo $date['date']; ?>" /></td>
              <td class="left"><a onclick="$('#route-row<?php echo $date_row; ?>').remove();" class="button"><?php echo $button_remove; ?></a></td>
            </tr>
          </tbody>
          <?php $date_row++; ?>
          <?php } ?>
          <tfoot>
            <tr>
              <td></td>
              <td class="left"><a onclick="addRoute();" class="button"><?php echo $button_add_route; ?></a></td>
            </tr>
          </tfoot>
        </table>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
var route_row = <?php echo $date_row; ?>;

function addRoute() {
	html  = '<tbody id="route-row' + route_row + '">';
	html += '  <tr>';
	html += '    <td class="left"><input type="text" class="date" name="dates[' + route_row + ']" value="" /></td>';
	html += '    <td class="left"><a onclick="$(\'#route-row' + route_row + '\').remove();" class="button"><?php echo $button_remove; ?></a></td>';
	html += '  </tr>';
	html += '</tbody>';
	
	$('#route > tfoot').before(html);
	
	route_row++;

	$('.date').datetimepicker({
		timepicker:false,
		minDate:'0',
		format:'d.m.Y'
	});	
}
//--></script>
<script type="text/javascript"><!--
$(document).ready(function() {
	$('.date').datetimepicker({
		timepicker:false,
		minDate:'0',
		format:'d.m.Y'
	});
});
//--></script> 
<?php echo $footer; ?>