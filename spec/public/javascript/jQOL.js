
jQuery.fn.openlayers_map = function(width, height, layers){
    [width, height, layers] = set_options(width, height, layers)

    this.map = new OpenLayers.Map(this.attr("id"))
    this.map.addControl(new OpenLayers.Control.Attribution());
    
    if(layers != null){
        this.map.addLayers(set_generate_layers(layers))
        this.map.setCenter(new OpenLayers.LonLat(10.675964, 59.960167), 8)
    }
    
    this.css("height", height)
    this.css("width", width)


    function set_options(width,height, layers){
        if("object" == typeof(width)){
            layers = width
            width = null
        }else{
            layers = layers
        }

        if(!width){
            width = 400
        }
        if(!height){
            height = 200
        }

        return [width, height, layers]
    }
    function set_generate_layers(layers){
        return [new OpenLayers.Layer.WMS(
            "Rasterkart",
            layers.source,
            { layers: layers.layer }
        )]
    }
}
