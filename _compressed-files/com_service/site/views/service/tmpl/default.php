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
?>
<?php
$doc = JFactory::getDocument();
$doc->addStyleSheet('templates/pharmec/css/services/style.css');
?>


<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
<script>


    <?php
    //if we find some coordinates, set them to the first one that we have found
    if(!empty($this->item->lat) && !empty($this->item->long)){ ?>

        function initialize() {

            var myLatlng = new google.maps.LatLng(<?php echo $this->item->lat.",".$this->item->long; ?>);

            var mapOptions = {
                zoom: 16,
                center: myLatlng
            }
            var map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);

            //initialize infowindow
            infowindow = new google.maps.InfoWindow();

            <?php
                //set the variable names
                $pin_name = "pin".$this->item->id;
                $pin_lat_lng_variable = "pin".$this->item->id."LatLng";
            ?>

            var <?php echo $pin_lat_lng_variable ?> =
            new google.maps.LatLng(<?php echo $this->item->lat.",".$this->item->long; ?>);

            var <?php echo $pin_name ?> =
            new google.maps.Marker({
                position: <?php echo $pin_lat_lng_variable ?>,
                map: map,
                title: "<?php echo $this->item->message ?>"
            });

            //add the popup code
            google.maps.event.addListener(<?php echo $pin_name ?>, 'click', function () {
                infowindow.setContent("<p><?php echo $this->item->message ?></p><p><?php echo $this->item->date_for_title; ?></p>");
                infowindow.open(map, <?php echo $pin_name ?>);
            });

            //finally display the map if everything is ok
            jQuery('#map-canvas').css('display','block');
        }

        google.maps.event.addDomListener(window, 'load', initialize);

    <?php } ?>
</script>
<div class="row left-collapse bottom_row">

    <div class="small-12 columns collapse-left-column collapse-right-column">

        <div class="medium-8 small-12 columns collapse-left-column collapse-right-column">
            <div class="small-12 columns service-title">
                <h1><?php echo $this->item->message ?></h1>

                <p><strong><?php echo (!empty($this->item->address) ? $this->item->address . ', ' : '') . ' ' . $this->item->date_for_title ?></strong></p>
            </div>

            <div class="small-12 columns main-description-content">
                <?php echo $this->item->description ?>

                <div class="service-bottom-information">
                    <!-- CHECK FOR WHO SHOULD ATTEND -->
                    <?php if (!empty($this->item->who_should_attend)): ?>
                        <p><b>Who should attend ?:</b> <span><?php echo $this->item->who_should_attend ?></span></p>
                    <?php endif; ?>

                    <!-- DISPLAY THE FORMATTED DATE -->
                    <p><b>Date:</b> <span><?php echo $this->item->date_for_title ?></span></p>

                    <!-- CHECK FOR ADDRESS -->
                    <?php if (!empty($this->item->address)): ?>
                        <p><b>Venue:</b> <span><?php echo $this->item->address ?></span></p>
                    <?php endif; ?>

                    <!-- CHECK FOR START TEXT -->
                    <?php if (!empty($this->item->start_text)): ?>
                        <p><b>Start:</b> <span><?php echo $this->item->start_text ?></span></p>

                        <!-- IF WE DON'T HAVE IT JUST DISPLAY WHEN THE SERVICE STARTS -->
                    <?php else: ?>
                        <p><b>Start:</b> <span><?php echo $this->item->time ?></span></p>
                    <?php endif; ?>

                    <!-- CHECK FOR FINISH TEXT -->
                    <?php if (!empty($this->item->finish_text)): ?>
                        <p><b>Finish:</b> <span><?php echo $this->item->finish_text ?></span></p>
                    <?php endif; ?>


                </div>
            </div>
        </div>

        <div class="medium-4 small-12 columns">
            <h1>When & where</h1>

            <?php if(!empty($this->item->lat) || !empty($this->item->long)): ?>
            <!-- The google map -->
            <div id="map-canvas">

            </div>
            <!-- End Of google maps -->
            <?php endif; ?>

            <div class="service-address">
                <?php
                if(!empty($this->item->address)) {
                    $address = nl2br($this->item->address);
                    $address = html_entity_decode($address);
                    echo "<span>{$address}</span><br/>";
                }?>
                <?php echo (!empty($this->item->postcode))? "<span>{$this->item->postcode}</span>" : ""; ?>
            </div>

            <div class="service-images">
                <!-- DISPLAY FIRST IMAGE -->
                <div class="small-12 columns">
                    <?php if (!empty($this->item->image1)): ?>
                        <img src="<?php echo $this->item->image1 ?>" alt="first image"/>
                    <?php endif; ?>
                </div>

                <!-- DISPLAY SECOND IMAGE -->
                <div class="small-12 columns">
                    <?php if (!empty($this->item->image2)): ?>
                        <img src="<?php echo $this->item->image2 ?>" alt="second image"/>
                    <?php endif; ?>
                </div>
                <!-- DISPLAY THIRD IMAGE -->
                <div class="small-12 columns">
                    <?php if (!empty($this->item->image3)): ?>
                        <img src="<?php echo $this->item->image3 ?>" alt="third image"/>
                    <?php endif; ?>
                </div>
            </div>

            <div class="upcoming-services small-12 columns">
                <h2 class="upcoming-services-title">Other services</h2>
                <?php foreach($this->upcoming_services as $upcoming_service): ?>
                    <a href="<?php echo $upcoming_service->href?>" class="small-12 columns upcoming-link"><?php echo $upcoming_service->message ?></a>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="small-12 columns booking-link-div">
        <a href="<?php echo $this->item->booking_link ?>" class="action-button booking-link">Book your place</a>
    </div>
</div>