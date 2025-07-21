
class RegisterFailure {
  final String message;

  const RegisterFailure([this.message = "Une erreur s'est produite lors de l'enregistrement. Veuillez réessayer."]);

  factory RegisterFailure.code(String code) {
    switch (code) {
      case 'email-already-in-use':
        return const RegisterFailure("L'adresse e-mail est déjà utilisée par un autre compte.");
      case 'invalid-email':
        return const RegisterFailure("L'adresse e-mail fournie n'est pas valide.");
      case 'operation-not-allowed':
        return const RegisterFailure("L'opération n'est pas autorisée. Veuillez contacter le support.");
      case 'weak-password':
        return const RegisterFailure("Le mot de passe est trop faible. Veuillez choisir un mot de passe plus fort.");
      default:
        return const RegisterFailure();
    }
  }
}