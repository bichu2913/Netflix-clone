import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/application/core/constant.dart';
import 'package:netflix/application/search/search_bloc.dart';
import 'package:netflix/presentation/search/widget/search_result.dart';
import 'package:netflix/presentation/search/widget/searchi_dle.dart';

import '../../application/core/colors/colors.dart';
import '../../application/core/style1.dart';
import '../../domain/core/debouncer/debouncer.dart';

class Search extends StatelessWidget {
   Search({super.key});
   final _debouncer = Debouncer(milliseconds: 1 * 1000);
  @override
 Widget build(BuildContext context) {
    //it will call after the ui building
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const Initialize());
    });
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              backgroundColor: searchBackColor,
              prefixIcon: searchPrefixStyle,
              suffixIcon: searchSuffixStyle,
              style: searchTextStyle,
              onChanged: (value) {
                 BlocProvider.of<SearchBloc>(context).add(
                    SearchMovie(movieQuery: value),
                 );
                
              },
            ),
            kHeight,
             Expanded(child: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                if (state.searchResultList.isEmpty) {
                  return const SearchIdleWidget();
                } else {
                  return const SearchResultWidget();
                }
              },
            ))
          ],
        ),
      )),
    );
  }
}