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

    dataTable = $('#SubmitterInformationsTable').DataTable(
        abp.libs.datatables.normalizeConfiguration({
            serverSide: true,
            paging: true,
            order: false,
            searching: false,
            scrollX: true,
            ajax: abp.libs.datatables.createAjax(qRCode.submitterInformations.submitterInformation.getList, getFilter),
            columnDefs: [
                {
                    title: l('FullName'),
                    data: "fullName"
                }
               
                
            ]
        })
    );



   


});


