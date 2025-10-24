import 'package:flutter/material.dart';

void main() {
	runApp(const MyApp());
}

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	@override
	Widget build(BuildContext context) {
		return const MaterialApp(
			debugShowCheckedModeBanner: false,
			title: 'Flutter Demo',
			home: HomePage(),
		);
	}
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
	final String title;
	final List<Widget>? actions;
	final Color? backgroundColor;
	final bool centerTitle;

	const MyAppBar({
		super.key,
		required this.title,
		this.actions,
		this.backgroundColor,
		this.centerTitle = false,
	});

	@override
	Size get preferredSize => const Size.fromHeight(kToolbarHeight);

	@override
	Widget build(BuildContext context) {
		return AppBar(
			title: Text(title),
			centerTitle: centerTitle,
			backgroundColor: backgroundColor,
			actions: actions,
			elevation: 2,
		);
	}
}

class HomePage extends StatelessWidget {
	const HomePage({super.key});

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: MyAppBar(
				title: 'Home',
				centerTitle: true,
				backgroundColor: Colors.blueAccent,
				actions: [
					IconButton(
						icon: const Icon(Icons.person),
						color: Colors.white,
						tooltip: 'Profile',
						onPressed: () {
							ScaffoldMessenger.of(context).showSnackBar(
								const SnackBar(content: Text('Profile tapped')),
							);
						},
					),
					IconButton(
						icon: const Icon(Icons.park),
						color: Colors.white,
						tooltip: 'Tree',
						onPressed: () {
							ScaffoldMessenger.of(context).showSnackBar(
								const SnackBar(content: Text('Tree tapped')),
							);
						},
					),
					IconButton(
						icon: const Icon(Icons.ac_unit),
						color: Colors.white,
						tooltip: 'AC Unit',
						onPressed: () {
							ScaffoldMessenger.of(context).showSnackBar(
								const SnackBar(content: Text('AC Unit tapped')),
							);
						},
					),
					IconButton(
						icon: const Icon(Icons.search),
						tooltip: 'Search',
						onPressed: () {
							ScaffoldMessenger.of(context).showSnackBar(
								const SnackBar(content: Text('Search tapped')),
							);
						},
					),
					IconButton(
						icon: const Icon(Icons.settings),
						tooltip: 'Settings',
						onPressed: () {
							ScaffoldMessenger.of(context).showSnackBar(
								const SnackBar(content: Text('Settings tapped')),
							);
						},
					),
				],
			),
			body: const Center(
				child: Text(
					'Selamat datang di Home!',
					style: TextStyle(fontSize: 24),
				),
			),
		);
	}
}

