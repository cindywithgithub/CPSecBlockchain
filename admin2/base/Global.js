/**
 * 公共js方法
 */

//定义一个地图对象
var mapObj = null;
//一个gps对象，轨迹回放是使用
var gps = null;
var id = "";
var Global = {
    //地图服务地址
    //gisUrl :  "http://t0.tianditu.cn/vec_c/wmts?SERVICE=WMTS&REQUEST=GetTile&VERSION=1.0.0&LAYER=vec&STYLE=default&TILEMATRIXSET=c&FORMAT=tiles",
    //gisUrl : "http://59.108.36.106/QuadServer/maprequest?services=B_raster",
	gisUrl : gateway_gis_url,
    //调用雷达信息地址
    //radarUrl : "http://49.4.160.111:8080/gateway/api3?type=union",
	radarUrl :gateway_json_url+"/gateway/api3?type=union",
    camera:{//镜头
        data:[],
        pointlayerName:'cameraPointLayer',
        sectorLayerName:'cameraSectorLayer',
        icon:'images/camera.png',
        name:'camera_'
    },
    radar:{//雷达
        data:[],
        pointlayerName:'radarPointLayer',
        sectorLayerName:'radarSectorLayer',
        icon:"images/ld_0.png",
        name:'radar_'
    },
    targets:{
        data:[],
        pointlayerName:'targetsPointLayer',
        icon:'images/wb.gif'
    },
    sonar:{
        data:[],
        pointlayerName:"sonarPointLayer",
        icon:["images/sn0.gif","images/sn1.gif"]
    },
    TIMEOUT:700,
    TIMEOUT_SONAR:2000
};

/**
 *判断对象是否为null，并复制
 * @param {Object} obj
 */
function Null(obj, holder) {
    return obj == null || obj == "null" || obj==""? holder : obj;
}
/**
 * 获取url参数值
 * @param name
 * @returns {*}
 */
function getParamString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    var r = window.location.search.substr(1).match(reg);
    if (r != null) return unescape(r[2]); return null;
}

function msgshow(obj){
    var w=obj.w|250,h=obj.h|100,time=obj.time|Global.TIMEOUT;
    $.messager.show({
        title: '提示',
        id:obj.id,
        msg: obj.msg,
        width: w,
        height: h,
        timeout: time,
        showType: 'show'
    });
}

