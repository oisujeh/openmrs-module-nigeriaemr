<% ui.decorateWith("appui", "standardEmrPage") %>

<%
    ui.includeJavascript("nigeriaemr", "bootstrap.js")
    ui.includeCss("nigeriaemr", "bootstrap.css")
%>
<div>
    <button onclick="deletePrints()" id="deleteBtn" hidden="true" class="btn">Delete FingerPrints</button>
    <br>
</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <a id="hidden-cancel" class="hide" data-dismiss="modal"></a>
                <img src="../moduleResources/nigeriaemr/images/Sa7X.gif" alt="Loading Gif"  style="width:100px">
                Loading...please wait
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="myModalCapture" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
                <a id="hidden-cancel-two" class="hide" data-dismiss="modal"></a>
                <img src="../moduleResources/nigeriaemr/images/Sa7X.gif" alt="Loading Gif"  style="width:100px">
                Validating...please wait
            </div>
        </div>
    </div>
</div>
<table>
    <tr>
        <td>
            <h6 id="H_LEFT_THUMB" style="background-color: red;color: white; display: none"></h6>
            <img id="LEFT_THUMB" border="1" onclick="captureFP(0)" alt="LEFT THUMB"
                 style="margin-left:30px;" height=200 width=150
                 src="../moduleResources/nigeriaemr/images/LEFT_THUMB.png">
            <br>
            <input type="button" value="Scan" id="BTN_LEFT_THUMB" onclick="captureFP(6)">
        </td>
        <td>
            <h6 id="H_LEFT_INDEX" style="background-color: red;color: white; display: none"></h6>
            <img id="LEFT_INDEX" border="1" alt="LEFT INDEX" height=200 width=150
                 src="../moduleResources/nigeriaemr/images/LEFT_INDEX.png">
            <br>
            <input type="button" value="Scan" id="BTN_LEFT_INDEX" onclick="captureFP(7)">
        </td>
        <td>
            <h6 id="H_LEFT_MIDDLE" style="background-color: red;color: white; display: none"></h6>
            <img id="LEFT_MIDDLE" border="1" alt="LEFT MIDDLE" height=200 width=150
                 src="../moduleResources/nigeriaemr/images/LEFT_MIDDLE.png"> <br>
            <input type="button" value="Scan" id="BTN_LEFT_MIDDLE" onclick="captureFP(8)">
        </td>
        <td>
            <h6 id="H_LEFT_RING" style="background-color: red;color: white; display: none"></h6>
            <img id="LEFT_RING" border="1" alt="LEFT RING" height=200 width=150
                 src="../moduleResources/nigeriaemr/images/LEFT_RING.png"> <br>
            <input type="button" value="Scan" id="BTN_LEFT_RING" onclick="captureFP(9)">
        </td>
        <td>
            <h6 id="H_LEFT_LITTLE" style="background-color: red;color: white; display: none"></h6>
            <img id="LEFT_LITTLE" border="1" alt="LEFT LITTLE" height=200 width=150
                 src="../moduleResources/nigeriaemr/images/LEFT_LITTLE.png"> <br>
            <input type="button" value="Scan" id="BTN_LEFT_LITTLE" onclick="captureFP(10)">
        </td>
    </tr>
    <tr>
        <td>
            <p id="LEFT_THUMB_INFO"></p>
        </td>
        <td>
            <p id="LEFT_INDEX_INFO"></p>
        </td>
        <td>
            <p id="LEFT_MIDDLE_INFO"></p>
        </td>
        <td>
            <p id="LEFT_RING_INFO"></p>
        </td>
        <td>
            <p id="LEFT_LITTLE_INFO"></p>
        </td>
    </tr>
    <tr>
        <td>
            <h6 id="H_RIGHT_THUMB" style="background-color: red;color: white; display: none"></h6>
            <img id="RIGHT_THUMB" border="1" alt="RIGHT THUMB" height=200 width=150
                 src="../moduleResources/nigeriaemr/images/RIGHT_THUMB.png"> <br>
            <input type="button" value="Scan" id="BTN_RIGHT_THUMB" onclick="captureFP(1)">
        </td>
        <td>
            <h6 id="H_RIGHT_INDEX" style="background-color: red;color: white; display: none"></h6>
            <img id="RIGHT_INDEX" border="1" alt="RIGHT INDEX" height=200 width=150
                 src="../moduleResources/nigeriaemr/images/RIGHT_INDEX.png"> <br>
            <input type="button" value="Scan" id="BTN_RIGHT_INDEX" onclick="captureFP(2)">
        </td>
        <td>
            <h6 id="H_RIGHT_MIDDLE" style="background-color: red;color: white; display: none"></h6>
            <img id="RIGHT_MIDDLE" border="1" alt="RIGHT MIDDLE" height=200 width=150
                 src="../moduleResources/nigeriaemr/images/RIGHT_MIDDLE.png"> <br>
            <input type="button" value="Scan" id="BTN_RIGHT_MIDDLE" onclick="captureFP(3)">
        </td>
        <td>
            <h6 id="H_RIGHT_RING" style="background-color: red;color: white; display: none"></h6>
            <img id="RIGHT_RING" border="1" alt="RIGHT RING" height=200 width=150
                 src="../moduleResources/nigeriaemr/images/RIGHT_RING.png"> <br>
            <input type="button" value="Scan" id="BTN_RIGHT_RING" onclick="captureFP(4)">
        </td>
        <td>
            <h6 id="H_RIGHT_LITTLE" style="background-color: red;color: white; display: none"></h6>
            <img id="RIGHT_LITTLE" border="1" alt="RIGHT LITTLE" height=200 width=150
                 src="../moduleResources/nigeriaemr/images/RIGHT_LITTLE.png"> <br>
            <input type="button" value="Scan" id="BTN_RIGHT_LITTLE" onclick="captureFP(5)">
        </td>
    </tr>
    <tr>
        <td>
            <p id="RIGHT_THUMB_INFO"></p>
        </td>
        <td>
            <p id="RIGHT_INDEX_INFO"></p>
        </td>
        <td>
            <p id="RIGHT_MIDDLE_INFO"></p>
        </td>
        <td>
            <p id="RIGHT_RING_INFO"></p>
        </td>
        <td>
            <p id="RIGHT_LITTLE_INFO"></p>
        </td>
    </tr>
</table>
<br/>

<div>
    <input type="button" value="Reset" onclick="location.reload(true);">
    <input type="button" value="Save" id="saveBiometric" class="confirm button" onclick="Save()" disabled>
    <br>
</div>

<script type="text/javascript">

    jqq = jQuery;

    let patientId;
    patientId = getUrlVars()["patientId"];
    let newPrint;
    let capturedPrint = [];
    let apiFingerPosition= {
        'RightThumb': 1,
        'RightIndex': 2,
        'RightMiddle': 3,
        'RightWedding': 4,
        'RightSmall': 5,
        'LeftThumb': 6,
        'LeftIndex': 7,
        'LeftMiddle': 8,
        'LeftWedding': 9,
        'LeftSmall': 10
    }
    let fingerPosition = ["", "RIGHT_THUMB", "RIGHT_INDEX", "RIGHT_MIDDLE", "RIGHT_RING", "RIGHT_LITTLE",
        "LEFT_THUMB", "LEFT_INDEX", "LEFT_MIDDLE", "LEFT_RING", "LEFT_LITTLE"];
    let url = '${ biometricUrl }'
    console.log(url)

    jqq(document).ready(function(){
        // jqq('#myModal').modal('show');
        let PreviousCaptureURL =url+'/CheckForPreviousCapture?PatientUUID=' + patientId;
        jqq.getJSON(PreviousCaptureURL)
            .success(function (data) {
                jqq('#hidden-cancel').click();
                if (data !== undefined && data !== null && data.length > 0) {
                    let lowQuality = false;
                    let invalid = false;
                    for (let i = 0; i < data.length; i++) {
                        if ("low" === data[i].qualityFlag.toLowerCase()) {
                            let position = apiFingerPosition[data[i].fingerPositions];
                            lowQuality = true
                            document.getElementById('BTN_' + fingerPosition[position]).setAttribute("onClick", "recaptureFP(" + position + ")");
                            document.getElementById('H_' + fingerPosition[position]).innerHTML = "low Quality";
                            document.getElementById('H_' + fingerPosition[position]).style.display = 'inherit';
                        } else if ("invalid" === data[i].qualityFlag.toLowerCase()) {
                            let position = apiFingerPosition[data[i].fingerPositions];
                            invalid = true
                            document.getElementById('BTN_' + fingerPosition[position]).setAttribute("onClick", "recaptureFP(" + position + ")");
                            document.getElementById('H_' + fingerPosition[position]).innerHTML = "Invalid Data";
                            document.getElementById('H_' + fingerPosition[position]).style.display = 'inherit';
                        } else {
                            let inputId = apiFingerPosition[data[i].fingerPositions];
                            document.getElementById('BTN_' + fingerPosition[inputId]).disabled = true;
                        }
                    }
                    jqq('#hidden-cancel').click();
                    jqq('#deleteBtn').attr('hidden', false);
                    if (lowQuality && invalid) {
                        alertt('Fingerprints of this patient contains invalid and low quality data and will need to be recaptured');
                    } else if (lowQuality) {
                        alertt('Some fingerprints for this patient are of low quality and will need to be recaptured');
                    } else if (invalid) {
                        alertt('Some fingerprints for this patient are invalid and will need to be recaptured');
                    } else {
                        alertt('Finger Print already captured for this patient');
                        jqq('#hidden-cancel').click();
                    }
                }
            })
            .error(function (xhr, status, err) {
                jqq('#hidden-cancel').click();
                if(xhr !== undefined && xhr.responseText !== null && xhr.responseText !== ''){
                    jqq('#hidden-cancel').click();
                    alertt(xhr.responseText);
                }else{
                    jqq('#hidden-cancel').click();
                    alertt('System error. Please check that the Biometric service is running');
                }
            });
        jqq('#hidden-cancel').click();
    });


    function alertt(message) {
        if (window.confirm((message)))
        {
            jqq('#hidden-cancel').click();
            jqq('#hidden-cancel-two').click();
        }else{
            jqq('#hidden-cancel').click();
            jqq('#hidden-cancel-two').click();
        }
    }

    function captureFP(position) {
        jqq('#myModalCapture').modal('show');
        // if(patientId === undefined){
        //     alertt('Select a patient first');
        //     return;
        // }


        let captureURL = url + '/CapturePrint?fingerPosition=' + position;

        jqq.getJSON(captureURL)
            .success(function (data) {
                jqq('#hidden-cancel-two').click();
                jqq('.modal-backdrop').hide();
                if (data.ErrorMessage === '' || data.ErrorMessage === null) {
                    let imgId = fingerPosition[position];
                    document.getElementById('H_'+imgId).style.display = 'none';
                    document.getElementById(imgId).src = "data:image/bmp;base64," + data.Image;
                    newPrint = data;
                    newPrint.Image = '';
                    pushPrints(newPrint);
                    jqq('#hidden-cancel-two').click();
                    if (capturedPrint.length > 5) {
                        jqq('input').removeAttr('disabled');
                    }
                    jqq('#hidden-cancel-two').click();
                    jqq('.modal-backdrop').hide();
                }else if("-1" === data.ErrorCode){
                    alertt('Fingerprint is of low quality kindly recapture');
                }else {
                    alertt(data.ErrorMessage);
                }
                jqq('#hidden-cancel-two').click();
                jqq('.modal-backdrop').hide();
            })
            .error(function (xhr, status, err) {
                jqq('#hidden-cancel-two').click();
                if(xhr !== undefined && xhr.responseText !== null && xhr.responseText !== ''){
                    jqq('#hidden-cancel-two').click();
                    alertt(xhr.responseText);
                }else{
                    jqq('#hidden-cancel-two').click();
                    alertt('System error. Please check that the Biometric service is running');
                }
            });
        jqq('#hidden-cancel-two').click();
        jqq('.modal-backdrop').hide();
    }

    function recaptureFP(position) {
        jqq('#myModalCapture').modal('show');
        jqq('.modal-backdrop').hide();
        let captureURL = url + '/reCapturePrint?fingerPosition=' + position + '&patientId='+ patientId;

        jqq.getJSON(captureURL)
            .success(function (data) {
                jqq('#hidden-cancel-two').click();
                if (data.ErrorMessage === '' || data.ErrorMessage === null) {
                    let imgId = fingerPosition[position];
                    document.getElementById(imgId).src = "data:image/bmp;base64," + data.Image;
                    document.getElementById('saveBiometric').setAttribute( "onClick", "reSave()");
                    document.getElementById('saveBiometric').disabled = false;
                    document.getElementById('H_'+imgId).style.display = 'none';
                    newPrint = data;
                    newPrint.Image = '';
                    pushPrints(newPrint);
                    jqq('#hidden-cancel-two').click();
                }else if("-1" === data.ErrorCode){
                    alertt('Fingerprint is of low quality kindly recapture');
                }else {
                    alertt(data.ErrorMessage);
                }
                jqq('#hidden-cancel-two').click();
                jqq('.modal-backdrop').hide();
            })
            .error(function (xhr, status, err) {
                jqq('#hidden-cancel-two').click();
                if(xhr !== undefined && xhr.responseText !== null && xhr.responseText !== ''){
                    jqq('#hidden-cancel-two').click();
                    alertt(xhr.responseText);
                }else{
                    jqq('#hidden-cancel-two').click();
                    alertt('System error. Please check that the Biometric service is running');
                }
            });
        jqq('#hidden-cancel-two').click();
        jqq("[data-dismiss=myModalCapture]").trigger({ type: "click" });
        jqq('.modal-backdrop').hide();
    }

    function getUrlVars() {
        let vars = [], hash;
        let hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
        for (let i = 0; i < hashes.length; i++) {
            hash = hashes[i].split('=');
            vars.push(hash[0]);
            vars[hash[0]] = hash[1];
        }
        return vars;
    }

    function pushPrints(newPrint) {
        console.log("started pushPrint");
        if (newPrint !== undefined && capturedPrint.length !== 0) {
            newPrint.creator = ${ authenticatedUserId }
            var pos = newPrint.FingerPositions;
            console.log("Position is " + pos);
            var index = capturedPrint.findIndex(item => item.FingerPositions === pos)
            console.log("Index is " + index);
            if (index !== -1) {
                // Replace the item by index.
                console.log("found a match")
                capturedPrint.splice(index, 1, newPrint)
            } else {
                console.log("perform a new print");
                capturedPrint.push(newPrint);
            }

        } else {
            console.log("else perform a new print");
            capturedPrint.push(newPrint);
        }
    }

    function Save() {
        jqq('#myModal').modal('show');
        let saveUrl = url + '/SaveToDatabase';
        let model = {};
        model.FingerPrintList = capturedPrint;
        model.PatientUUID = patientId;

        jqq.ajax({
            type: "Post",
            url: saveUrl,
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(model),
            cache: false,
        }).done(function (response) {
            if (window.confirm(response.ErrorMessage))
            {
                jqq('#hidden-cancel').click();
            }else{
                jqq('#hidden-cancel').click();
            }
            window.location.reload(true);
        }).error(function (xhr, status, err) {
            if (window.confirm((xhr.responseJSON.ErrorMessage)))
            {
                jqq('#hidden-cancel').click();
            }else{
                jqq('#hidden-cancel').click();
            }
            window.location.reload(true);
        });
    }

    function reSave() {
        jqq('#myModal').modal('show');
        let saveUrl = url + '/reSaveToDatabase';
        let model = {};
        model.FingerPrintList = capturedPrint;
        model.PatientUUID = patientId;
        jqq.ajax({
            type: "Post",
            url: saveUrl,
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(model),
            cache: false,
        }).done(function (response) {
            jqq('#hidden-cancel').click();
            alertt(response.ErrorMessage);
            window.location.reload(true);
        }).error(function (xhr, status, err) {
            jqq('#hidden-cancel').click();
            alertt(xhr.responseJSON.ErrorMessage);
            window.location.reload(true);
        });
    }


    function deletePrints() {
        jqq('#myModal').modal('show');
        if (confirm("Are you sure you want to delete these prints?") === true) {
            let deleteUrl = url + '/deleteFingerPrint?patientId=' + patientId;

            jqq.ajax({
                type: "Delete",
                url: deleteUrl,
                contentType: "application/json; charset=utf-8",
                cache: false
            }).success(function () {
                jqq('#hidden-cancel').click();
                alertt("Record deleted successfully!");
                window.location.reload(true);
            }).error(function (xhr, status, err) {
                jqq('#hidden-cancel').click();
                if(xhr !== undefined && xhr.responseText !== null && xhr.responseText !== ''){
                    jqq('#hidden-cancel').click();
                    alertt(xhr.responseText);
                }else{
                    jqq('#hidden-cancel').click();
                    alertt('System error. Please check that the Biometric service is running');
                }
                console.log(err);
            });
        }
    }

    function Search() {

        let identifier = jqq('#patient-search').val();
        let searchUrl = '/openmrs/ws/rest/v1/patient?identifier=' + identifier +
            '&v=custom:(patientId,uuid,patientIdentifier:(uuid,identifier),person:(gender,age,birthdate,birthdateEstimated,personName),attributes:(value,attributeType:(name)))'


        jqq.getJSON(searchUrl)
            .success(function (data) {
                jqq("#tblSearch").empty();
                jqq.each(data.results, function (i, v) {
                    let tbl_Id = v.patientIdentifier.identifier;
                    let tbl = '<tr><td><input name="rpt" class="chcktblpt" type="radio" id=' + v.patientId + ' class="chcktbl"></td>';
                    tbl += '<td>' + tbl_Id + '</td>';
                    tbl += '<td>' + v.person.personName.display + '</td>';
                    tbl += '<td>' + v.person.gender + '</td>';
                    tbl += '<td>' + v.person.age + '</td>';
                    tbl += '</tr>';

                    jqq("#tblSearch").append(tbl);
                });
            }).error(function (xhr, status, err) {
            alertt('error ' + err);
        });
    }

    jqq(document).on('click', '.chcktblpt', function (e) {
        patientId = this.id;
        newPrint = {};
        capturedPrint = [];
    });

</script>