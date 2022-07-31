$(function () {
    var l = abp.localization.getResource('QRCode');

    //$("input[id='statusRadioApproved'").click(function () {
    //    console.log($("input[id='Id'").val(), $("input[id='IdCurrentUser'").val())
    //    var idUser = $("input[id='IdCurrentUser'").val();
    //    var idLicense = $("input[id='Id'").val();
    //    qRCode.licenses.license
    //        .checkPermissionApproved(idUser, idLicense)
    //        .then(function (data) {
    //            if (!data) {
    //                abp.message.error(l("YouDoNotHaveThePermissionToApproveThisLicense"));
    //                document.getElementById('save').disabled = true
    //            }

    //        });
        
    ////    console.log(qRCode.licenses.license.checkPermissionApproved(idUser, idLicense))
    //});
    //$("input[id='statusRadioWaiting'").click(function () {
    //    document.getElementById('save').disabled = false
    //});
    //$("input[id='statusRadioTakeBack'").click(function () {
    //    document.getElementById('save').disabled = false
    //});
    //$("input[id='statusRadioRejected'").click(function () {
    //    document.getElementById('save').disabled = false
    //});

    var idLicense = $("input[id='Id'").val();
    var idCater = $("input[id='IdCater'").val();
    console.log(idLicense)
    //phê duyệt lần 1
    $("button[id='approve1'").click(function () {
        qRCode.licenses.license
            .checkPermissionApproved(idLicense, 1)
            .then(function (data) {
                if (!data) {
                    abp.message.error(l("YouDoNotHaveThePermissionToApproveThisLicense"));
                }
                else {
                    var mess = l('LicenseApproval');
                    abp.message.confirm(mess, l('Notify'))
                        .then(function (confirmed) {

                            if (confirmed) {
                                qRCode.licenses.license.approvLevel1(idLicense)
                                location.href = `/DrivingPracticeCars?IdCater=${idCater}`;

                            }

                        });
                }

            });
        
    });
    //thu hồi phê duyệt 1
    $("button[id='TakeBack1'").click(function () {
        console.log(idCater)
        qRCode.licenses.license
            .checkPermissionApproved(idLicense, 1)
            .then(function (data) {
                if (!data) {
                    abp.message.error(l("YouDoNotHaveThePermissionToApproveThisLicense"));
                }
                else {
                    var mess = l('CancellationOfLicenseApproval')
                    abp.message.confirm(mess, l('Notify'))
                        .then(function (confirmed) {

                            if (confirmed) {
                                qRCode.licenses.license.approvLevel1(idLicense)
                                location.href = `/DrivingPracticeCars?IdCater=${idCater}`;

                            }

                        });
                }

            });
        
    });
    //phê duyệt lần 2
    $("button[id='approve2'").click(function () {
        qRCode.licenses.license
            .checkPermissionApproved(idLicense, 2)
            .then(function (data) {
                if (!data) {
                    abp.message.error(l("YouDoNotHaveThePermissionToApproveThisLicense"));
                }
                else {
                    var mess = l('LicenseApproval');
                    
                    abp.message.confirm(mess, l('Notify'))
                        .then(function (confirmed) {

                            if (confirmed) {
                                qRCode.licenses.license.approvLevel2(idLicense)
                                location.href = `/DrivingPracticeCars?IdCater=${idCater}`;

                            }

                        });
                }

            });

    });
    //thu hồi phê duyệt 2
    $("button[id='TakeBack2'").click(function () {
        console.log(idCater)
        qRCode.licenses.license
            .checkPermissionApproved(idLicense, 2)
            .then(function (data) {
                if (!data) {
                    abp.message.error(l("YouDoNotHaveThePermissionToApproveThisLicense"));
                }
                else {
                    var mess = l('CancellationOfLicenseApproval');
                    
                    abp.message.confirm(mess, l('Notify'))
                        .then(function (confirmed) {

                            if (confirmed) {
                                qRCode.licenses.license.approvLevel2(idLicense)
                                location.href = `/DrivingPracticeCars?IdCater=${idCater}`;

                            }

                        });
                }

            });

    });
    //từ chối giấy phép
    $("button[id='Reject'").click(function () {
        console.log(idCater)
        qRCode.licenses.license
            .checkPermissionApproved(idLicense, 1)
            .then(function (data) {
                if (!data) {
                    abp.message.error(l("YouDoNotHaveThePermissionToRejectThisLicense"));
                }
                else {
                    var mess = l('RejectLicense');

                    abp.message.confirm(mess, l('Notify'))
                        .then(function (confirmed) {

                            if (confirmed) {
                                qRCode.licenses.license.reject(idLicense)
                                location.href = `/DrivingPracticeCars?IdCater=${idCater}`;

                            }

                        });
                }

            });

    });
})



function create_tr(table_id, This) {
    var table_body = document.getElementById(table_id);
    var first_tr = table_body.firstElementChild;
    var tr_clone = first_tr.cloneNode(true);
    console.log(tr_clone)
    table_body.append(tr_clone);
    clean_tr_append(table_body.lastElementChild)

    var stt = table_body.childElementCount
    td_child = tr_clone.firstElementChild;
    td_child.innerHTML = stt


}

function clean_tr_append(tr) {
    var children = tr.children;
    children = Array.isArray(children) ? children : Object.values(children);
    children.forEach(x => {
        if (x !== tr.lastElementChild) {
            if (x.firstElementChild !== null) {
                x.firstElementChild.value = '';
            }

        }

    });
}

function remove_tr(This) {
    if (This.closest('tbody').childElementCount != 1) {
        This.closest('tr').remove()
    }

    var childrenTr = document.getElementById("table_body").children;

    childrenTr = Array.isArray(childrenTr) ? childrenTr : Object.values(childrenTr);
    var index = 1;
    childrenTr.forEach(x => {
        x.firstElementChild.innerHTML = index++;
    });

}