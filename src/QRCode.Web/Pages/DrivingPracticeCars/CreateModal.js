

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

function chooseFile(fileInput) {
    fileInputNew = fileInput.cloneNode(true)
    fileInputNew.setAttribute("id", "file");
    fileInputNew.setAttribute("name", "files[]");
    fileInputNew.hidden = true;

    console.log(fileInputNew)
    console.log(fileInput.files[0].name)
    console.log(fileInput.files)
    var divHienTai = document.getElementById("showfile");

    //div bao ngoài input và nút xóa
    var divNgoai = document.createElement("div")
    divNgoai.setAttribute("id","ngoai")
    var divMoi = document.createElement("div");
    var theA = document.createElement("a");
    var theI = document.createElement("i");
    theI.setAttribute("class", "fa fa-close");
    theA.setAttribute("class", "btn color");
    theA.setAttribute("onclick", "deleteFile(this)");
    divMoi.setAttribute("class", "file");
    theA.appendChild(theI);
    var noiDung = document.createTextNode(fileInput.files[0].name);
    divMoi.appendChild(noiDung);
    divMoi.appendChild(theA);

    //thêm thẻ input clone và nút xóa vào div bao ngoài
    divNgoai.appendChild(fileInputNew)
    divNgoai.appendChild(divMoi)
    
    divHienTai.appendChild(divNgoai)
};

function deleteFile(input) {
    var div1 = input.closest('div')
    var divNgoai = div1.parentElement
    divNgoai.remove()
    document.getElementById('choose').value = ''
    
}