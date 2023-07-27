<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-tiles.tld" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="im"%>
<%@ taglib uri="/WEB-INF/functions.tld" prefix="imf" %>

<!DOCTYPE html>
<html>
  <head>
    <style>
    #release-updates {
      margin: 10px 20px 10px 20px;
    }
    #new-release-note {
      font-size:15px;
    }
    .note_header {
      line-height: 1.8;
      margin-bottom: 10px;
    }
    .note_header h5 {
      font-style: italic;
    }
    .note_desc {
      font-size: 13px;
      margin-left: 20px;
    }
    </style>
  </head>
  <body>
    <div id="content-wrap">
      <div id="release-updates">
        <div id="new-release-note">
          <p>AquaMine has been updated to the latest version 1.2. Please see the data sources page for a full list of data and their versions.</p>
          <p>If you have any questions, please see our docs and youtube videos. Please do not hesitate to contact us should you require any further assistance. For all types of help and feedback email <c:out value="${WEB_PROPERTIES['feedback.destination']}"/>.</p>
        </div>
        <br/>
        <div class="note_header">
          <h3>AquaMine v1.2 release</h3>
          <h5>July 2023</h5>
        </div>
        <div class="note_desc">
          <h4>New species</h4>
          <ul>
            <li><i>Coregonus clupeaformis</i></li>
            <li><i>Etheostoma cragini</i></li>
            <li><i>Haliotis rufescens</i></li>
            <li><i>Hippoglossus stenolepis</i></li>
            <li><i>Lepisosteus oculatus</i></li>
            <li><i>Mugil cephalus</i></li>
            <li><i>Oncorhynchus gorbuscha</i></li>
            <li><i>Oncorhynchus keta</i></li>
            <li><i>Procambarus clarkii</i></li>
          </ul>
          <br/>
        </div>
        <br/>
        <div class="note_header">
          <h3>AquaMine v1.1 release</h3>
          <h5>May 2022</h5>
        </div>
        <br/>
      </div>
    </div>
  </body>
</html>

