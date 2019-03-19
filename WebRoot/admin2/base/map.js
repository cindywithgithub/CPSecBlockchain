
function loadMap() {

    var boLat = 19.14294355;
    var boLong = 110.56658935546875;
    var server = new GMapServer();
    //server.type = GMapViews.MAPSERVER;//Geobeans 栅格地图服务; GMapViews枚举类属性。根据加载不同服务选择不同属性
    server.type = GMapViews.MAPSERVER;
//		server.type = GMapViews.CUSTOMSERVER;
    server.name = "imageserver111";//随便起个名字，不同地图服务之间保持名称唯一。
    //server.address="http://10.0.0.8:8888/QuadServer/maprequest?services=world_vector";
    //server.address = "http://10.185.141.141:8080/QuadServer/maprequest?services=B_raster";//地图数据所在的虚拟目录
    server.address = Global.gisUrl;
    //server.file = "i.png";//地图数据Tile后缀
    //定义一个GMapOptions对象（包含了所有初始参数）如下所示：
    //vert.type =  GMapViews.MAPSERVER;
    var option = new GMapOptions();
    option.mapProj = "+proj=longlat";//"+proj=merc";"+proj=longlat";设置投影类型
    option.center = new GPoint(boLong,boLat); //初始地图中心坐标
    option.zoomLevel = 15; //初始显示地图层
//		option.mapProj = "+proj=proj=longlat";//"+proj=merc";"+proj=longlat";设置投影类型
    option.mapServer = server;//初始化地图服务器。将刚才定义的GMapServer对象赋值
    //option.mapExtent= "-16821577.5834, 16821577.5834, -13339162.2234, 20303992.9434";//定义地图范围，根据选择的地图服务配置相关参数。
    option.mapExtent="-256,256,-256,256";
    option.maxLevel=18;

    //定义一个GMap对象,将刚创建的option 对象作为参数传值进去如下所示：
    mapObj = new GMap("map_div", option); // 构造地图对象，插入到页面div 中

}
//添加扇形
function addSectorLayer() {
    mapObj.setMapSpeed(GMap.FAST);

    var icon;
    var oStyle = new GStyle();//设置扇形样式
    oStyle.infoWinWidth = 300;
    oStyle.lineColor = '0x0000ff';
    oStyle.fillColor = '0xff00ff';
    oStyle.strParam = -1;
    oStyle.infoWinType = GMap.HTMLINFOWIN;
    oStyle.tagWidth = 1000;
    oStyle.tagHeight = 600;
    oStyle.strParam =
        "<strParam><level>9</level><shape>SECTOR</shape><clr>0xff00ff</clr><overclr>0x00ffff</overclr><filltype>RADIAL</filltype><colors>0xFF0000,0x00FF00,0x0000FF</colors><alphas>0.5,0.5,0.5</alphas><grade>10</grade></strParam>";

    oStyle.borderColor = 0xff0000;
    oStyle.border = true;
    oStyle.showBgColor = true;
    oStyle.bgColor = 0x00ff00;

    var strPts = '106.3,38.1,60,100,6000@#'; //经度，纬度，起始角, 中止角， 半径(米)
    var strTips = 'dfghj' + '@#'; //分隔符@#
    var strLabels = 'aaaa' + '@#'; //分隔符@#
    var strIds = 'ids' + '@#';
    for (var i = 1; i < 10; i++) {
        strPts = strPts + (106.3 + 0.05 * i * Math.random()) + ',' + (38.1 + 0.05 * i * Math.random()) + ',' + (90 * Math.random()) +
        ',' + (90 + 90 * Math.random()) + ',' + (5000 + 2000 * Math.random()) + '@#';
        strTips = strTips + "<font color='#ff0000'>Hello World" + i + "!</font>" + "@#";
        strLabels = strLabels + 'label' + i + '@#';
        strIds = strIds + 'ids' + i + '@#';


    }
    mapObj.addObjectLayer('wms00003', oStyle, strPts, strTips, strLabels, strIds, false, null, null);
}

//居中
function center (geometry){
    if(typeof geometry=="undefined"){
        return;
    }
    var reg = /[1-9][0-9]*\.*[0-9]*/g;
    var arr = geometry.match(reg);
    var points = arr.join(',');
    mapObj.centerAtData(points);
}

function addPoint(obj){

    var pt = new GPoint(obj.point.split(",")[0],obj.point.split(",")[1]);//定义一个坐标点
    var style = new GStyle();//定义一个样式对象
    style.iconSrc = obj.iconSrc;////定义Marker的图标。需要给定一个URL指向这个图标，此处使用的是相对路径。
    style.showInfoWindow = false;
    style.borderColor   = Null(obj.borderColor,'0xe1e4e8');
    //style.borderColor   = '0xFF0000';
    style.border        = Null(obj.border,true);
    style.bgColor       = Null(obj.bgColor,"0xffffff")
    style.showBgColor   = Null(obj.showBgColor,true)
    style.fontColor     = Null(obj.fontColor,"0xff0000");
    style.imageInfo     = Null(obj.imageInfo,"0xff0000,0x00ff00");
    style.strParam      = Null(obj.strParam,'10,13,16,1,1,1.1,1.2,1.3,1.4,1.5,2,4,8');   //半径,必须设置（批量添加图层）

    style.fillColor     = Null(obj.fillColor,'0x0000ff'); //面
    style.fillOpacity   = obj.fillOpacity|40;

    style.lineColor     = obj.lineColor==null?'0xff0000':obj.lineColor; //线
    style.lineOpacity   = obj.lineOpacity|80;       //线
    style.lineSize      = obj.lineSize|2;        //线
    //0xff0000,0x00ff00,0x0000ff
    style.strParam		= obj.strParam|"<strParam><isLayerCollid>0</isLayerCollid><typeColors>0xff0000,0x00ff00,0x0000ff</typeColors><borderSize>0</borderSize><bordstr></bordstr></strParam>";
    if(obj.offsetX!=null){
        style.offsetX = obj.offsetX;
        style.offsetY = obj.offsetY;
    }
    var marker= new GMarker(pt,obj.label,style,obj.id);//定义一个Marker对象，参数分别是：Maker的位置，label，样式，id（可选）；如果给定id,需保证id的唯一性，否则由系统生成id号。
    mapObj.addOverlay(marker);//添加到map中
}

//添加多边形
function addPolygon(obj)
{


    var pts = [];
    var points = obj.points;
    for(var i=0;i<points.length;i++){
        var xy = points[i].split(",");
        var pt = new GPoint(xy[0],xy[1]);
        pts.push(pt);
    }

    var style = new GStyle();//定义一个样式对象
    style.lineColor="0x000ff";//设置线的颜色（16进制）
    //style.maxShownLevel=9;//最大显示级别
    style.showInfoWindow = false;//是否显示信息浮窗

    var polygon = new GPolygonOverlay(pts,style,obj.id);//定义一个线对象，参数分别是：坐标数组，样式，id（可选）；如果给定id,需保证id的唯一性，否则由系统生成id号。
    mapObj.addOverlay(polygon);//添加到map中
}

/**
 * 鼠标绘制多边形
 */
function drawPolygon()
{
    var polygonStyle = new GStyle();//定义一个样式
    polygonStyle.lineColor = "0xff0000";//外框线色
    polygonStyle.lilneSize = "2";//外框线宽
    polygonStyle.lineOpacity = "70";//外框线透明度；值介于0-100之间，0表示完全透明，100表示完全不透明。
    polygonStyle.dashed = true;//外框线是否是虚线

    polygonStyle.fillColor = "0x00ffff";//填充色
    polygonStyle.fillOpacity = "30"; //填充透明度；值介于0-100之间，0表示完全透明，100表示完全不透明。

    polygonStyle.showInfoWindow = false;
    polygonStyle.infoWinHtml = "这是多边形";//信息浮窗的内容

    mapObj.startDrawPolygon(true,polygonStyle); //开始鼠标绘制Polygon。第一个参数为添加完成后是否可编辑，第二个参数是GStyle对象。
}

/**
 * 判断点是否在面中
 */
function pointInPolygon(point, vs) {
    // ray-casting algorithm based on
    // http://www.ecse.rpi.edu/Homepages/wrf/Research/Short_Notes/pnpoly.html

    var x = point[0], y = point[1];

    var inside = false;
    for (var i = 0, j = vs.length - 1; i < vs.length; j = i++) {
        var xi = vs[i][0], yi = vs[i][1];
        var xj = vs[j][0], yj = vs[j][1];

        var intersect = ((yi > y) != (yj > y))
            && (x < (xj - xi) * (y - yi) / (yj - yi) + xi);
        if (intersect) inside = !inside;
    }

    return inside;
};
/**
 * 判断点是否在面中
 */
function pointInPoly(point,poly){
    var x = parseFloat(point.split(",")[0]),y = parseFloat(point.split(",")[1]);
    var inside = false;
    var p = poly.split("((")[1].split("))")[0];
    var points = p.split(",");
    for(var i=0,j = points.length -1;i<points.length;j=i++){
        var ci = points[i].split(" ");
        var cj = points[j].split(" ");
        var xi =  parseFloat(ci[0]),yi =  parseFloat(ci[1]);
        var xj =  parseFloat(cj[0]),yj =  parseFloat(cj[1]);
        var intersect = ((yi > y) != (yj > y))
            && (x < (xj - xi) * (y - yi) / (yj - yi) + xi);
        if (intersect) inside = !inside;
    }
    return inside;
}
/**
 * 加载面
 * @param obj
 */
function polygon(obj){
    var style=getPolygonStyle(obj.style);
    var id=obj.id||obj.ID;
    var polygon = new GPolygonOverlay(obj.point,style,id);
    if(typeof obj.infoWinHtmlStr=="undefined"){
        style.showInfoWindow   = false;
    }else{
        style.infoWinHtml = obj.infoWinHtmlStr;
        style.infoWinType   = GMap.HTMLINFOWIN;
        style.showInfoWindow   = true;
        style.infoWinWidth  = obj.width||200;
        style.infoWinHeight = obj.height||100;
        style.label = obj.label|"";
    }
    mapObj.addOverlayByWKT(polygon);
}
/**
 * 加载面样式
 * @param layerStyle
 * @returns {GStyle}
 */
function getPolygonStyle(layerStyle){
    // var layerStyle=layerStyle||'{"borderWidth":"1","borderColor":"0000ff","fillColor":"0000ff","fillOpacity":"60"}';
    // if(layerStyle.indexOf("}")==-1){
    //     layerStyle='{"borderWidth":"1","borderColor":"0000ff","fillColor":"0000ff","fillOpacity":"60"}';
    // }
    // var layerStyleJson = eval("(" + layerStyle + ")");
    var style = new GStyle();
    style.lineColor = "0x"+Null(layerStyle.borderColor,"0000ff");
    style.fillColor = "0x"+Null(layerStyle.fillColor,"24e5ef");
    style.lineOpacity = Null(layerStyle.lineOpacity,"10")
    style.lineSize = 1;
    style.fillOpacity = Null(layerStyle.fillOpacity,"60");
    style.infoWinWidth  = 300;
    style.infoWinHeight = 200;
    style.showInfoWindow   = false;
    style.infoWinType = GMap.HTMLINFOWIN;
    return style;
}
/**
 * 生成gps对象
 */
function initGps () {
    var oLineStyle              = new GStyle();
    oLineStyle.lineColor        = 0x0000ff; //航迹线颜色
    oLineStyle.dashed           = false;
    oLineStyle.showInfoWindow   = false;
    oLineStyle.imageInfo        = "images/,wb.gif;17.5,17.5,35,17.5;none;100;none";
    oLineStyle.borderColor      = 0xFF0000;
    oLineStyle.bgColor          = 0xffFFff;
    oLineStyle.fontColor        = 0xff00ff;
    oLineStyle.infoWinWidth     = 320;
    oLineStyle.infoWinHeight    = 200;
    oLineStyle.infoWinType      = GMap.HTMLINFOWIN;

    mapObj.initGPSImage(oLineStyle.imageInfo);

    gps                 = new GPS();//创建gps对象
    gps.isDrawLine      = true;
    gps.isDrawPt        = true;
    gps.isShowLabel     = false;//是否展示点label
    gps.isPtShowLabel   = false;
    gps.isPtShowArrow   = true;	//true表示轨迹中的点改为箭头形式，false则表示仍然采用点的形式
    gps.maxpts          = 5;
    gps.lineStyle       = oLineStyle;
    gps.ptColor         = 0xFF0000;
    gps.ptFillColor     = 0x00ff00;
    gps.ptSize          = 5;
    gps.isPtAdjust      = true;
    gps.offsetX         = 10;
    gps.offsetY         = 10;

};
/**
 * 轨迹回放点显示
 * @param x
 * @param y
 */
function addGPSPoint(obj) {
    mapObj.redrawAllOverlays(true);
    var gpoint = new GPSPoint();
    gpoint.point = obj.point;
    gpoint.id = obj.id;
    gpoint.label = obj.label;
    //显示的图片序号 0,1,2  在imageInfo中设定显示的图片
    //gpoint.order    = 1;
    gpoint.tipInfo = "";
    gpoint.isOnline = true;
    gpoint.course = 60;

    if (!mapObj.isGPSLineExist(gpoint.id)) {// 判断是否存在此线
        mapObj.createGPSLine(gpoint.id, gps);
    }
    mapObj.addGPSPointToLine(gpoint);//讲点加到线上

    if (gps==null) {
        mapObj.changeGPSMaxPts(gpoint.id, 5);
    }
    mapObj.redrawAllOverlays(false);
};

/**
 * 标绘线
 * @param points
 * @param id
 */
function addLine(points,id){

    var pts = [];

    for(var i=0;i<points.length;i++){
        var xy = points[i].split(",");
        var pt = new GPoint(xy[0],xy[1]);
        pts.push(pt);
    }
    var style = new GStyle();//定义一个样式对象
    style.lineColor="0xe88e22";//设置线的颜色（16进制）
    style.dashed=true;//是否为虚线
    //style.maxShownLevel=9;//最大显示级别
    style.showInfoWindow = false;//是否显示信息浮窗
    //style.showInfoWindowStr = "<div>hh</div>"

    var polyline = new GPolylineOverlay(pts,style,id);//定义一个线对象，参数分别是：坐标数组，线类型，id（可选）；如果给定id,需保证id的唯一性，否则由系统生成id号。
    polyline.editable=false;//是否可编辑
    mapObj.addOverlay(polyline);//添加到map中

}