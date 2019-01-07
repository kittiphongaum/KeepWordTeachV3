$(document).ready( function () {
    var table = $('#subTable').DataTable({
           "sAjaxSource": "/sub",
           "sAjaxDataProp": "",
           "order": [[ 0, "asc" ]],
           "aoColumns": [
               { "mData": "id"},
             { "mData": "name" },
                 { "mData": "subjectId" },
                 { "mData": "subjectName" },
                 { "mData": "credit" },
                 { "mData": "creditHour" },
                 { "mData": "tudsadee" },
                 { "mData": "prtibad" }
                
                 
           ]
    })
});