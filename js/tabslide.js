$(document).ready(function () {
    $("#div1").removeClass("catdiv");
    $("#div1").addClass("actdiv");
    $("#div2,#div3,#div4,#div5").addClass("catdiv");
    $("#itidiv,#inclusdiv,#photdiv,#Othdiv").hide();
    $("#generaldiv").show();

    $("#div1").click(function () {
        $("#div1").removeClass("catdiv");
        $("#div1").addClass("actdiv");
        $("#div2,#div3,#div4,#div5").removeClass("actdiv");
        $("#div2,#div3,#div4,#div5").addClass("catdiv");
        $("#itidiv,#inclusdiv,#photdiv,#Othdiv").hide();
        $("#generaldiv").show();
    });
    $("#div2").click(function () {
        $("#div2").removeClass("catdiv");
        $("#div2").addClass("actdiv");
        $("#div1,#div3,#div4,#div5").removeClass("actdiv");
        $("#div1,#div3,#div4,#div5").addClass("catdiv");
        $("#generaldiv,#inclusdiv,#photdiv,#Othdiv").hide();
        $("#itidiv").show();
    });
    $("#div3").click(function () {
        $("#div3").removeClass("catdiv");
        $("#div3").addClass("actdiv");
        $("#div1,#div2,#div4,#div5").removeClass("actdiv");
        $("#div1,#div2,#div4,#div5").addClass("catdiv");
        $("#itidiv,#generaldiv,#photdiv,#Othdiv").hide();
        $("#inclusdiv").show();
    });
    $("#div4").click(function () {
        $("#div4").removeClass("catdiv");
        $("#div4").addClass("actdiv");
        $("#div1,#div2,#div3,#div5").removeClass("actdiv");
        $("#div1,#div2,#div3,#div5").addClass("catdiv");
        $("#itidiv,#inclusdiv,#generaldiv,#Othdiv").hide();
        $("#photdiv").show();
    });
    $("#div5").click(function () {
        $("#div5").removeClass("catdiv");
        $("#div5").addClass("actdiv");
        $("#div1,#div2,#div4,#div3").removeClass("actdiv");
        $("#div1,#div2,#div4,#div3").addClass("catdiv");
        $("#itidiv,#inclusdiv,#photdiv,#generaldiv").hide();
        $("#Othdiv").show();
    });
});


