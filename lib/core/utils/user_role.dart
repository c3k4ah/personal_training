enum UserRole {
  roleAdmin,
  roleUser,
  roleDelivery,
  roleCommercial,
}

UserRole userRoleFromString(String role) {
  switch (role) {
    case 'ROLE_ADMIN':
      return UserRole.roleAdmin;
    case 'ROLE_USER':
      return UserRole.roleUser;
    case 'ROLE_DELIVERY':
      return UserRole.roleDelivery;
    case 'ROLE_COMMERCIAL':
      return UserRole.roleCommercial;
    default:
      return UserRole.roleUser;
  }
}

String userRoleToString(UserRole role) {
  switch (role) {
    case UserRole.roleAdmin:
      return 'ROLE_ADMIN';
    case UserRole.roleUser:
      return 'ROLE_USER';
    case UserRole.roleDelivery:
      return 'ROLE_DELIVERY';
    case UserRole.roleCommercial:
      return 'ROLE_COMMERCIAL';
    default:
      return 'ROLE_USER';
  }
}

String userRoleToHuman(UserRole role) {
  switch (role) {
    case UserRole.roleAdmin:
      return 'Administrateur';
    case UserRole.roleUser:
      return '';
    case UserRole.roleDelivery:
      return 'Livreur';
    case UserRole.roleCommercial:
      return 'Commercial';
    default:
      return '';
  }
}
