<div id="geoip" class="geoip-block">
    <div class="content">
        <span class="geoip-text"><span><?php echo $text_zone; ?></span>: <span class="zone"><?php echo $zone; ?></span></span>
    </div>
</div>
<?php if ($confirm_region) { ?>
<div id="geoip-confirm-region" title="<?php echo $text_zone; ?>">
    <?php echo $text_confirm_region; ?>
</div>
<?php } ?>
<div id="geoip-choose-region" title="<?php echo $text_choose_region; ?>">
    <div class="loading"></div>
</div>
<script type="text/javascript">

    var GeoIp = (function() {

        return {
            autoComplete: function(el, appendTo) {

                var xhr = false;

                el.autocomplete({
                    search:    function() {
                        if (xhr) {
                            xhr.abort();
                        }
                    },
                    source:    function(request, response) {
                        xhr = $.ajax({
                            url:      '<?php echo $http_server; ?>index.php?route=module/geoip/search',
                            dataType: 'jsonp',
                            data:     {term: request.term},
                            success:  function(data) {
                                response(data);
                            }
                        });
                    },
                    minLength: 2,
                    appendTo:  appendTo,
                    select:    function(e, ui) {
                        $.ajax({
                            url:         '<?php echo $http_server; ?>index.php?route=module/geoip/save&fias_id=' + ui.item.fias_id,
                            crossDomain: true,
                            success:     function(data) {
                                location.reload();
                            }
                        });
                    }
                });
            },
            block: $('#geoip'),
            confirmRegion: $('#geoip-confirm-region'),
            chooseRegion:  $('#geoip-choose-region')
        }
    })();

    $(function() {
        <?php if ($from_ajax) { ?>
        $.ajax({
            url:      '<?php echo $http_server; ?>index.php?route=module/geoip/getCity',
            dataType: 'jsonp',
            success:  function(json) {
                GeoIp.block.find('.zone').text(json.zone);
            }
        });
        <?php } ?>

        <?php if ($confirm_region) { ?>
        GeoIp.confirmRegion.dialog({
            autoOpen: true,
            height: 180,
            width: 350,
            modal:false,
            position: [GeoIp.block.offset().left + GeoIp.block.width() - 352, GeoIp.block.offset().top + 22],
            buttons: {
                     "<?php echo $text_yes; ?>": function() {
                         $(this).dialog('close');
                     },
                     "<?php echo $text_no; ?>": function() {
                         $(this).dialog('close');
                         GeoIp.chooseRegion.dialog('open');
                     }
            }
        });
        <?php } ?>

        GeoIp.chooseRegion.dialog({
            autoOpen:  false,
            minWidth:  200,
            minHeight: 100,
            resizable: false,
            modal:     true,
            open:      function() {
                $.ajax({
                    url:      '<?php echo $http_server; ?>index.php?route=module/geoip/getList',
                    dataType: 'html',
                    success:  function(html) {
                        GeoIp.chooseRegion.html(html);
                        var input = $('#geoip-popup-input');
                        GeoIp.autoComplete(input, GeoIp.chooseRegion.find('.geoip-block'));
                        input.focus();
                    }
                });

                $('.ui-widget-overlay').click(function() {
                    GeoIp.chooseRegion.dialog("close");
                });
            }
        });

        GeoIp.chooseRegion.on('click', '.choose-city', function() {
            $.ajax({
                url:         '<?php echo $http_server; ?>index.php?route=module/geoip/save&fias_id=' + $(this).attr('data-id'),
                success:     function(data) {
                    location.reload();
                }
            });

            GeoIp.chooseRegion.dialog('close');

            return false;
        });

        GeoIp.block.find('.geoip-text').click(function() {
            GeoIp.chooseRegion.dialog('open');
        });
    });
</script>