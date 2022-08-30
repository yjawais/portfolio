part of 'contact.dart';

class ContactDesktop extends StatelessWidget {
  const ContactDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Space.all(1, 1),
      child: Column(
        children: [
          const CustomSectionHeading(
            text: "\nGet in Touch",
          ),
          const CustomSectionSubHeading(
            text: "Let's build something together :)\n\n",
          ),
          Space.y!,
          Wrap(
              alignment: WrapAlignment.center,
              spacing: MediaQuery.of(context).size.width * 0.05,
            runSpacing: MediaQuery.of(context).size.height * 0.05,
              children: ContactUtils.contactIcon
                  .asMap()
                  .entries
                  .map((e) => WidgetAnimator(
                        child: _ServiceCard(
                          serviceIcon: ContactUtils.contactIcon[e.key],
                          serviceTitle: ContactUtils.titles[e.key],
                          serviceDescription: ContactUtils.details[e.key],
                        ),
                      ))
                  .toList()),
        ],
      ),
    );
  }
}
