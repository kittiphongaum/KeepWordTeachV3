$(function () {
    var id1 ={
        teachIdS1: $("#userRoleid").val(),
        teachIdS2: $("#teachTerm").val(),
        teachIdS3: $("#termYear").val()
    }

    $.ajax({
        type: "POST",
        contentType : "application/json",
        url: "/TableTeachingOneSeachByid",
        data: JSON.stringify(id1),
        dataType : 'json',
        success: function (result) {
            $.each(result, function (index, msg) {

                var SubjectRow = '<tr>' +

                    '<td>' + msg.tebleTeachId + '</td>' +
                    '<td>' + msg.subject.subjectId + '</td>' +
                    '<td>' + msg.subject.subjectName + '</td>' +
                    // '<td>' + msg.section + '</td>' +
                    // '<td>' + msg.subject.credit + "(" + msg.subject.creditHour + ")" + '</td>' +
                    // '<td>' + msg.studenNumber + '</td>' +
                    // '<td>' + msg.standardTeach +'</td>' +
                    // '<td>' + msg.startTime + '-' + msg.stopTime + '</td>' +
                    // '<td>' + msg.room + '</td>' +
                    // '<td class="td-actions text-nowrap">' +
                    // '<input type="hidden" value=' + msg.tebleTeachId + '>' +
                    // '<a  rel="tooltip" title="Remove" class="mr-25" >' +
                    // '<i class="fa fa-close text-danger"></i>' +
                    // '</a>' +
                    // '</td>' +
                    '</tr>';

                $('#subjectteach tbody').append(SubjectRow);

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
