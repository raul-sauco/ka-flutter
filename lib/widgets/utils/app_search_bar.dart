import 'dart:async';

import 'package:flutter/material.dart';

/// Search bar widget to be used in the AppBar
class AppSearchBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final Function searchCallback;
  AppSearchBar({this.title = '', this.searchCallback});

  @override
  _AppSearchBarState createState() => _AppSearchBarState();

  @override
  Size get preferredSize => Size.fromHeight(56.0);
}

class _AppSearchBarState extends State<AppSearchBar> {
  final _searchController = TextEditingController();
  Timer _debounce;
  String _lastQuery = '';
  bool _searching = false;

  // Debounce search example from StackOverflow.
  // https://stackoverflow.com/a/52930197/2557030
  _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      // Only notify the parent if we are currently in "search mode".
      String newQuery = _searchController.text.trim();
      if (_searching && newQuery != _lastQuery) {
        widget.searchCallback(_searchController.text);
        _lastQuery = newQuery;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        _searching
            ? IconButton(
                icon: Icon(Icons.backspace_outlined),
                onPressed: () {
                  setState(() {
                    _searching = false;
                    _searchController.text = '';
                    // Notify the parent if clearing results
                    if (_lastQuery != '') {
                      widget.searchCallback('');
                    }
                  });
                })
            : IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  setState(() {
                    _searching = true;
                  });
                },
              ),
      ],
      title: _searching
          ? TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search...',
                filled: true,
                fillColor: Colors.white70,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            )
          : Text(widget.title),
    );
  }
}
