<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<!doctype html>
<html>
<head>
    <title>SoftAOX | Ajax & jQuery - Cascading DropDownList using JSON</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
</head>
<body>
<br/>
<div class="container">
    <h1 align="center">Ajax & jQuery - Cascading DropDownList using JSON</h1>
    <br />
    <select name="car" id="car" class="form-control input-md">
        <option value="">Select Car</option>
    </select>
    <br />
    <select name="model" id="model" class="form-control input-md">
        <option value="">Select Model</option>
    </select>
    <br />
    <select name="variant" id="variant" class="form-control input-md">
        <option value="">Select Variant</option>
    </select>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
$(document).ready(function() {
 
    load_json_data('car');
 
    function load_json_data(id, parent_id) {
        var html_code = '';
        $.getJSON('car_list.json', function(data) {
 
            html_code += '<option value="">Select ' + id + '</option>';
            $.each(data, function(key, value) {
                if (id == 'car') {
                    if (value.parent_id == '0') {
                        html_code += '<option value="' + value.id + '">' + value.name + '</option>';
                    }
                } else {
                    if (value.parent_id == parent_id) {
                        html_code += '<option value="' + value.id + '">' + value.name + '</option>';
                    }
                }
            });
            $('#' + id).html(html_code);
        });
 
    }
 
    $(document).on('change', '#car', function() {
        var car_id = $(this).val();
        if (car_id != '') {
            load_json_data('model', car_id);
        } else {
            $('#model').html('<option value="">Select Model</option>');
        }
            $('#variant').html('<option value="">Select Variant</option>');
    });
    $(document).on('change', '#model', function() {
        var model_id = $(this).val();
        if (model_id != '') {
            load_json_data('variant', model_id);
        } else {
            $('#variant').html('<option value="">Select Variant</option>');
        }
    });
});
</script>
</body>
</html>