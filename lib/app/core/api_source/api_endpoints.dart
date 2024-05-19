class ApiEndpoints {
  // Base URL
  static const String baseUrl =
      'https://nodejs-server-jumbo-foods.onrender.com'; // Render Hosted Link

  // Other API Endpoints
  static const String createMenuItem = '/create-menu-item';
  static const String getAllMenuItems = '/all-menu-items';
  static const String getAllMenuItemsByCategory = '/menu-items';
  static const String updateMenuItem = '/update-menu-item';
  static const String deleteMenuItem = '/delete-menu-item';

  // Connection Timeout & Receive Timeout Durations
  static const Duration connectionTimeout = Duration(milliseconds: 5000);
  static const Duration receiveTimeout = Duration(milliseconds: 5000);
}
