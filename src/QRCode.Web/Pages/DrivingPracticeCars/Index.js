var dataTable;
var l;
var getFilter;


$(function () {
    l = abp.localization.getResource('QRCode');
    var createModal = new abp.ModalManager({
        viewUrl: abp.appPath + 'DrivingPracticeCars/CreateModal',
        //scriptUrl: '/Pages/DrivingPracticeCars/CreateModal.js'
    });
    var editModal = new abp.ModalManager({
        viewUrl: abp.appPath + 'DrivingPracticeCars/EditModal',
        //scriptUrl: '/Pages/DrivingPracticeCars/EditModal.js'
    });
    var detailModal = new abp.ModalManager(abp.appPath + 'DrivingPracticeCars/DetailModal');

    getFilter = function () {
        return {
            filterText: $("input[name='Search']").val(),
            status: $("select[name='status']").val(),
            time: $("select[name='Time']").val()
        };
    };

    dataTable = $('#DrivingPracticeCarsTable').DataTable(
        abp.libs.datatables.normalizeConfiguration({
            serverSide: true,
            paging: true,
            order: [[2, "asc"]],
            searching: false,
            scrollX: true,
            ajax: abp.libs.datatables.createAjax(qRCode.licenses.license.getList, getFilter),
            columnDefs: [
                {
                    "orderable": false,
                    title: l('Index'),
                    data: "stt",
                    width:"20px"
                },
                {
                    title: l('Id'),
                    "orderable": false,
                    data: "id",
                    width: "90px"
                },
                {
                    //"orderable": false,
                    title: l('ProfileOwner'),
                    data: "profileOwner",
                    width:"120px"
                },
                {
                    //"orderable": false,
                    title: l('dateRegister'),
                    data: "dateRegister",
                    render: function (data) {
                        return luxon
                            .DateTime
                            .fromISO(data, {
                                locale: abp.localization.currentCulture.name
                            }).toLocaleString();
                    }
                },
                {
                    "orderable": false,
                    title: l('NumberOfSymbol'),
                    data: "numberOfSymbol"
                },
                {
                    "orderable": false,
                    title: l('Level'),
                    data: "level"
                },
                {
                    "orderable": false,
                    title: l('NameUserLevel1'),
                    data: "nameUserLevel1"
                },
                {
                    "orderable": false,
                    title: l('NameUserLevel2'),
                    data: "nameUserLevel2"
                },
                {
                    "orderable": false,
                    title: l('Approve2'),
                    data: "",
                    data: { status: "status", id: "id" },
                    render: function (data) {

                        var check = '';
                        if (data.status == 3)
                            check = "checked";
                        var str = '<label class="switch">' +
                            `<input type = "checkbox" id="a${data.id}" ${check} onclick="ChangeStatus(this.id)">` +
                            '<span class="slider round"></span>' +
                            '</label >';
                        return str;

                    }
                },
                {
                    "orderable": false,
                    title: l('Status'),
                    data: { status: "status", id: "id" },
                    render: function (data) {
                        var str = '';
                        if (data.status == 1)
                            str = l('Waiting');
                        if (data.status == 2)
                            str = l('Approved1')
                        if (data.status == 3)
                            str = l('Approved2')
                        if (data.status == 4)
                            str = l('TakeBacked')
                        if (data.status == 5)
                            str = l('Rejected')
                       
                        return str;

                    }
                },
                
                //{
                //    title: l('EndDate'),
                //    data: "endDate",
                //    render: function (data) {
                //        return luxon
                //            .DateTime
                //            .fromISO(data, {
                //                locale: abp.localization.currentCulture.name
                //            }).toLocaleString();
                //    }
                //},

                
                {
                    title: l('Actions'),
                    rowAction: {
                        items:
                            [
                                {
                                    icon: "far fa-info",
                                    text: "" + l('Detail'),
                                    action: function (data) {
                                        //editModal.open({ id: data.record.id });
                                        //dataTable.ajax.reload();
                                        //location.href = 'Url.Action("EditModal", "Categories", new { Id = data.record.id })';
                                        location.href = `/DrivingPracticeCars/DetailModal?Id=${data.record.id}`;

                                    }
                                },
                                {
                                    icon: "fa-regular fa-pen",
                                    text: " " + l('Edit'),
                                    //visible: abp.auth.isGranted('QRCodePermissions.QRCode.Edit'),
                                    action: function (data) {
                                        //editModal.open({ id: data.record.id });
                                        //dataTable.ajax.reload();
                                        //location.href = 'Url.Action("EditModal", "Categories", new { Id = data.record.id })';
                                        location.href = `/DrivingPracticeCars/EditModal?Id=${data.record.id}`;

                                    }
                                }
                                
                            ]
                    }
                },
                {
                    "orderable": false,
                    title: l('TakeBack'),
                    data: { id: "id", status:"status" },
                    render: function (data) {
                        if (data.status == 3) {
                            return `<button id="a${data.id}" class="btn btn-danger btn-sm" onclick="TakeBack(this.id)"><i class="fa fa-undo"></i></button>`

                        }
                        return '' 
                    }

                },
                {
                    "orderable": false,
                    title: l('Reject'),
                    data: { id: "id", status:"status" },
                    render: function (data) {
                        if (data.status == 1) {
                            return `<button id="a${data.id}" class="btn btn-danger btn-sm" onclick="Reject(this.id)"><i class="fa fa-close"></i></button>`

                        }
                        return '' 
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

    $('#NewDrivingPracticeCarButton').click(function (e) {
        e.preventDefault();
        //createModal.open();
    });



    $("input[name='Search'").keyup(function () {
        dataTable.ajax.reload();
        console.log(getFilter);
    });

    $("select[name='status'").change(function () {
        dataTable.ajax.reload();
        console.log(getFilter);
    });

    $("select[name='Time'").change(function () {
        dataTable.ajax.reload();
        console.log($("select[name='Time']").val());
    });

});

function ChangeStatus(id, status) {
    //if ($('#a' + id).is(':checked')) {
    //    $("#a" + id).prop("checked", false);
    //}
    //else {
    //    $("#a" + id).prop("checked", true);
    //}
    //dataTable.ajax.reload();
    if ($('#' + id).is(':checked')) {
        $("#" + id).prop("checked", false);
    }
    else {
        $("#" + id).prop("checked", true);
    }

    var mess = l('LicenseApproval');
    if (status == 3) {
        mess = l('CancellationOfLicenseApproval');
    }
    //kiếm tra có quyền duyệt không
    var idUser = $("input[id='IdCurrentUser'").val();
    var idLicense = $("input[id='Id'").val();
    console.log(idUser, id)
    
    qRCode.licenses.license
        .checkPermissionApproved(id.substring(1), 2)
        .then(function (data) {
            if (!data) {
                abp.message.error(l("YouDoNotHaveThePermissionToApproveThisLicense"));
                document.getElementById('save').disabled = true
            }
            

        });

    abp.message.confirm(mess, l('Notify'))
        .then(function (confirmed) {

            if (confirmed) {
                qRCode.licenses.license
                    .approvLevel2(id.substring(1))
                    .then(function (data) {
                        if (!data) {
                            abp.message.error(l("UnapprovedLicenseLevel1"));
                        }
                        else {
                            abp.message.success(l('YourChangesHaveBeenSuccessfullySaved'), l('Congratulations'));
                            dataTable.ajax.reload();
                        }
                    });
                
                if ($('#' + id).is(':checked')) {
                    $("#" + id).prop("checked", false);
                }
                else {
                    $("#" + id).prop("checked", true);
                }
                dataTable.ajax.reload();

                //dataTable.dataTable().fnDestroy();
                //dataTable.reload();
            }
            //else {
            //    if (!$('#a' + id).is(':checked')) {
            //        $("#a" + id).prop("checked", false);
            //    }
            //    else {
            //        $("#a" + id).prop("checked", true);
            //    }
            //    //dataTable.reload();
            //}
        });
};
function Status() {
    console.log($("select[name='Status']").val())
}


function LoadLicensByStatus(status) {
    getFilter = function () {
        return {
            status: status,
        };
    };
    dataTable.ajax.reload();
}

//thu hồi giấy phép
function TakeBack(id) {
    console.log(id)
    var mess = l('TakeBack');
    abp.message.confirm(mess, l('Notify'))
        .then(function (confirmed) {

            if (confirmed) {
                qRCode.licenses.license.takeBack(id.substring(1))
                dataTable.ajax.reload();
            }
            
        });
}

//từ chôus giấy phép
function Reject(id) {
    console.log(id)
    var mess = l('Reject');
    abp.message.confirm(mess, l('Notify'))
        .then(function (confirmed) {

            if (confirmed) {
                qRCode.licenses.license.reject(id.substring(1))
                dataTable.ajax.reload();
            }
            
        });
}
