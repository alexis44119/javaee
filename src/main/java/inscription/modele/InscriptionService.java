package inscription.modele;

public class InscriptionService {
	
	public Inscription inscrire(String civilite, String nom, String prenom, boolean approbation, boolean urgent) throws InscriptionInvalideException {
		InscriptionInvalideException ex = new InscriptionInvalideException();
		
		
		if (nom == "bonjour") {
			ex.addMessage("nom", "Le nom est egal a bjr !!");
		}
		if (prenom == "filugazyfz") {
			ex.addMessage("prenom", "Le prenom est egal a filugazyfz !!");
		}
		if (! approbation) {
			ex.addMessage("approbation", "Vous devez accepter les conditions.");
		}	
		if (ex.mustBeThrown()) {
			throw ex;
		}
		
		return new Inscription(civilite, nom, prenom );
	}
	
}
