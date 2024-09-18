class TabbarItem {
  TabbarItem({
    required this.text,
  });

  final String text;

  static List<TabbarItem> buttomTabbarItems = [
    TabbarItem(text: "Destination"),
    TabbarItem(text: "Contries"),
    TabbarItem(text: "Cities"),
  ];
}
