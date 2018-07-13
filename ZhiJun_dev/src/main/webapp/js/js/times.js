function times(value) {
    var date = new Date(value);
    Y = date.getFullYear(),
        m = date.getMonth() + 1,
        d = date.getDate(),
        H = date.getHours(),
        i = date.getMinutes();
    	mi= date.getSeconds();
    if (m < 10) {m = '0' + m;}
    if (d < 10) {d = '0' + d;}
    if (H < 10) {H = '0' + H;}
    if (i < 10) {i = '0' + i;} 
    if (mi < 10) {mi = '0' + mi;} 
    var t = Y+'-'+m+'-'+d+' '+H+':'+i+':'+mi;
    return t;
}
function timest(value) {
    var date = new Date(value);
    Y = date.getFullYear(),
        m = date.getMonth() + 1,
        d = date.getDate();
        if (m < 10) {m = '0' + m;}
        if (d < 10) {d = '0' + d;}
    var t = Y+'-'+m+'-'+d;
    return t;
}
