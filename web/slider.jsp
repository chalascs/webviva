<%-- 
    Document   : slider
    Created on : Sep 20, 2016, 12:42:31 PM
    Author     : Shanaka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
                        <!-- #region Jssor Slider Begin -->


                        <!-- This demo works with jquery library -->

                        <script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
                        <script type="text/javascript" src="js/jssor.slider-21.1.5.mini.js"></script>
                        <!-- use jssor.slider-21.1.5.debug.js instead for debug -->
                        <script>
                            jQuery(document).ready(function($) {

                                var jssor_1_SlideshowTransitions = [
                                    {$Duration: 1200, $Zoom: 11, $Rotate: -1, $Easing: {$Zoom: $Jease$.$InQuad, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InQuad}, $Opacity: 2, $Round: {$Rotate: 0.5}, $Brother: {$Duration: 1200, $Zoom: 1, $Rotate: 1, $Easing: $Jease$.$Swing, $Opacity: 2, $Round: {$Rotate: 0.5}, $Shift: 90}},
                                    {$Duration: 1400, x: 0.25, $Zoom: 1.5, $Easing: {$Left: $Jease$.$InWave, $Zoom: $Jease$.$InSine}, $Opacity: 2, $ZIndex: -10, $Brother: {$Duration: 1400, x: -0.25, $Zoom: 1.5, $Easing: {$Left: $Jease$.$InWave, $Zoom: $Jease$.$InSine}, $Opacity: 2, $ZIndex: -10}},
                                    {$Duration: 1200, $Zoom: 11, $Rotate: 1, $Easing: {$Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InQuad}, $Opacity: 2, $Round: {$Rotate: 1}, $ZIndex: -10, $Brother: {$Duration: 1200, $Zoom: 11, $Rotate: -1, $Easing: {$Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InQuad}, $Opacity: 2, $Round: {$Rotate: 1}, $ZIndex: -10, $Shift: 600}},
                                    {$Duration: 1500, x: 0.5, $Cols: 2, $ChessMode: {$Column: 3}, $Easing: {$Left: $Jease$.$InOutCubic}, $Opacity: 2, $Brother: {$Duration: 1500, $Opacity: 2}},
                                    {$Duration: 1500, x: -0.3, y: 0.5, $Zoom: 1, $Rotate: 0.1, $During: {$Left: [0.6, 0.4], $Top: [0.6, 0.4], $Rotate: [0.6, 0.4], $Zoom: [0.6, 0.4]}, $Easing: {$Left: $Jease$.$InQuad, $Top: $Jease$.$InQuad, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InQuad}, $Opacity: 2, $Brother: {$Duration: 1000, $Zoom: 11, $Rotate: -0.5, $Easing: {$Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InQuad}, $Opacity: 2, $Shift: 200}},
                                    {$Duration: 1500, $Zoom: 11, $Rotate: 0.5, $During: {$Left: [0.4, 0.6], $Top: [0.4, 0.6], $Rotate: [0.4, 0.6], $Zoom: [0.4, 0.6]}, $Easing: {$Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InQuad}, $Opacity: 2, $Brother: {$Duration: 1000, $Zoom: 1, $Rotate: -0.5, $Easing: {$Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InQuad}, $Opacity: 2, $Shift: 200}},
                                    {$Duration: 1500, x: 0.3, $During: {$Left: [0.6, 0.4]}, $Easing: {$Left: $Jease$.$InQuad, $Opacity: $Jease$.$Linear}, $Opacity: 2, $Outside: true, $Brother: {$Duration: 1000, x: -0.3, $Easing: {$Left: $Jease$.$InQuad, $Opacity: $Jease$.$Linear}, $Opacity: 2}},
                                    {$Duration: 1200, x: 0.25, y: 0.5, $Rotate: -0.1, $Easing: {$Left: $Jease$.$InQuad, $Top: $Jease$.$InQuad, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InQuad}, $Opacity: 2, $Brother: {$Duration: 1200, x: -0.1, y: -0.7, $Rotate: 0.1, $Easing: {$Left: $Jease$.$InQuad, $Top: $Jease$.$InQuad, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InQuad}, $Opacity: 2}},
                                    {$Duration: 1600, x: 1, $Rows: 2, $ChessMode: {$Row: 3}, $Easing: {$Left: $Jease$.$InOutQuart, $Opacity: $Jease$.$Linear}, $Opacity: 2, $Brother: {$Duration: 1600, x: -1, $Rows: 2, $ChessMode: {$Row: 3}, $Easing: {$Left: $Jease$.$InOutQuart, $Opacity: $Jease$.$Linear}, $Opacity: 2}},
                                    {$Duration: 1600, x: 1, $Rows: 2, $ChessMode: {$Row: 3}, $Easing: {$Left: $Jease$.$InOutQuart, $Opacity: $Jease$.$Linear}, $Opacity: 2, $Brother: {$Duration: 1600, x: -1, $Rows: 2, $ChessMode: {$Row: 3}, $Easing: {$Left: $Jease$.$InOutQuart, $Opacity: $Jease$.$Linear}, $Opacity: 2}},
                                    {$Duration: 1600, y: -1, $Cols: 2, $ChessMode: {$Column: 12}, $Easing: {$Top: $Jease$.$InOutQuart, $Opacity: $Jease$.$Linear}, $Opacity: 2, $Brother: {$Duration: 1600, y: 1, $Cols: 2, $ChessMode: {$Column: 12}, $Easing: {$Top: $Jease$.$InOutQuart, $Opacity: $Jease$.$Linear}, $Opacity: 2}},
                                    {$Duration: 1200, y: 1, $Easing: {$Top: $Jease$.$InOutQuart, $Opacity: $Jease$.$Linear}, $Opacity: 2, $Brother: {$Duration: 1200, y: -1, $Easing: {$Top: $Jease$.$InOutQuart, $Opacity: $Jease$.$Linear}, $Opacity: 2}},
                                    {$Duration: 1200, x: 1, $Easing: {$Left: $Jease$.$InOutQuart, $Opacity: $Jease$.$Linear}, $Opacity: 2, $Brother: {$Duration: 1200, x: -1, $Easing: {$Left: $Jease$.$InOutQuart, $Opacity: $Jease$.$Linear}, $Opacity: 2}},
                                    {$Duration: 1200, y: -1, $Easing: {$Top: $Jease$.$InOutQuart, $Opacity: $Jease$.$Linear}, $Opacity: 2, $ZIndex: -10, $Brother: {$Duration: 1200, y: -1, $Easing: {$Top: $Jease$.$InOutQuart, $Opacity: $Jease$.$Linear}, $Opacity: 2, $ZIndex: -10, $Shift: -100}},
                                    {$Duration: 1200, x: 1, $Delay: 40, $Cols: 6, $Formation: $JssorSlideshowFormations$.$FormationStraight, $Easing: {$Left: $Jease$.$InOutQuart, $Opacity: $Jease$.$Linear}, $Opacity: 2, $ZIndex: -10, $Brother: {$Duration: 1200, x: 1, $Delay: 40, $Cols: 6, $Formation: $JssorSlideshowFormations$.$FormationStraight, $Easing: {$Top: $Jease$.$InOutQuart, $Opacity: $Jease$.$Linear}, $Opacity: 2, $ZIndex: -10, $Shift: -100}},
                                    {$Duration: 1500, x: -0.1, y: -0.7, $Rotate: 0.1, $During: {$Left: [0.6, 0.4], $Top: [0.6, 0.4], $Rotate: [0.6, 0.4]}, $Easing: {$Left: $Jease$.$InQuad, $Top: $Jease$.$InQuad, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InQuad}, $Opacity: 2, $Brother: {$Duration: 1000, x: 0.2, y: 0.5, $Rotate: -0.1, $Easing: {$Left: $Jease$.$InQuad, $Top: $Jease$.$InQuad, $Opacity: $Jease$.$Linear, $Rotate: $Jease$.$InQuad}, $Opacity: 2}},
                                    {$Duration: 1600, x: -0.2, $Delay: 40, $Cols: 12, $During: {$Left: [0.4, 0.6]}, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationStraight, $Assembly: 260, $Easing: {$Left: $Jease$.$InOutExpo, $Opacity: $Jease$.$InOutQuad}, $Opacity: 2, $Outside: true, $Round: {$Top: 0.5}, $Brother: {$Duration: 1000, x: 0.2, $Delay: 40, $Cols: 12, $Formation: $JssorSlideshowFormations$.$FormationStraight, $Assembly: 1028, $Easing: {$Left: $Jease$.$InOutExpo, $Opacity: $Jease$.$InOutQuad}, $Opacity: 2, $Round: {$Top: 0.5}}}
                                ];

                                var jssor_1_options = {
                                    $AutoPlay: true,
                                    $FillMode: 5,
                                    $SlideshowOptions: {
                                        $Class: $JssorSlideshowRunner$,
                                        $Transitions: jssor_1_SlideshowTransitions,
                                        $TransitionsOrder: 1
                                    },
                                    $BulletNavigatorOptions: {
                                        $Class: $JssorBulletNavigator$
                                    }
                                };

                                var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);

                                //responsive code begin
                                //you can remove responsive code if you don't want the slider scales while window resizing
                                function ScaleSlider() {
                                    var refSize = jssor_1_slider.$Elmt.parentNode.clientWidth;
                                    if (refSize) {
                                        refSize = Math.min(refSize, 600);
                                        jssor_1_slider.$ScaleWidth(refSize);
                                    }
                                    else {
                                        window.setTimeout(ScaleSlider, 30);
                                    }
                                }
                                ScaleSlider();
                                $(window).bind("load", ScaleSlider);
                                $(window).bind("resize", ScaleSlider);
                                $(window).bind("orientationchange", ScaleSlider);
                                //responsive code end
                            });
                        </script>

                        <style>

                            /* jssor slider bullet navigator skin 13 css */
                            /*
                            .jssorb13 div           (normal)
                            .jssorb13 div:hover     (normal mouseover)
                            .jssorb13 .av           (active)
                            .jssorb13 .av:hover     (active mouseover)
                            .jssorb13 .dn           (mousedown)
                            */
                            .jssorb13 {
                                position: absolute;
                            }
                            .jssorb13 div, .jssorb13 div:hover, .jssorb13 .av {
                                position: absolute;
                                /* size of bullet elment */
                                width: 21px;
                                height: 21px;
                                background: url('img/b13.png') no-repeat;
                                overflow: hidden;
                                cursor: pointer;
                            }
                            .jssorb13 div { background-position: -5px -5px; }
                            .jssorb13 div:hover, .jssorb13 .av:hover { background-position: -35px -5px; }
                            .jssorb13 .av { background-position: -65px -5px; }
                            .jssorb13 .dn, .jssorb13 .dn:hover { background-position: -95px -5px; }
                        </style>


                        <div id="jssor_1" style="position: relative; margin: 0 auto; top: 0px; left: 0px; width: 600px; height: 430px; overflow: hidden; visibility: hidden;">
                            <!-- Loading Screen -->
                            <div data-u="loading" style="position: absolute; top: 0px; left: 0px;">
                                <div style="filter: alpha(opacity=70); opacity: 0.7; position: absolute; display: block; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
                                <div style="position:absolute;display:block;background:url('img/loading.gif') no-repeat center center;top:0px;left:0px;width:100%;height:100%;"></div>
                            </div>
                            <div data-u="slides" style="cursor: default; position: relative; top: 0px; left: 0px; width: 600px; height: 430px; overflow: hidden;">
                                <div style="display: none;">
                                    <img data-u="image" src="img/01.jpg" />
                                </div>
                                <div style="display: none;">
                                    <img data-u="image" src="img/02.jpg" />
                                </div>
                                <div style="display: none;">
                                    <img data-u="image" src="img/03.jpg" />
                                </div>
                                <div style="display: none;">
                                    <img data-u="image" src="img/04.png" />
                                </div>
                                <div style="display: none;">
                                    <img data-u="image" src="img/05.jpg" />
                                </div>
                                <div style="display: none;">
                                    <img data-u="image" src="img/06.jpg" />
                                </div>
                                <div style="display: none;">
                                    <img data-u="image" src="img/07.jpg" />
                                </div>
                                <div style="display: none;">
                                    <img data-u="image" src="img/08.jpg" />
                                </div>
                                <div style="display: none;">
                                    <img data-u="image" src="img/09.jpg" />
                                </div>
                                <div style="display: none;">
                                    <img data-u="image" src="img/10.jpg" />
                                </div>
                                <div style="display: none;">
                                    <img data-u="image" src="img/11.jpg" />
                                </div>
                                <a data-u="any" href="http://www.jssor.com/demos/different-size-photo-slider.slider" style="display:none">Different Size Photo Sldier</a>

                            </div>
                            <!-- Bullet Navigator -->
                            <div data-u="navigator" class="jssorb13" style="bottom:16px;right:16px;" data-autocenter="1">
                                <!-- bullet navigator item prototype -->
                                <div data-u="prototype" style="width:21px;height:21px;"></div>
                            </div>
                        </div>

                        <!-- #endregion Jssor Slider End -->
    </body>
</html>
