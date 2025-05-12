import 'package:url_launcher/url_launcher.dart';

class CommunicationHelper {
  static Future<void> openWhatsApp(String phoneNumber, String message) async {
    final Uri url = Uri.parse(
        "https://wa.me/$phoneNumber?text=${Uri.encodeComponent(message)}");
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw Exception("Не удалось открыть WhatsApp.");
    }
  }

  /// Открыть Telegram с указанным username
  static Future<void> openTelegram(String username) async {
    final Uri url = Uri.parse("https://t.me/$username");
    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      throw Exception("Не удалось открыть Telegram.");
    }
  }

  /// Совершить звонок на указанный номер
  static Future<void> makePhoneCall(String phoneNumber) async {
    final Uri url = Uri.parse("tel:$phoneNumber");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw Exception("Не удалось совершить звонок.");
    }
  }

  /// Отправить SMS на указанный номер с текстом
  static Future<void> sendSMS(String phoneNumber, String message) async {
    final Uri url =
        Uri.parse("sms:$phoneNumber?body=${Uri.encodeComponent(message)}");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw Exception("Не удалось отправить SMS.");
    }
  }

  static Future<void> openUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw Exception("Не удалось открыть URL.");
    }
  }

  static Future<void> openEmail(String email) async {
    final Uri uri = Uri.parse("mailto:$email");
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw Exception("Не удалось отправить email.");
    }
  }
}
