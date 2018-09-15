/**
 * The function will display any message to the given <div> and display the message is displayed as error or just normal * 
 * @param divId -ID of the div
 * @param {any} msg - Display message on the div
 * @param {any} ifError - if display as error
 */
function showStatusToDiv(divId, msg, ifError) {
    var divComponent = $("#" + divId);
    
    divComponent.addClass("alert alert-info");
    if (msg.length == 0) {
        divComponent.hide();
        divComponent.html("");
        //divComponent.attr("class", "alert alert-info");
    }
    else
    {
        divComponent.html(msg);
        if (ifError == 1) {
            divComponent.removeClass("alert alert-danger");
            divComponent.addClass("alert alert-danger");
        } else {
            //divComponent.addClass("alert alert-info");
        }
    }
    
}