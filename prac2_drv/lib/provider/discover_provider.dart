import 'package:flutter/material.dart';

import '../entity_domain/logic.dart';

class DiscoverProvider extends ChangeNotifier {
    List<ImagePost> _imagePosts = [];
    bool _isLoaded = false;
}
