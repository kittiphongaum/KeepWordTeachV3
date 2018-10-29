
function tableuteach() {

    var id1={
        useridS1 : $("#userRoleid").val(),
        termS2:$("#termS2").val(),
        yearS3 :$("#yearS3").val(),
        degreeS4:$("#degreeS4").val()
    };
    $.ajax({
        type: "POST",
        contentType : "application/json",
        url: "/TableTeachingOneSeachByid",
        data: JSON.stringify(id1),
        dataType : 'json',
        success: function (result) {
            if (result.tebleTeachId != null) {
                $.each(result, function (index, msg) {
    
                    var travhRow = '<tr>' +
                  
                        '<td>' + msg.subject.subjectId + '</td>' +
                        '<td>' + msg.subject.subjectName+ '</td>' +
                        '<td>' + msg.section + '</td>' +
                        '<td>' + msg.subject.credit + "(" + msg.subject.creditHour + ")" + '</td>' +
                        '<td>' + msg.studenNumber + '</td>' +
                        '<td>' + msg.standardTeach +'</td>' +
                        '<td>' + msg.startTime + '-' + msg.stopTime + '</td>' +
                     
                        '<td class="td-actions text-right">' +
                        '<input type="hidden" value=' + msg.tebleTeachId + '>' +
                        '<a  rel="tooltip" title="Remove" class="btn btn-danger btn-link btn-sm">' +
                        '<i class="material-icons">close</i>' +
                        '</a>' +
                        '</td>' +
                        '</tr>';
    
                    $('#Tableupdateteach tbody').append(travhRow);
    
                });
            } else {
                $('#alert').append('<center>ไม่มีข้อมูล</center>');
            }
         

            $("#Tableupdateteach tbody tr:odd").addClass("info");
            $("#Tableupdateteach tbody tr:even").addClass("success");
        },
        error: function (e) {
            // alert("ERROR: 22", e);
            // console.log("ERROR: 22", e);
        }
    });
};