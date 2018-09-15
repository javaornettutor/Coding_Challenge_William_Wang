class ImageClass
{
    
    constructor(name)
    {
        this.name = name;
        this.status= 1;
    }

    get name()
    {
        return this._name;
    }

    set name(value)
    {
        if (value.length < 4)
        {
            alert("Name is too short.");
            return;
        }
        this._name = value;
    }
    get status()
    {
        return this._status;
    }

    set status(value)
    {        
        this._status = value;
    }
    get generateHTML()
    {
        var html = "<img id='imagePic' src='" + imagePath + this._name + ".jpg' class='imageStyle' alt='missing image [" + this._name +"]'>";
        return html;
    }
}