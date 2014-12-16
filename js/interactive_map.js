// JavaScript Document

$(document).ready(function () {
    // begin Ready
   
    //...................................................
    // When the form changes
    $('#mapForm').change(function () {
     
        var selectedContinent = $('#mapForm option:selected').val();
        if (selectedContinent == 'ALL') {
            $('a.dot1').slideDown(1000);
        } else {
            $('a.dot1[continent = "' + selectedContinent + '"]').slideDown(1000);
            $('a.dot1[continent != "' + selectedContinent + '"]').slideUp(1000);
        }

    });

    //...................................................
    // When a dot is clicked


    $('a.dot').mouseover(function () {
        var cityName;
        $('a.dot').removeClass('selected');
        $(this).addClass('selected');
        cityName = $(this).attr('city');
        //alert(cityName);
        var city = '.city_detail#' + $(this).attr('city');
        //alert(city);
        var htmlCode = $(city).html();
        //alert(htmlCode);
        //$('.detail_container').hide(function(){
        $('#detail_container .city_detail').empty();
        //alert(htmlCode);
        $('#detail_container .city_detail').html(htmlCode);
        //alert(cityName);
        $('#detail_container').removeAttr('Class');
        $('#detail_container').addClass(cityName);
        $('#detail_container').show();



        //});

    });


    $('a.dot').mouseout(function () {
        $('#detail_container').hide();
    });



	

    $('a.dot1').mouseover(function () {
        var cityName;
        $('a.dot').removeClass('selected');
        $(this).addClass('selected');
        cityName = $(this).attr('city');
        //alert(cityName);
        var city = '.city_detail#' + $(this).attr('city');
        //alert(city);
        var htmlCode = $(city).html();
        //alert(htmlCode);
        //$('.detail_container').hide(function(){
        $('#detail_container .city_detail').empty();
        //alert(htmlCode);
        $('#detail_container .city_detail').html(htmlCode);
        //alert(cityName);
        $('#detail_container').removeAttr('Class');
        $('#detail_container').addClass(cityName);
        $('#detail_container').show();



        //});

    });


    $('a.dot1').mouseout(function () {
        $('#detail_container').hide();
    });
});

$(document).ready(function () {
    // begin Ready
   
    //...................................................
    // When the form changes
    $('#mapForm').change(function () {
     
        var selectedContinent = $('#mapForm option:selected').val();
        if (selectedContinent == 'ALL') {
            $('a.dot2').slideDown(1000);
        } else {
            $('a.dot2[continent = "' + selectedContinent + '"]').slideDown(1000);
            $('a.dot2[continent != "' + selectedContinent + '"]').slideUp(1000);
        }

    });

	
    $('a.dot2').mouseover(function () {
        var cityName;
        $('a.dot').removeClass('selected');
        $(this).addClass('selected');
        cityName = $(this).attr('city');
        //alert(cityName);
        var city = '.city_detail#' + $(this).attr('city');
        //alert(city);
        var htmlCode = $(city).html();
        //alert(htmlCode);
        //$('.detail_container').hide(function(){
        $('#detail_container .city_detail').empty();
        //alert(htmlCode);
        $('#detail_container .city_detail').html(htmlCode);
        //alert(cityName);
        $('#detail_container').removeAttr('Class');
        $('#detail_container').addClass(cityName);
        $('#detail_container').show();



        //});

    });


    $('a.dot2').mouseout(function () {
        $('#detail_container').hide();
    });


							});
$(document).ready(function () {
    // begin Ready
   
    //...................................................
    // When the form changes
    $('#mapForm').change(function () {
     
        var selectedContinent = $('#mapForm option:selected').val();
        if (selectedContinent == 'ALL') {
            $('a.dot3').slideDown(1000);
        } else {
            $('a.dot3[continent = "' + selectedContinent + '"]').slideDown(1000);
            $('a.dot3[continent != "' + selectedContinent + '"]').slideUp(1000);
        }

    });

	
	
    $('a.dot3').mouseover(function () {
        var cityName;
        $('a.dot').removeClass('selected');
        $(this).addClass('selected');
        cityName = $(this).attr('city');
        //alert(cityName);
        var city = '.city_detail#' + $(this).attr('city');
        //alert(city);
        var htmlCode = $(city).html();
        //alert(htmlCode);
        //$('.detail_container').hide(function(){
        $('#detail_container .city_detail').empty();
        //alert(htmlCode);
        $('#detail_container .city_detail').html(htmlCode);
        //alert(cityName);
        $('#detail_container').removeAttr('Class');
        $('#detail_container').addClass(cityName);
        $('#detail_container').show();



        //});

    });


    $('a.dot3').mouseout(function () {
        $('#detail_container').hide();
    });

							});
$(document).ready(function () {
    // begin Ready
   
    //...................................................
    // When the form changes
    $('#mapForm').change(function () {
     
        var selectedContinent = $('#mapForm option:selected').val();
        if (selectedContinent == 'ALL') {
            $('a.dot4').slideDown(1000);
        } else {
            $('a.dot4[continent = "' + selectedContinent + '"]').slideDown(1000);
            $('a.dot4[continent != "' + selectedContinent + '"]').slideUp(1000);
        }

    });
	
		
    $('a.dot4').mouseover(function () {
        var cityName;
        $('a.dot').removeClass('selected');
        $(this).addClass('selected');
        cityName = $(this).attr('city');
        //alert(cityName);
        var city = '.city_detail#' + $(this).attr('city');
        //alert(city);
        var htmlCode = $(city).html();
        //alert(htmlCode);
        //$('.detail_container').hide(function(){
        $('#detail_container .city_detail').empty();
        //alert(htmlCode);
        $('#detail_container .city_detail').html(htmlCode);
        //alert(cityName);
        $('#detail_container').removeAttr('Class');
        $('#detail_container').addClass(cityName);
        $('#detail_container').show();



        //});

    });


    $('a.dot4').mouseout(function () {
        $('#detail_container').hide();
    });

							});
$(document).ready(function () {
    // begin Ready
   
    //...................................................
    // When the form changes
    $('#mapForm').change(function () {
     
        var selectedContinent = $('#mapForm option:selected').val();
        if (selectedContinent == 'ALL') {
            $('a.dot5').slideDown(1000);
        } else {
            $('a.dot5[continent = "' + selectedContinent + '"]').slideDown(1000);
            $('a.dot5[continent != "' + selectedContinent + '"]').slideUp(1000);
        }

    });

	
    $('a.dot5').mouseover(function () {
        var cityName;
        $('a.dot').removeClass('selected');
        $(this).addClass('selected');
        cityName = $(this).attr('city');
        //alert(cityName);
        var city = '.city_detail#' + $(this).attr('city');
        //alert(city);
        var htmlCode = $(city).html();
        //alert(htmlCode);
        //$('.detail_container').hide(function(){
        $('#detail_container .city_detail').empty();
        //alert(htmlCode);
        $('#detail_container .city_detail').html(htmlCode);
        //alert(cityName);
        $('#detail_container').removeAttr('Class');
        $('#detail_container').addClass(cityName);
        $('#detail_container').show();



        //});

    });


    $('a.dot5').mouseout(function () {
        $('#detail_container').hide();
    });

							});
$(document).ready(function () {
    // begin Ready
   
    //...................................................
    // When the form changes
    $('#mapForm').change(function () {
     
        var selectedContinent = $('#mapForm option:selected').val();
        if (selectedContinent == 'ALL') {
            $('a.dot6').slideDown(1000);
        } else {
            $('a.dot6[continent = "' + selectedContinent + '"]').slideDown(1000);
            $('a.dot6[continent != "' + selectedContinent + '"]').slideUp(1000);
        }

    });


    $('a.dot6').mouseover(function () {
        var cityName;
        $('a.dot').removeClass('selected');
        $(this).addClass('selected');
        cityName = $(this).attr('city');
        //alert(cityName);
        var city = '.city_detail#' + $(this).attr('city');
        //alert(city);
        var htmlCode = $(city).html();
        //alert(htmlCode);
        //$('.detail_container').hide(function(){
        $('#detail_container .city_detail').empty();
        //alert(htmlCode);
        $('#detail_container .city_detail').html(htmlCode);
        //alert(cityName);
        $('#detail_container').removeAttr('Class');
        $('#detail_container').addClass(cityName);
        $('#detail_container').show();



        //});

    });


    $('a.dot6').mouseout(function () {
        $('#detail_container').hide();
    });



});	

	
// end Ready
