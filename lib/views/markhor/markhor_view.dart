part of acp.views;

class MarkhorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Markhor'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text('Workstation'),
            ),
            ListButton(
              label: 'Observatory',
              iconData: Icons.search,
              callback: () => Navigator.of(context)
                  .pushNamed('/markhor/workstation/observatory'),
            ),
            ListButton(
              label: 'Profiling',
              iconData: Icons.fact_check,
              callback: () => Navigator.of(context)
                  .pushNamed('/markhor/workstation/profiling'),
            ),
            ListButton(
              label: 'Network',
              iconData: Icons.wifi,
              callback: () => Navigator.of(context)
                  .pushNamed('/markhor/workstation/network'),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text('Workstation'),
        ],
      ),
    );
  }
}

class ListButton extends StatelessWidget {
  final String label;
  final IconData iconData;
  final void Function() callback;

  const ListButton({
    required this.label,
    required this.iconData,
    required this.callback,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        iconData,
        color: Theme.of(context).primaryColor,
      ),
      title: TextButton(
        onPressed: () => callback(),
        child: Text(label),
      ),
    );
  }
}
