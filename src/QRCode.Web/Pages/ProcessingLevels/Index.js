var dataTable;
var l;
var getFilter;


$(function () {
    l = abp.localization.getResource('QRCode');
    var createModal = new abp.ModalManager({
        viewUrl: abp.appPath + 'ProcessingLevels/CreateModal',
    });
    var editModal = new abp.ModalManager(abp.appPath + 'ProcessingLevels/EditModal');

    getFilter = function () {
        return {
            filterText: $("input[name='Search']").val(),
            level: $("select[name='Level']").val(),
        };
    };

    dataTable = $('#ProcessingLevelsTable').DataTable(
        abp.libs.datatables.normalizeConfiguration({
            serverSide: true,
            paging: true,
            order: [[1, "asc"]],
            searching: false,
            scrollX: true,
            ajax: abp.libs.datatables.createAjax(qRCode.processingLevels.processingLevel.getList, getFilter),
            columnDefs: [
                {
                    "orderable": false,
                    title: l('Index'),
                    data: "stt"
                },
                {
                    title: l('FullName'),
                    data: "fullName"
                },
                {
                    "orderable": false,
                    title: l('UserName'),
                    data: "userName"
                },
                {
                    "orderable": false,
                    title: l('NameDepartment'),
                    data: "nameDepartment"
                },

                {
                    "orderable": false,
                    title: l('Level'),
                    data: "level"
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
                            `<input type = "checkbox" id="${data.id}" ${check} onclick="ChangeStatus(this.id,${data.status})">` +
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
                                    icon: "fa-regular fa-pen",
                                    text: " " + l('Edit'),
                                    action: function (data) {
                                        editModal.open({ id: data.record.id });
                                        dataTable.ajax.reload();

                                    }
                                },
                                {
                                    icon: "fa-regular fa-trash",
                                    text: " " + l('Delete'),
                                    confirmMessage: function (data) {
                                        return l('Delete', data.record.name);
                                    },
                                    action: function (data) {
                                        qRCode.processingLevels.processingLevel
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

    $('#NewProcessingLevel').click(function (e) {
        e.preventDefault();
        createModal.open();
    });



    $("input[name='Search'").keyup(function () {
        dataTable.ajax.reload();
        console.log(getFilter);
    });
    $("select[name='Level'").change(function () {
        dataTable.ajax.reload();
        console.log($("select[name='Level']").val());
    });
});

function ChangeStatus(id, status) {
    if ($('#' + id).is(':checked')) {
        $("#" + id).prop("checked", false);
    }
    else {
        $("#" + id).prop("checked", true);
    }
    //dataTable.ajax.reload();

    var mess = l('BlockTheCategory');
    if (status == 0) {
        mess = l('UnblockTheCategory');
    }

    abp.message.confirm(mess, l('Notify'))
        .then(function (confirmed) {

            if (confirmed) {
                qRCode.processingLevels.processingLevel.changeStatus(id)
                abp.message.success(l('YourChangesHaveBeenSuccessfullySaved'), l('Congratulations'));
                dataTable.ajax.reload();

                if ($('#' + id).is(':checked')) {
                    $("#" + id).prop("checked", false);
                }
                else {
                    $("#" + id).prop("checked", true);
                }
                //dataTable.dataTable().fnDestroy();
                //dataTable.reload();
            }
        });
};