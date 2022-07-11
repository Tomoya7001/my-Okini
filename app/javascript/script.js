/* global $*/

$(document).ready(function () {
  $('.jquery').on('click', function(){
    $(this).css('color','red');
  });
});

const API_KEY = "eca114a5e880840743505005a9778ad5"

$(function(){
  $("#btn").on("click", function() {
    $.ajax({
      url:  "https://f450dbbc096c4b3aa713550b87e45c66.vfs.cloud9.ap-northeast-1.amazonaws.com/tests/top" + $('#cityname').val() + "&units=metric&appid=" + API_KEY,
      dataType : 'jsonp',
    }).done(function (data){
      //通信成功
      //位置
      $("#place").text(data.name);
      //最高気温
      $("temp_max").text(data.main.temp_max);
      //最低気温
      $("temp_min").text(data.main.temp_min);
      //湿度
      $("#humidity").text("data.main.humidity");
      //風速
      $("#speed").text(data.wind.speed);
      //天気
      $("#weather").text(data.weather[0].main);
      //天気アイコン
      $("img").attr("src","http://openweathermap.org/img/w/" + data.weather[0].icon + ".png");
      $("img").attr("alt",data.weather[0].main);

    }).fail(function (data){
      //通信失敗
      alert("通信に失敗しました。")
    });
  });
});