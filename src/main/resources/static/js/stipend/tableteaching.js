
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
            $.each(result, function (index, msg) {
                var SubjectRow = '<tr>' +
                    '<td>' + msg.subject.subjectId + '</td>' +
                    '<td>' + msg.section + '</td>' +
                    '<td>' + msg.subject.credit + "(" + msg.subject.creditHour + ")" + '</td>' +
                    '<td>' + msg.studenNumber + '</td>' +
                    '<td>' + msg.standardTeach +'</td>' +
                    '<td>'+'</td>' +
                    '<td>' + '</td>' +
                    // '<td class="td-actions text-right">' +
                    // '<input type="hidden" value=' + msg.tebleTeachId + '>' +
                    // '<a  rel="tooltip" title="Remove" class="btn btn-danger btn-link btn-sm">' +
                    // '<i class="material-icons">close</i>' +
                    // '</a>' +
                    // '</td>' +
                 
                    '<td class="btn btn-warning"><a  data-target="#exampleModal"  data-toggle="modal">'+'เลือกสถานะวิชา'+'</a></td>'+
                    '</tr>';

                $('#customerTable2 tbody').append(SubjectRow);
               
            });

            $("#customerTable2 tbody tr:odd").addClass("info");
            $("#customerTable2 tbody tr:even").addClass("success");
        },
        error: function (e) {
            // alert("ERROR: 22", e);
            // console.log("ERROR: 22", e);
        }
    });
};
$(function() {
	"use strict";
	
	if( $('#exampleModal12').length > 0 ){
		$('#exampleModal12').on('show.bs.modal', function (event) {
		  var button = $(event.relatedTarget) // Button that triggered the modal
		  var recipient = button.data('whatever') // Extract info from data-* attributes
		  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
		  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
		  var modal = $(this)
        //   modal.find('.modal-title').text('New message to ' + recipient)
        modal.find('.modal-title').text('แก่ใขสถานะวิชา')
		  modal.find('.modal-body input').val(recipient)
		});
	}
});
/*FormXeditable Init*/
// $(function(){
// 	"use strict";
	
// 	/* editables*/
// 	$('#username').editable({
// 	 type: 'text',
// 	 pk: 1,
// 	 name: 'username',
// 	 title: 'Enter username'
// 	});

// 	$('#firstname').editable({
// 	  validate: function(value) {
// 	   if($.trim(value) == '') return 'This field is required';
// 	 }
// 	});

// 	$('#sex1').editable({
// 	  prepend: "not selected",
// 	  source: [
// 	  {value: 1, text: 'Male'},
// 	  {value: 2, text: 'Female'}
// 	  ],
// 	  display: function(value, sourceData) {
// 	   var colors = {"": "#98a6ad", 1: "#5fbeaa", 2: "#5d9cec"},
// 	   elem = $.grep(sourceData, function(o){return o.value == value;});

// 	   if(elem.length) {
// 		 $(this).text(elem[0].text).css("color", colors[value]);
// 	   } else {
// 		 $(this).empty();
// 	   }
// 	 }
// 	});

// 	$('#status').editable();

// 	$('#group').editable({
// 	  showbuttons: false
// 	});

// 	$('#dob').editable();

// 	$('#comments').editable({
// 	  showbuttons: 'bottom'
// 	});

// 	/*inline*/
// 	$('#inline-username').editable({
// 	 type: 'text',
// 	 pk: 1,
// 	 name: 'username',
// 	 title: 'Enter username',
// 	 mode: 'inline'
// 	});

// 	$('#inline-firstname').editable({
// 	  validate: function(value) {
// 	   if($.trim(value) == '') return 'This field is required';
// 	 },
// 	 mode: 'inline'
// 	});

// 	$('#inline-sex1').editable({
// 	  prepend: "not selected",
// 	  mode: 'inline',
// 	  source: [
// 	  {value: 1, text: 'Male'},
// 	  {value: 2, text: 'Female'}
// 	  ],
// 	  display: function(value, sourceData) {
// 	   var colors = {"": "#98a6ad", 1: "#5fbeaa", 2: "#5d9cec"},
// 	   elem = $.grep(sourceData, function(o){return o.value == value;});

// 	   if(elem.length) {
// 		 $(this).text(elem[0].text).css("color", colors[value]);
// 	   } else {
// 		 $(this).empty();
// 	   }
// 	 }
// 	});

// 	$('#inline-status').editable({mode: 'inline'});

// 	$('#inline-group').editable({
// 	  showbuttons: false,
// 	  mode: 'inline'
// 	});

// 	$('#inline-dob').editable({mode: 'inline'});

// 	$('#inline-comments').editable({
// 	  showbuttons: 'bottom',
// 	  mode: 'inline'
// 	});
// });
/*Modal Init*/
$(function() {
	"use strict";
	
	if( $('#exampleModal').length > 0 ){
		$('#exampleModal').on('show.bs.modal', function (event) {
		  var button = $(event.relatedTarget) // Button that triggered the modal
		  var recipient = button.data('whatever') // Extract info from data-* attributes
		  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
		  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
		  var modal = $(this)
		  modal.find('.modal-title').text('New message to ' + recipient)
		  modal.find('.modal-body input').val(recipient)
		});
	}
});