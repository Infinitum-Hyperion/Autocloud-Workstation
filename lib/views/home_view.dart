part of acp.views;

const List<String> services = [
  'Markhor',
  'Athena',
  'Palladium',
  'Vabrian',
  'Mochaccino',
];

class ACPHomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Autocloud'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 40,
          crossAxisSpacing: 40,
          children: List<Widget>.generate(services.length, (int i) {
            return GridTile(
              child: Center(
                child: GestureDetector(
                  onTap: services[i] == 'Markhor'
                      ? () => Navigator.of(context).pushNamed('/markhor')
                      : null,
                  child: Container(
                    width: 400,
                    height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5, left: 5),
                        child: Text(
                          services[i],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
