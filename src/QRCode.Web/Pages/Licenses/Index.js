var dataTable;
var l;


$(function () {
    l = abp.localization.getResource('QRCode');


    getFilter = function () {
        return {
            filterText: null,
            name: null

        };
    };

    dataTable = $('#LicensesTable').DataTable(
        abp.libs.datatables.normalizeConfiguration({
            serverSide: true,
            paging: true,
            order: false,
            searching: false,
            scrollX: true,
            ajax: abp.libs.datatables.createAjax(qRCode.licenses.license.getList, getFilter),
            columnDefs: [
                {
                    title: l('Index'),
                    data: "stt"
                },
                {
                    title: l('ProfileOwner'),
                    data: "profileOwner"
                },
                {
                    title: l('Level'),
                    data: "level"
                },
                {
                    title: l('IdUserLevel1'),
                    data: "idUserLevel1"
                },
                {
                    title: l('IdUserLevel2'),
                    data: "idUserLevel2"
                },
                {
                    "orderable": false,
                    title: l('Status'),
                    data: { status: "status" },
                    render: function (data) {
                        var str = '';
                        if (data.status == 1)
                            str = l('Waiting');
                        if (data.status == 2)
                            str = l('Approved')
                        if (data.status == 3)
                            str = l('TakeBacked')
                        if (data.status == 4)
                            str = l('Rejected')
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
                }
                


            ]
        })
    );

});


