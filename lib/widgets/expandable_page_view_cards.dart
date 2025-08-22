import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_adaptive_design/cubits/dotted_cubit/change_active_dot_cubit.dart';
import 'package:responsive_adaptive_design/cubits/dotted_cubit/change_active_dot_cubit_state.dart';
import 'package:responsive_adaptive_design/widgets/card_widget.dart';

class ExpandablePageViewCards extends StatefulWidget {
  const ExpandablePageViewCards({super.key});

  @override
  State<ExpandablePageViewCards> createState() =>
      _ExpandablePageViewCardsState();
}

class _ExpandablePageViewCardsState extends State<ExpandablePageViewCards> {
  final List<CardWidget> cardWidgets = [
    CardWidget(
      title: "Name card",
      subtitle: "Syah Bandi",
      cardNumber: "0918 8124 0042 8129",
      date: "12/20 - 124",
    ),
    CardWidget(
      title: "Business card",
      subtitle: "Alex Johnson",
      cardNumber: "1234 5678 9012 3456",
      date: "11/23 - 567",
    ),
    CardWidget(
      title: "Gift card",
      subtitle: "Maria Lee",
      cardNumber: "4321 8765 2109 6543",
      date: "08/25 - 890",
    ),
  ];
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(_pageListener);
  }

  void _pageListener() {
    print("Page changed: ${pageController.page?.round()}");
    BlocProvider.of<ChangeActiveDotCubit>(
      context,
    ).changeActiveDot(pageController.page?.round() ?? 0);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.removeListener(_pageListener);
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChangeActiveDotCubit, ChangeActiveDotCubitState>(
      listener: (context, state) async {
        if (state is ChangeActiveDotCubitStateChanged) {
          pageController.removeListener(_pageListener);

          await animateToPageWithIndex(state);

          pageController.addListener(_pageListener);
        }
      },
      builder: (context, state) {
        return ExpandablePageView.builder(
          controller: pageController,
          itemCount: cardWidgets.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: cardWidgets[index],
            );
          },
        );
      },
    );
  }

  Future<void> animateToPageWithIndex(
    ChangeActiveDotCubitStateChanged state,
  ) async {
    await pageController.animateToPage(
      state.index,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOutCubic,
    );
  }
}
