var time_a= $('#startTime').val();
var time_b=$('#stopTime').val();
$("#data_time3").val("เวลาสอน");

$(function(){
   $("#startTime").val();
   $("#stopTime").val();

   $("#startTime").keyup(function(){
       time2diff($("#startTime").val(),$("#stopTime").val());
   });
   $("#stopTime").keyup(function(){
       time2diff($("#startTime").val(),$("#stopTime").val());
   }); 
});



function time2diff(time1,time2){
   
   var ted = parseInt($('#tudsadee').val());
   var ptb = parseInt($('#prtibad').val());
    
   var strTime2=("2014-01-01 "+time2+":00");
   var strTime1=("2014-01-01 "+time1+":00");   

   var myDate2=new Date(strTime2);
   var timeStamp2=myDate2.getTime();

   var myDate1=new Date(strTime1);
   var timeStamp1=myDate1.getTime();

   var timeDiff=(timeStamp2-timeStamp1)/1000;
   var minutesDiff=timeDiff/60;
   var minutesRemain=minutesDiff%60;
   var hoursDiff=(minutesDiff-minutesRemain)/60;   
   
    var sum=ted+ptb;
    var mm = ( ptb == hoursDiff);
   //  $("#data_time3").val(hoursDiff+"ชั่วโมง"+minutesRemain+"นาที");
   $("#data_hour").val(hoursDiff);

    if (sum <= hoursDiff ) {
       nn=hoursDiff+"ชั่วโมง"+minutesRemain+"นาที"
       
       } else{
           nn="เวลาไม่พอ";
           
       // }else if(sum ){
       // 	nn="เวลาเกิน";
        }

   $("#data_time3").val(nn);
   // $("#data_4").val(sum==hoursDiff);
   
   console.log(hoursDiff); 
   console.log(minutesRemain);  
   
}
time2diff(time_b,time_b);