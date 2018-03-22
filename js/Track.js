/// <reference name="MicrosoftAjax.js"/>
function TrackCall(urlTrack) {
    var query = location.search;

    if (query.indexOf("utm_source") < 0 && window.defaultUtmFromFolder != "") { query = "?" + window.defaultUtmFromFolder; };

    if (query == "") {
        query = "?";
    } else {
        query += "&";
    };

    var documentReferrer = escape(document.referrer).replace(/\//g, "%2F");

    query += "referrer=" + documentReferrer;

    $.get(urlTrack + query);
}


$(document).ready(function () {
    TrackCall("/Site/Track.aspx");
	try
	{
		var fullurl = window.location.href;
		if(fullurl.indexOf("vtexcommercebeta") > 0 || fullurl.indexOf("vtexlocal") > 0)
		{
            TrackCallSession("/api/session-manager/pub/sessions");
            
            if (window.jQuery) {  
                // jQuery is loaded  
                $(window).on('authenticatedUser.vtexid', function() {
                    TrackCallSession("/api/session-manager/pub/sessions");
                })
            }
		}
	}
	catch(e)
	{}
});

function TrackCallSession(urlTrack) {
    var query = "";
    if (location.search.indexOf("utm_source") < 0 && window.defaultUtmFromFolder != "") { query = "?" + window.defaultUtmFromFolder; };

    var documentReferrer = escape(document.referrer).replace(/\//g, "%2F");
    if(query != "") query += "&";
    query += "referrer=" + documentReferrer;

    var vtexIdCookie = findCookieByName("VtexIdclientAutCookie_");
    if(query != "") query += "&";
    query += "VtexIdclientAutCookie=" + vtexIdCookie;

    $.get(urlTrack + "?" + query);
}

function decodeCookie() {
  var cookieParts = document.cookie.split(";"), 
  cookies = {};
  
  for (var i = 0; i < cookieParts.length; i++) {
    var name_value = cookieParts[i],
        equals_pos = name_value.indexOf("="),
        name       = unescape( name_value.slice(0, equals_pos) ).trim(),
        value      = unescape( name_value.slice(equals_pos + 1) );
  
    cookies[":" + name] = value;
  }
  return cookies;
}

function findCookieByName(searchWord) {
  var cookies = decodeCookie();
  
  for (name in cookies) {
    var value = cookies[name];
    if (name.indexOf(":" + searchWord) == 0) {
      return value;
    }
  }
}
