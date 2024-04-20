import 'package:flutter/material.dart';
import 'package:jumbo_foods_app/app/features/users_panel/search/presentation/pages/search_page.dart';

import '../../../core/constants/assets_path/assets_path.dart';

PreferredSizeWidget appBar(BuildContext context) {
  return AppBar(
    // elevation: 5,
    toolbarHeight: 65,
    leadingWidth: 110,
    leading: Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 0, top: 10),
        child: Center(
          child: Image.asset(
            AssetsPaths.titleLogo,
            fit: BoxFit.cover,
          ),
        ),
      ),
    ),
    actions: [
      Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 14),
          child: SizedBox(
            child: ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 0)),
                  maximumSize: MaterialStateProperty.all(const Size(110, 50)),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SearchPage(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Search'),
                      Icon(
                        Icons.search,
                        size: 22.0,
                      ),
                    ],
                  ),
                )),
          ),
        ),
      )
    ],
  );
}
