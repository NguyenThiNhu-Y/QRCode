var categroryAppService;
var dataTable;
var l;
var getFilter;


$(function () {
    l = abp.localization.getResource('QRCode');
    var createModal = new abp.ModalManager({
        viewUrl: abp.appPath + 'Categories/CreateModal',
        scriptUrl : '/Pages/Categories/Create.js'
    });
    var editModal = new abp.ModalManager(abp.appPath + 'Categories/EditModal');
    var detailModal = new abp.ModalManager(abp.appPath + 'Categories/DetailModal');
   
    getFilter = function () {
        return {
            filterText: $("input[name='Search']").val(),
            
        };
    };

    categroryAppService = qRCode.categories.category;

    dataTable = $('#CategoriesTable').DataTable(
        abp.libs.datatables.normalizeConfiguration({
            serverSide: true,
            paging: true,
            order: [[1, "asc"]],
            searching: false,
            scrollX: true,
            ajax: abp.libs.datatables.createAjax(qRCode.categories.category.getList, getFilter),
            columnDefs: [
                {
                    "orderable": false,
                    title: l('Index'),
                    data: "stt"
                },
                {
                    title: l('Name'),
                    data: "name"
                },
     
                {
                    "orderable": false,
                    title: l('ParentName'),
                    data: "parentName"
                },
                {
                    title: l('Deadline'),
                    data: "deadline",
                    render: function (data) {
                        return data + " "+ l('day')
                    }
                },
                
                {
                    "orderable": false,
                    title: l('Status'),
                    data: { status: "status", id: "id" },
                    render: function (data) {

                        var check = '';
                        if (data.status == 1)
                            check = "checked";
                        var str = '<label class="switch">' +
                            `<input type = "checkbox" id="a${data.id}" ${check} onclick="ChangeStatus(this.id,${data.status})">` +
                            '<span class="slider round"></span>' +
                            '</label >';
                        return str;

                    }
                },
                {
                    title: l('Actions'),
                    rowAction: {
                        items:
                            [
                                {
                                    icon: "far fa-info",
                                    text: "" +l('Detail'),
                                    action: function (data) {
                                        //editModal.open({ id: data.record.id });
                                        //dataTable.ajax.reload();
                                        //location.href = 'Url.Action("EditModal", "Categories", new { Id = data.record.id })';
                                        location.href = `/Categories/DetailModal?Id=${data.record.id}`;

                                    }
                                },
                                {
                                    icon: "fa-regular fa-pen",
                                    text: " " + l('Edit'),
                                    action: function (data) {
                                        //editModal.open({ id: data.record.id });
                                        //dataTable.ajax.reload();
                                        //location.href = 'Url.Action("EditModal", "Categories", new { Id = data.record.id })';
                                        location.href = `/Categories/EditModal?Id=${data.record.id}`;

                                    }
                                },
                                {
                                    icon: "fa-regular fa-trash",
                                    text: " " + l('Delete'),
                                    confirmMessage: function (data) {
                                        return l('Delete', data.record.name);
                                    },
                                    action: function (data) {
                                        qRCode.categories.category
                                            .delete(data.record.id)
                                            .then(function (data) {
                                                if (data) {
                                                    abp.notify.info(l('SuccessfullyDeleted'));
                                                    dataTable.ajax.reload();
                                                }

                                                else {
                                                    abp.message.error(l("NotifyDeleteCategory"));
                                                }
                                            });
                                    }
                                }
                            ]
                    }
                }
            ]
        })
    );



    createModal.onResult(function () {
        dataTable.ajax.reload();
    });

    editModal.onResult(function () {
        dataTable.ajax.reload();
    });

    $('#NewCategoryButton').click(function (e) {
        e.preventDefault();
        //createModal.open();
    });

  

    $("input[name='Search'").keyup(function () {
        dataTable.ajax.reload();
        console.log(getFilter);
    });

});

function ChangeStatus(id, status) {
    if ($('#a' + id).is(':checked')) {
        $("#a" + id).prop("checked", false);
    }
    else {
        $("#a" + id).prop("checked", true);
    }
    dataTable.ajax.reload();
    var mess = l('BlockTheCategory');
    if (status == 0) {
        mess = l('UnblockTheCategory');
    }
    console.log(id.substring(1))
    abp.message.confirm(mess, l('Notify'))
        .then(function (confirmed) {

            if (confirmed) {
                qRCode.categories.category.changeStatus(id.substring(1))
                abp.message.success(l('YourChangesHaveBeenSuccessfullySaved'), l('Congratulations'));

                if ($('#a' + id).is(':checked')) {
                    $("#a" + id).prop("checked", false);
                }
                else {
                    $("#a" + id).prop("checked", true);
                }
                dataTable.ajax.reload();

                //dataTable.dataTable().fnDestroy();
                //dataTable.reload();
            }
            else {
                if ($('#a' + id).is(':checked')) {
                    $("#a" + id).prop("checked", false);
                }
                else {
                    $("#a" + id).prop("checked", true);
                }
            }
        });
};

//function search(){
//    // Declare variables
//    var input, filter, table, tr, td, i;
//    input = document.getElementById("Search");
//    filter = input.value.toUpperCase();
//    table = document.getElementById("CategoriesTable");
//    tr = table.getElementsByTagName("tr");
//    // Loop through all table rows, and hide those who don't match the search query
//    for (i= 0; i < tr.length; i++) {
//        td = tr[i].getElementsByTagName("td")[1];
//        if (td) {
//            if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
//                tr[i].style.display = "";
//            } else {
//                tr[i].style.display = "none";
//            }
//        }
//    }
//}
