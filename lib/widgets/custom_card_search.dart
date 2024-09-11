part of 'widgets.dart';

class CustomCardSearch extends StatelessWidget {
  const CustomCardSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        width: 300,
        height: 180,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('lib/assets/images/thumnail.png'),
              fit: BoxFit.cover),
        ),
        child: Stack(
          children: [
            // Rating Badge
            Positioned(
              top: 10,
              left: 10,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    SizedBox(width: 4),
                    Text(
                      "4.9",
                      style: TextStyle(
                        color: AppColors.colorWhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Bookmark Icon
            const Positioned(
              top: 10,
              right: 10,
              child: Icon(
                Icons.bookmark_border,
                color: AppColors.colorWhite,
              ),
            ),
            // Title and Subtitle
            const Positioned(
              bottom: 30,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Zion National Park",
                    style: TextStyle(
                      color: AppColors.colorWhite,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: AppColors.colorWhite,
                        size: 16,
                      ),
                      SizedBox(width: 4),
                      Text(
                        "Springdale, US",
                        style: TextStyle(
                          color: AppColors.colorWhite70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Action Button
            Positioned(
              bottom: 10,
              right: 10,
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
      ),
    );
  }
}
