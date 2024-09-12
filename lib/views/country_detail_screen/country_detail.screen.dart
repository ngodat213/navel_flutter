import 'package:flutter/material.dart';
import 'package:freal_flutter/core/base/base.view.dart';
import 'package:freal_flutter/core/constants/constants.dart';
import 'package:freal_flutter/views/country_detail_screen/getx/country_detail.controller.dart';

class CountryDetailScreen extends BaseView<CountryDetailController> {
  CountryDetailScreen({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) {
    // TODO: implement appBar
    throw UnimplementedError();
  }

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image with overlay
          Positioned.fill(
            child: Image.asset(
              'lib/assets/images/thumnail.png',
              fit: BoxFit.cover,
            ),
          ),
          // Gradient overlay
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.7)
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          // Content
          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                // Top Bar
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.arrow_back, color: AppColors.colorWhite),
                      Icon(Icons.menu, color: AppColors.colorWhite),
                    ],
                  ),
                ),
                const Spacer(),
                // Country Title and Details
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 16),
                          SizedBox(width: 5),
                          Text(
                            "Top Recommended Country",
                            style: TextStyle(
                              color: AppColors.colorWhite70,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Indonesia",
                        style: TextStyle(
                          color: AppColors.colorWhite,
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.location_on,
                              color: AppColors.colorWhite, size: 16),
                          SizedBox(width: 5),
                          Text(
                            "100+ Destinations",
                            style: TextStyle(
                              color: AppColors.colorWhite70,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Indonesia, officially the Republic of Indonesia is a country in Southeast Asia and Oceania between the Indian and Pacific oceans.",
                        style: TextStyle(
                          color: AppColors.colorWhite70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                // Cities and Destinations
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 30),
                    decoration: const BoxDecoration(
                      color: Color(0xFF0E5253),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Cities and Destinations Tabs
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Cities",
                                style: TextStyle(
                                  color: AppColors.colorWhite,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Destination",
                                style: TextStyle(
                                  color: AppColors.colorWhite54,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        // Horizontal List of Destination Cards
                        Expanded(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            children: const [
                              DestinationCard(
                                title: "Bali",
                                subtitle: "Indonesia",
                                imageUrl: 'lib/assets/images/thumnail.png',
                              ),
                              SizedBox(width: 20),
                              DestinationCard(
                                title: "Jogja",
                                subtitle: "Indonesia",
                                imageUrl: 'lib/assets/images/thumnail.png',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  const DestinationCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 10,
            top: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Top Recommended",
                  style: TextStyle(
                    color: AppColors.colorWhite,
                    fontSize: 12,
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    color: AppColors.colorWhite,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Icon(Icons.location_on,
                        color: AppColors.colorWhite, size: 16),
                    const SizedBox(width: 5),
                    Text(
                      subtitle,
                      style: const TextStyle(
                          color: AppColors.colorWhite, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: ClipOval(
              child: Material(
                color: Colors.brown.withOpacity(0.8), // Button color
                child: InkWell(
                  splashColor: Colors.brown, // Splash color
                  onTap: () {},
                  child: const SizedBox(
                    width: 36,
                    height: 36,
                    child: Icon(
                      Icons.arrow_forward,
                      color: AppColors.colorWhite,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
