$(document).ready(function () {
    $(function () {
        var userid = $("#userRoleid").val();

        $.ajax({
            type: "GET",
            contentType : "application/json",
            url: "/TableTeachingOne1/"+userid,
            dataType : 'json',
            success: function (result) {
                $.each(result, function (index, msg) {

                    var SubjectRow = '<tr>' +

                        '<td>' + msg.subject.subjectId + '</td>' +
                        '<td>' + msg.subject.subjectName + '</td>' +
                        '<td>' + msg.section + '</td>' +
                        '<td>' + msg.subject.credit + "(" + msg.subject.creditHour + ")" + '</td>' +
                        '<td>' + msg.studenNumber + '</td>' +
                        '<td>' + msg.standardTeach +'</td>' +
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

                $("#customerTable1 tbody tr:odd").addClass("info");
                $("#customerTable1 tbody tr:even").addClass("success");
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
})