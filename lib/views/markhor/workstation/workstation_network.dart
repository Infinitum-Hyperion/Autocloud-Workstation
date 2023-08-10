part of acp.views;

class MKWorkstationNetworkView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Autocloud'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 400,
            height: 600,
            color: Colors.red,
          ),
          Expanded(
            child: Container(
              height: 600,
              color: Colors.amber,
            ),
          ),
        ],
      ),
    );
  }
}
