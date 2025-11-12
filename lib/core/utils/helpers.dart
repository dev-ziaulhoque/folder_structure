import 'shared_resources.dart';


class Helper {
  /// Format DateTime to readable string
  static String formatDate(DateTime date, {String pattern = 'dd-MM-yyyy'}) {
    return DateFormat(pattern).format(date);
  }

  /// Show a simple SnackBar
  static void showSnackBar(BuildContext context, String message,
      {Color backgroundColor = Colors.black}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: backgroundColor,
        duration: const Duration(seconds: 2),
      ),
    );
  }

  /// Capitalize first letter of a string
  static String capitalize(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }

  /// Convert string to title case
  static String titleCase(String text) {
    if (text.isEmpty) return text;
    return text
        .split(' ')
        .map((word) => capitalize(word))
        .join(' ');
  }

  /// Check if string is null or empty
  static bool isNullOrEmpty(String? text) {
    return text == null || text.trim().isEmpty;
  }

  /// Show confirmation dialog
  static Future<bool> showConfirmationDialog(
      BuildContext context, {
        String title = "Are you sure?",
        String confirmText = "Yes",
        String cancelText = "No",
      }) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text(cancelText),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text(confirmText),
          ),
        ],
      ),
    );
    return result ?? false;
  }
}
