$(document).ready(function () {
    $(function () {
        var userid = $("#userRoleid").val();

        $.ajax({
            type: "GET",
            contentType: "application/json",
            url: "/TableTeachingOne1/" + userid,
            dataType: 'json',
            success: function (msg) { 
                if (msg.tebleTeachId != null) {
                    $('#degree').val("1");  
                    $('#termYear').val("1");    
                    $('#teachTerm').val(msg.teachTerm);   
              
                } else {
                    $('#alert').append('<center>ไม่มีข้อมูล</center>');
                }
                     

              
             
            },
            error: function (e) {
              
            }
        });


    });
    $(function () {
        var id1={
            userid: $("#userRoleid").val(),
            term:$("#teachTerm").val(),
            year:$("#termYear").val(),
            degree:$("#degree").val()
        };
        $.ajax({
            type: "POST",
            contentType : "application/json",
            url: "/TableTeachingOneSeachByid",
            data: JSON.stringify(id1),
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
                        '<td class="td-actions text-right">' +
                        '<input type="hidden" value=' + msg.tebleTeachId + '>' +
                        '<a  rel="tooltip" title="Remove" class="btn btn-danger btn-link btn-sm">' +
                        '<i class="material-icons">close</i>' +
                        '</a>' +
                        '</td>' +
                        '</tr>';
    
                    $('#Tableupdateteach tbody').append(SubjectRow);
    
                });
    
                $("#Tableupdateteach tbody tr:odd").addClass("info");
                $("#Tableupdateteach tbody tr:even").addClass("success");
            },
            error: function (e) {
                // alert("ERROR: 22", e);
                // console.log("ERROR: 22", e);
            }
        });
    });
});