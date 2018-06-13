<%@page pageEncoding="UTF-8" isErrorPage="true" contentType="text/html" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
  	<meta charset="UTF-8">
    <title>Inscription file d'attente</title>
    <style type="text/css">
    	form > div {
    		padding: .5em;
    	}
    	
    	div > label:first-child {
    		display: inline-block;
			min-width: 18em;
		}
		
		.error {
			color: red;
		}
    </style>
  </head>
  <body>

	<form method="post" accept-charset="utf-8">
		<div>
			<label for="civilite">Civilité : </label>
			Madame
			<input id="civilite" type="radio" name="civilite" value="madame" />
			Monsieur
			<input id="civilite" type="radio" name="civilite" value="<c:out value="monsieur" />"/>
			<span class="error"><c:out value="${errors['civilite']}"/></span>
		</div>
		<div>
			<label for="nom">Nom : </label>
			<input id="nom" name="nom" type="text" value="<c:out value="${param['nom']}" />"> 
			<span class="error"><c:out value="${errors['nom']}"/></span>
		</div>
		<div>
			<label for="prenom">Prenom : </label>
			<input id="prenom" name="prenom" type="text" value="<c:out value="${param['prenom']}" />"> 
			<span class="error"><c:out value="${errors['prenom']}"/></span>
		</div>
		<div>
			<input id="urgent" name="urgent" value="true" type="checkbox">
			<label for="urgent">S'agit t-il d'une urgence ?</label>
			<span class="error"><c:out value="${errors['urgent']}"/></span>
		</div>
		<div>
			<input id="approbation" name="approbation" value="true" type="checkbox">
			<label for="approbation">J'ai lu et approuvé les conditions générales de ce site</label>
			<span class="error"><c:out value="${errors['approbation']}"/></span>
		</div>
		<div>
			<button type="submit">S'inscrire</button>
		</div>
	</form>

	<div>
	  	<a href="<c:url value="/"/>">Retour à l'accueil</a>  
	</div>
  
  </body>
</html>