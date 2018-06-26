$(document).ready(function(){
            var t = $("#myTable").DataTable({
                columnDefs: [ {
                    orderable: false,
                    targets: [0, 6]                   
                } ],
                order: [[ 1, "asc" ]],
                drawCallback: function( settings ) {
                    bindEvents();
                }
            });

            t.on('order.dt search.dt', function () {
                t.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
                    cell.innerHTML = i+1;
                });
            }).draw();

            function bindEvents() {
                $("[data-group=grpEdit]").off('click').click(function(){                    
                    $("#myModal .modal-title").text('Edit teacher');
                     $('input').prop('disabled', false);
                    $("#myModal").modal('show');
                });
                //disable view input-->
                $("[data-group=grpview]").off('click').click(function(event) {
                   $("#myModal .modal-title").text("View teacher");
                        if($("#myModal .modal-title").text()=="View teacher")
                            {
                                    $('input').prop('disabled', true);
                            }else
                            {
                                $('input').prop('disabled', true);
                            }

                    $("#myModal").modal('show');
                });


                //alert btndelete
            $('.btndelete').confirm({
                    content: "Do you want to delete data?",
                });
                $('.btndelete').confirm({
                    buttons: {
                      //  hey: function(){
                       //     location.href = this.$target.attr('href');
                       // }
                    }
                });
            //end alert delete
            }
            //btn add--
            $("#btnAdd").click(function(){
                $("#myModal .modal-title").text('Add New');
                $("#myModal").modal('show');
                 $('input').prop('disabled', false);
            });
            //----           
            
        });