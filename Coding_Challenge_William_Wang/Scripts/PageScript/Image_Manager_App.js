


var curSelectImageCount = 0;
var totalImages = 3;
var imagePath = "../../Image/";
var imageId= "image";
var imageItem = [];
var EXCEPTION_DELETE_LAST_IMAGE = "You can not delete all images on the system";
var statusMsgDivId = "statusMsg"

$(document).ready(function ()
{  
    initialiseAllImages();
    /**
     * This function will start up the loading of the image
     */
    function initialiseAllImages()
    {   
        var imageHtml;
        // currently program set to total of [totalImages] images
        for (i = 1; i <= totalImages; i++)
        {    
            // image is loaded to a class objectg
            var newImage = new ImageClass(imageId + i);

            // store into an array just in case we need it
            imageItem[i - 1] = newImage;

            // create a row on the display table
            var newRow = $("<tr>");

            // generate the checkbox and image tag
            var chkHTML = "<button type='button' class='btn btn-danger removebutton' title='Remove this row'>Delete</button>";            
            imageHtml = "<td align=center'>" + chkHTML + newImage.generateHTML + "</td>";

            // append the image onto the row
            newRow.append(imageHtml);

            // append row to table
            $("table.order-list").append(newRow);            
        }
        // display a status message
        showStatusToDiv(statusMsgDivId, "** All the images have been loaded **", 0);                   

    }
    // handle delete of the image
    $(document).on('click', 'button.removebutton', function ()
    {
        //we need at least 1 image according to the business rule
        if (curSelectImageCount != totalImages - 1) {
            // if user wants to show confirm window
            var notShownCnf = $("#ckoffConfirm").is(":checked");

            var confirmDelete = false;

            if (notShownCnf)
                confirmDelete = true;              // confirm delete    
            else
            {
                var result = confirm("Please confirm to delete this images ?");
                if (result)
                    confirmDelete = true;         // confirm delete
                else
                    showStatusToDiv(statusMsgDivId, "delete cancelled", 0);  // delete cancelled

            }
            //delete happens here
            if (confirmDelete)
            {
                // increase a delete counter
                ++curSelectImageCount;

                // delete from the row
                $(this).closest('tr').remove();

                //display status message
                showStatusToDiv(statusMsgDivId, "Successfully deleted", 0);
            }
        }
        else {
            //display error deleting image status message
            showStatusToDiv(statusMsgDivId, EXCEPTION_DELETE_LAST_IMAGE, 1);
        }

    });
});
