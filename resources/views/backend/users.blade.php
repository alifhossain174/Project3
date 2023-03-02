@extends('backend.master')

@section('header_css')
    <link href="{{ url('dataTable') }}/css/jquery.dataTables.min.css" rel="stylesheet">
    <link href="{{ url('dataTable') }}/css/dataTables.bootstrap4.min.css" rel="stylesheet">
    <style>
        .dataTables_wrapper .dataTables_paginate .paginate_button{
            padding: 0px;
            border-radius: 4px;
        }
        table.dataTable tbody td:nth-child(1){
            text-align: center !important;
            font-weight: 600;
        }
        table.dataTable tbody td:nth-child(2){
            text-align: center !important;
        }
        table.dataTable tbody td:nth-child(3){
            text-align: center !important;
        }
        table.dataTable tbody td:nth-child(4){
            text-align: center !important;
        }
        table.dataTable tbody td:nth-child(5){
            text-align: center !important;
        }
        table.dataTable tbody td:nth-child(6){
            text-align: center !important;
        }
        tfoot {
            display: table-header-group !important;
        }
        tfoot th{
            text-align: center;
        }

    </style>
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="card mt-3">
                    <div class="card-header text-white bg-success">
                        <b>View All Users</b>
                    </div>
                    <div class="card-body" style="border-left: 1px solid #ADBC7A !important; border-bottom: 1px solid #ADBC7A !important;">
                        <div class="table-responsive">
                            <label id="customFilter">
                                <select id="webcam_datatable_filter" class="form-control form-control-sm custom-cls" style="width: 80px; margin-right: 5px">
                                    <option value="" selected> Date </option>
                                    <option value="2023-03-01">2023-03-01</option>
                                    <option value="2023-03-02">2023-03-02</option>
                                </select>
                            </label>

                            <table class="table table-striped data-table w-100">
                                <thead>
                                    <tr>
                                        <th scope="col" class="text-center">SL</th>
                                        <th scope="col" class="text-center">Name</th>
                                        <th scope="col" class="text-center">Email</th>
                                        <th scope="col" class="text-center">Contact</th>
                                        <th scope="col" class="text-center">Created</th>
                                        <th scope="col" class="text-center">Action</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </tfoot>

                                <tbody>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    {{-- user update modal --}}
    <div class="modal fade" id="ajaxModel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="modelHeading"></h4>
                    <button type="button" class="close" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="productForm" name="productForm" class="form-horizontal">
                       <input type="hidden" name="user_id" id="user_id">

                        <div class="form-group">
                            <label for="name" class="col-sm-12 control-label">Name</label>
                            <div class="col-sm-12">
                                <input type="text" class="form-control" id="name" name="name" placeholder="Enter Name" value="" maxlength="50" required="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="contact" class="col-sm-12 control-label">Contact</label>
                            <div class="col-sm-12">
                                <input type="text" class="form-control" id="contact" name="contact" placeholder="Enter Contact" value="" maxlength="50" required="">
                            </div>
                        </div>

                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-primary rounded" id="saveBtn" value="create">Save changes</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection


@section('footer_js')

    {{-- js code for data table --}}
    <script src="{{ url('dataTable') }}/js/jquery.validate.js"></script>
    <script src="{{ url('dataTable') }}/js/jquery.dataTables.min.js"></script>
    <script src="{{ url('dataTable') }}/js/dataTables.bootstrap4.min.js"></script>
    <script type="text/javascript">
        var table = $(".data-table").DataTable({
            processing: true,
            serverSide: true,
            ajax: "{{ url('users/lists') }}",
            columns: [
                {data: 'DT_RowIndex', name: 'DT_RowIndex'},
                {data: 'name', name: 'name'}, //orderable: true, searchable: true
                {data: 'email', name: 'email'},
                {data: 'contact', name: 'contact'},
                {data: 'created_at', name: 'created_at'},
                {data: 'action', name: 'action', orderable: false, searchable: false},
            ],
            initComplete: function() {
                this.api().columns([1, 2, 3]).every(function() {
                    var column = this;
                    var input = document.createElement("input");
                    $(input).appendTo($(column.footer()).empty())
                        .on('change', function() {
                            var val = $.fn.dataTable.util.escapeRegex($(this).val());
                            column.search(val ? val : '', true, false).draw();
                        });
                });

                this.api().columns([4]).every(function() {
                    var column = this;
                    var select = $('<select style="width:100%"><option value=""></option></select>')
                        .appendTo($(column.footer()).empty())
                        .on('change', function() {
                            var val = $.fn.dataTable.util.escapeRegex(
                                $(this).val()
                            );
                            column
                                .search(val ? '^' + val + '$' : '', true, false)
                                .draw();
                        });
                    column.each(function() {
                        select.append('<option value="2023-03-01">' + '2023-03-01' + '</option>')
                        select.append('<option value="2023-03-02">' + '2023-03-02' + '</option>')
                    });
                });
            }
        });

        $(".dataTables_filter").append($("#customFilter"));
        $('#customFilter').on('change', function(){
            var filter_value = $("#webcam_datatable_filter").val();
            var liveurl = "{{ url('users/lists') }}/"+filter_value;
            table.ajax.url(liveurl).load();
        });
    </script>

    {{-- js code for user crud --}}
    <script>
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $('body').on('click', '.editBtn', function () {
            var user_id = $(this).data('id');
            $.get("{{ url('get/user/info') }}" +'/' + user_id, function (data) {
                $('#modelHeading').html("Edit User Info");
                $('#saveBtn').val("edit-user");
                $('#ajaxModel').modal('show');
                $('#user_id').val(data.id);
                $('#name').val(data.name);
                $('#contact').val(data.contact);
            })
        });

        $('#saveBtn').click(function (e) {
            e.preventDefault();
            $(this).html('Updating..');
            $.ajax({
                data: $('#productForm').serialize(),
                url: "{{ url('user/info/update') }}",
                type: "POST",
                dataType: 'json',
                success: function (data) {
                    $('#productForm').trigger("reset");
                    $('#ajaxModel').modal('hide');
                    table.draw();
                    toastr.success("User Info Updated", "Updated Successfully")
                },
                error: function (data) {
                    console.log('Error:', data);
                    $('#saveBtn').html('Error Occured');
                }
            });
        });

        $('body').on('click', '.deleteBtn', function () {
            var user_id = $(this).data("id");
            if(confirm("Are You sure want to delete !")){
                $.ajax({
                    type: "GET",
                    url: "{{ url('delete/user') }}"+'/'+user_id,
                    success: function (data) {
                        table.draw();
                        toastr.error("User has been Deleted", "Deleted Successfully");
                    },
                    error: function (data) {
                        console.log('Error:', data);
                    }
                });
            }
        });

        $('.close').click(function (e) {
            $('#ajaxModel').modal('hide');
        });
    </script>
@endsection

