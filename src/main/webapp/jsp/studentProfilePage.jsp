<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="teammates.ui.controller.StudentProfilePageData" %>
<%@ page import="teammates.common.util.Const" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreServiceFactory" %>
<%@ page import="com.google.appengine.api.blobstore.UploadOptions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="t" %>
<%@ taglib tagdir="/WEB-INF/tags/student" prefix="ts" %>
<c:set var="jsIncludes">
    <script type="text/javascript" src="/js/student.js"></script>
    <script type="text/javascript" src="/js/studentProfile.js"></script>
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/Jcrop/css/jquery.Jcrop.min.css">
    <script type="text/javascript" src="/Jcrop/js/jquery.Jcrop.min.js"></script>
</c:set>
<ts:studentPage pageTitle="TEAMMATES - Student Profile" bodyTitle="Student Profile" jsIncludes="${jsIncludes}">
    <br>
    <t:statusMessage />
    <br>
    <ts:uploadPhotoModal googleId="${data.googleId}" pictureUrl="${data.pictureUrl}" pictureKey="${data.pictureKey}" />
    <ts:studentProfileDiv name="${data.name}" shortName="${data.shortName}" email="${data.email}" institute="${data.institute}"
                          nationality="${data.nationality}" gender="${data.gender}" moreInfo="${data.moreInfo}"
                          googleId="${data.googleId}" pictureUrl="${data.pictureUrl}" editPicture="${data.editPicture}" />
</ts:studentPage>