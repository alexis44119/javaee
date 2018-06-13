<%@page pageEncoding="UTF-8" isErrorPage="true" contentType="text/html"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java EE</title>
</head>
<body>
	<div>
		Bonjour 
		 <c:choose>
         <c:when test="${civilite == 'madame'}">
         Madame
         </c:when>         
         <c:otherwise>
            Monsieur
         </c:otherwise>
      </c:choose>
		<c:out value="${inscription.prenom}" />
		<c:out value="${inscription.nom}" />
		, vous avez bien été inscrit(e) en file d'attente le
		<fmt:formatDate type="date" dateStyle="long"
			value="${inscription.date}" />
		à
		<fmt:formatDate type="time" value="${inscription.date}" />. 
		<c:choose>
			<c:when test="${urgent == 'true'}">Votre rdv a bien été enregistré comme étant urgent.</c:when>
			<c:otherwise>
            .
         </c:otherwise>
		</c:choose>
	</div>
	<div>
		<a href="<c:url value="/"/>">Retour à l'accueil</a>
	</div>
</body>
</html>
