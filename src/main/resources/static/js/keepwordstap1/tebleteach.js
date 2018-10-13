
$(document).ready(function () {
    buttons: [{
        extend: 'collection',
        text: 'Export',
        buttons: ['csv-flash', 'xls-flash', 'pdf-flash']
    }]
     
    var table = $('#tableteach').DataTable({
       

        "sAjaxSource": "/subAll",
        "sAjaxDataProp": "",
        "searching": false,
        /* "ordering":false, */
        "info": false,
        "paging": false,

        "iengthChange": false,
        "order": [
            [1, "asc"]
        ],
        "aoColumns": [{
                "mData": "subjectId"
            },
            {
                "mData": "subjectName"
            },
            {
                "mData": "section"
            },
            {
                "mData": "subject.credit"
            },
            {
                "mData": "studenNumber"
            },
          

        ]


    })
});