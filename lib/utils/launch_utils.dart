import 'package:url_launcher/url_launcher.dart';

launchUrlGeoSender(String lat, String lng) async {
  Uri link = Uri.parse('https://www.google.com/maps/search/?api=1&query=$lat,$lng');
  await canLaunchUrl(link) ? await launchUrl(link) : throw 'Could not launchUrl $link';
}

launchUrlEmailSender(String email) async {
  Uri link = Uri(
    scheme: 'mailto',
    path: email,
  );
  await canLaunchUrl(link) ? await launchUrl(link) : throw 'Could not launchUrl $link';
}

Future openEmailSupport(String supportEmail, String appName) async {
  Uri link = Uri(
    scheme: 'mailto',
    path: '$supportEmail?subject=About $appName App&body=',
  );
  await canLaunchUrl(link) ? await launchUrl(link) : throw 'Could not launchUrl $link';
}

launchUrlPhoneDialer(String phone) async {
  Uri link = Uri(
    scheme: 'tel',
    path: phone,
  );
  await canLaunchUrl(link) ? await launchUrl(link) : throw 'Could not launchUrl $link';
}

launchURL(String slink) async {
  Uri link = Uri.parse(slink);
  await canLaunchUrl(link) ? await launchUrl(link) : throw 'Could not launch $link';
}
