$(document).ready(function () {
    $(function () {
        var userid = $("#userRoleid").val();

        $.ajax({
            type: "GET",
            contentType: "application/json",
            url: "/TableTeachingOne1/" + userid,
            dataType: 'json',
            success: function (result) {
                $.each(result, function (index, msg) {

                    var SubjectRow = '<tr>' +

                        '<td>' + msg.subject.subjectId + '</td>' +
                        '<td>' + msg.subject.subjectName + '</td>' +
                        '<td>' + msg.section + '</td>' +
                        '<td>' + msg.subject.credit + "(" + msg.subject.creditHour + ")" + '</td>' +
                        '<td>' + msg.studenNumber + '</td>' +
                        '<td>' + msg.standardTeach + '</td>' +
                        '<td>' + msg.startTime + '-' + msg.stopTime + '</td>' +
                        '<td>' + msg.room + '</td>' +
                        '<td class="td-actions text-nowrap">' +
                        '<input type="hidden" value=' + msg.tebleTeachId + '>' +
                        '<a  rel="tooltip" title="Remove" class="mr-25" >' +
                        '<i class="fa fa-close text-danger"></i>' +
                        '</a>' +
                        '</td>' +
                        
                        '</tr>';

                    $('#customerTable1 tbody').append(SubjectRow);

                });

                // $("#customerTable1 tbody tr:odd").addClass("info");
                // $("#customerTable1 tbody tr:even").addClass("success");
            },
            error: function (e) {
                // alert("ERROR: 22", e);
                // console.log("ERROR: 22", e);
            }
        });


    });



    // Do DELETE a Customer via JQUERY AJAX
    $(document).on("click", "a", function () {

        var tebleTeachId = $(this).parent().find('input').val();
        var workingObject = $(this);

        $.ajax({
            type: "DELETE",
            url: "/updateTableTeaching/" + tebleTeachId,
            success: function (resultMsg) {
                $("#resultMsgDiv").html("<p style='background-color:#67597E; color:white; padding:20px 20px 20px 20px'>" +
                    "Customer with Id=" + tebleTeachId + " is deleted successfully!" +
                    "</p>");

                workingObject.closest("tr").remove();

                // re-css for table
                $("#customerTable1 tbody tr:odd").addClass("info");
                $("#customerTable1 tbody tr:even").addClass("success");
            },
            error: function (e) {
                // alert("ERROR: 11", e,);
                // console.log("ERROR: 11", e,);
            }
        });
    });


    /*FormPicker Init*/
    $(function () {
        "use strict";

        /* Bootstrap Colorpicker Init*/
        $('.colorpicker').colorpicker();

        $('.colorpicker-rgb').colorpicker({
            color: '#AA3399',
            format: 'rgba'
        });

        $('.colorpicker-inline').colorpicker({
            color: '#ffaa00',
            container: true,
            inline: true
        });


        /* Datetimepicker Init*/
        $('#mounthstartMonth').datetimepicker({
            format: 'DD/MM/YYYY',
            useCurrent: false,
            icons: {
                time: "fa fa-clock-o",
                date: "fa fa-calendar",
                // up: "fa fa-arrow-up",
                // down: "fa fa-arrow-down"
            },
        // }).on('dp.show', function () {
        //     if ($(this).data("DateTimePicker").date() === null)
        //         $(this).data("DateTimePicker").date(moment());
        });
        $('#mounthstopMonth').datetimepicker({
            format: 'DD/MM/YYYY',
            useCurrent: false,
            icons: {
                date: "fa fa-calendar",
             },
      
        });
 
        $('#datetimepicker5').datetimepicker({

            useCurrent: false,
            icons: {
                time: "fa fa-clock-o",
                date: "fa fa-calendar",
                up: "fa fa-arrow-up",
                down: "fa fa-arrow-down"
            },
        }).on('dp.show', function () {
            if ($(this).data("DateTimePicker").date() === null)
                $(this).data("DateTimePicker").date(moment());


        });
        $('#datetimepicker2').datetimepicker({
            format: 'LT',
            useCurrent: false,
            icons: {
                time: "fa fa-clock-o",
                date: "fa fa-calendar",
                up: "fa fa-arrow-up",
                down: "fa fa-arrow-down"
            },
        }).data("DateTimePicker").date(moment());;


        $('#datetimepicker3').datetimepicker({
            format: 'DD-MM-YYYY',
            inline: true,
            sideBySide: true,
            icons: {
                time: "fa fa-clock-o",
                date: "fa fa-calendar",
                up: "fa fa-arrow-up",
                down: "fa fa-arrow-down"
            },
        });


        $('#datetimepicker4').datetimepicker({
            inline: true,
            sideBySide: true,
            useCurrent: false,
            icons: {
                time: "fa fa-clock-o",
                date: "fa fa-calendar",
                up: "fa fa-arrow-up",
                down: "fa fa-arrow-down"
            },
        }).data("DateTimePicker").date(moment());

        /* Daterange picker Init*/
        $('.input-daterange-datepicker').daterangepicker({
            buttonClasses: ['btn', 'btn-sm'],
            applyClass: 'btn-info',
            cancelClass: 'btn-default'
        });
        $('.input-daterange-timepicker').daterangepicker({
            timePicker: true,
            format: 'MM/DD/YYYY h:mm A',
            timePickerIncrement: 30,
            timePicker12Hour: true,
            timePickerSeconds: false,
            buttonClasses: ['btn', 'btn-sm'],
            applyClass: 'btn-info',
            cancelClass: 'btn-default'
        });
        $('.input-limit-datepicker').daterangepicker({
            format: 'MM/DD/YYYY',
            minDate: '06/01/2015',
            maxDate: '06/30/2015',
            buttonClasses: ['btn', 'btn-sm'],
            applyClass: 'btn-info',
            cancelClass: 'btn-default',
            dateLimit: {
                days: 6
            }
        });
        $('#mounth_startMonth').datetimepicker({
            format: 'DD/MM/YYYY',
            useCurrent: false,
            sideBySide: true,
            icons: {
                time: "fa fa-clock-o",
                date: "fa fa-calendar",
                up: "fa fa-arrow-up",
                down: "fa fa-arrow-down"
            },
        });
        $('#mounth_stopMonth').datetimepicker({
            format: 'DD/MM/YYYY',
            useCurrent: false,
            sideBySide: true,
            icons: {
                time: "fa fa-clock-o",
                date: "fa fa-calendar",
                up: "fa fa-arrow-up",
                down: "fa fa-arrow-down"
            },
        });
    });


});