/**
 * Created by terrex on 18/08/16.
 */
jQuery(function() {
    return $('#reservation_room_title').autocomplete({
        source: $('#reservation_room_title').data('autocomplete-source')
    });
});