
jQuery.fn.openlayers_map = function(width, height){
    if(!width){
        width = 400
    }
    if(!height){
        height = 200
    }

    this.map = new OpenLayers.Map(this.attr("id"))
    this.css("height", height)
    this.css("width", width)
    
}
