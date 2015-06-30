<?php
/**
 * @package     Joomla.Administrator
 * @subpackage  com_service
 *
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

// No direct access to this file
defined('_JEXEC') or die('Restricted access');

$doc = JFactory::getDocument();
$doc->addStyleSheet('templates/pharmec/css/services/style.css');
?>

<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
<script>
    function initialize() {
        <?php
if (!empty($this->services_within_category)) {
    foreach ($this->services_within_category as $service_within_category) {
        //if we find some coordinates, set them to the first one that we have found
        if (!empty($service_within_category->lat) && !empty($service_within_category->long)) {
            ?>

            var myLatlng = new google.maps.LatLng(<?php echo $service_within_category->lat.",".$service_within_category->long; ?>);

            <?php
            //get out of the foreach if we find anything
            break;
        } else {
            //if we can't find anything se it to a default value
        }
    } ?>

    var mapOptions = {
        zoom: 15,
        center: myLatlng
    }
    var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

    //the bounds for the location according to the pins
    var bounds = new google.maps.LatLngBounds();

    //initialize infowindow
    infowindow = new google.maps.InfoWindow();

    <?php foreach ($this->services_within_category as $service_within_category) {
        if (!empty($service_within_category->lat) && !empty($service_within_category->long)) {
            ?>
            <?php
            //set the variable names
            $pin_name = "pin" . $service_within_category->id;
            $pin_lat_lng_variable = "pin" . $service_within_category->id . "LatLng";
            ?>
            var <?php echo $pin_lat_lng_variable ?> = new google.maps.LatLng(<?php echo $service_within_category->lat.",".$service_within_category->long; ?>);
        var <?php echo $pin_name ?> =
        new google.maps.Marker({
            position: <?php echo $pin_lat_lng_variable ?>,
            map: map,
            title: "<?php echo $service_within_category->message ?>"
        });

        //add the popup code
        google.maps.event.addListener(<?php echo $pin_name ?>, 'click', function () {
            infowindow.setContent("<p><?php echo $service_within_category->message ?></p><p><?php echo $service_within_category->formated_date; ?></p><a href='/<?php echo $service_within_category->href; ?>'>Service Details</a>");
            infowindow.open(map, <?php echo $pin_name ?>);
        });

        //extend the markers position
        bounds.extend(<?php echo $pin_name ?>.getPosition());
        <?php }
    } ?>

    //method called to center the map
    map.fitBounds(bounds);
<?php } ?>
    }

    google.maps.event.addDomListener(window, 'load', initialize);

</script>


<div class="row top_title_row">
    <div class="small-12 columns top_service_title">
        <?php if (!empty($this->header_info['service_title_text'])): ?>
    <h1><?php echo $this->header_info['service_title_text']; ?></h1>
<?php else: ?>
    <h1>Info on our services</h1>
<?php endif; ?>
    </div>
</div>
<div class="row top_description_row">
    <div class="small-12 medium-6 columns top_service_description">
        <?php if (!empty($this->header_info['service_description_text'])): ?>
    <p><?php echo $this->header_info['service_description_text']; ?></p>
<?php endif; ?>
    </div>

    <div class="small-12 medium-6 columns top_service_video">
        <?php if (!empty($this->header_info['service_embeded_video'])): ?>
    <div class="flex-video">
        <iframe width="430" height="280" src="<?php echo $this->header_info['service_embeded_video'] ?>" frameborder="0"
                allowfullscreen></iframe>
    </div>
    <p>View Our Service Video</p>
<?php endif; ?>
    </div>
    <hr/>
</div>

<div class="row bottom_row">
    <div class="small-12 medium-6 columns categorys-list">
        <h1><?php echo $this->header ?> Services</h1>

        <?php if (count($this->services_within_category) > 0): ?>
    <ul>
        <?php foreach ($this->services_within_category as $service_within_category): ?>
            <li>
                <a href="<?php echo $service_within_category->href; ?>">
                    <?php echo $service_within_category->message . ' - ' . $this->header . ' ' . $service_within_category->date_for_title ?>
                </a>
            </li>
        <?php endforeach ?>
    </ul>
<?php else: ?>
    <p>No Services are currently available within this category</p>
<?php endif; ?>
    </div>

    <div class="small-12 medium-6 columns map-div">
        <div id="map-canvas">

        </div>
    </div>

</div>

    </div>
    </div>
<div class="testimonials-div">
        <?php
$modName = 'mod_pharmec_testimonials ';
$module = JModuleHelper::getModule($modName);
$attribs = array();
$module->id = 16;
$moduleHtml = JModuleHelper::renderModule($module);
echo $moduleHtml;
?>