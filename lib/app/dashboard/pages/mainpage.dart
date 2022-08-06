import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPage();
}

class _DashboardPage extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [basePad(context), mainContent(context)],
                  ),
                ),
                const Positioned.fill(
                    top: 46,
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 42),
                        child: Text(
                          "Welkom, someone!",
                          style: TextStyle(
                              color: Color(0xFFFFFFFFF),
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ))),
                Positioned.fill(
                    top: 114,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: dateBox(context),
                    )),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.architecture_outlined),
            label: "Schaffolds",
            backgroundColor: Color(0xFFF1F1F1)),
        BottomNavigationBarItem(
            icon: Icon(Icons.assignment_outlined),
            label: "Rundowns",
            backgroundColor: Color(0xFFF1F1F1)),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Profile",
            backgroundColor: Color(0xFFF1F1F1))
      ]),
    ));
  }

  Widget basePad(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 202,
          child: const DecoratedBox(
            decoration: BoxDecoration(color: Color(0xFF3479FF)),
          ),
        ),
      ],
    );
  }

  Widget dateBox(BuildContext context) {
    return Container(
      width: 330,
      height: 131,
      decoration: BoxDecoration(
          color: const Color(0xFFFFFFFF),
          border: Border.all(
              width: 1.0,
              color: const Color(0xFFC5C5C5),
              style: BorderStyle.solid)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () => debugPrint("clicked back"),
                  icon: const Icon(Icons.chevron_left)),
              const Text(
                "Week 7, Feb 2022",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              IconButton(
                  onPressed: () => debugPrint("clicked right"),
                  icon: const Icon(Icons.chevron_right)),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                dateButton(12),
                dateButton(13),
                dateButton(14),
                dateButton(15),
                dateButton(16),
                dateButton(17),
                dateButton(18),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget dateButton(int date) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: SizedBox(
          width: 32,
          height: 48,
          child: DecoratedBox(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(4)),
                  border: Border.all(
                      color: const Color(0xFF000000),
                      width: 1,
                      style: BorderStyle.solid),
                  shape: BoxShape.rectangle),
              child: TextButton(
                  onPressed: () => debugPrint("date $date"),
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      date.toString(),
                      style: const TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ))),
        ));
  }

  Widget mainContent(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 60, right: 20, left: 20),
      child: Column(
        children: [title(context), noDataCard(context)],
      ),
    );
  }

  Widget title(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Today Rundowns",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () => debugPrint("created"),
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  primary: const Color(0xFF3479FF),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.add, size: 16),
                    Text(
                      "Create",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ))
          ],
        ),
        const Divider(
          color: Color(0xFF9A9A9A),
          thickness: 1,
        )
      ],
    );
  }

  Widget noDataCard(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 245,
        child: DecoratedBox(
          decoration: BoxDecoration(
              border: Border.all(
                  color: const Color(0xFF9A9A9A),
                  width: 1,
                  style: BorderStyle.solid),
              borderRadius: const BorderRadius.all(Radius.circular(4))),
          child: Container(
            padding: const EdgeInsets.all(48),
            child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: const [
                    Icon(
                      Icons.manage_search,
                      size: 64,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "We've searched so far, but found nothing...",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )
                  ],
                )),
          ),
        ));
  }
}
