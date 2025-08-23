import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_adaptive_design/cubits/list_tile_cubit.dart/change_active_list_tile_cubit.dart';
import 'package:responsive_adaptive_design/cubits/list_tile_cubit.dart/list_tile_states.dart';
import 'package:responsive_adaptive_design/models/item_model.dart';
import 'package:responsive_adaptive_design/utils/styles.dart';

class ListTileItem extends StatefulWidget {
  const ListTileItem({super.key, required this.item, required this.index});
  final ItemModel item;
  final int index;

  @override
  State<ListTileItem> createState() => _ListTileItemState();
}

class _ListTileItemState extends State<ListTileItem> {
  static const double defaultHeight = 48;
  late double height;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    height = widget.index == 0 ? defaultHeight : 0;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: defaultHeight,
        child: BlocConsumer<ChangeActiveListTileCubit, ListTileStates>(
          listener: (context, state) {
            // TODO: implement listener
            if (state is ListTileChangeActiveIndex) {
              height = state.newIndex == widget.index ? defaultHeight : 0;
            }
          },
          builder: (context, state) {
            return Row(
              children: [
                Expanded(
                  child: FittedBox(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.scaleDown,
                    child: SvgPicture.asset(widget.item.imagePath),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: FittedBox(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.scaleDown,
                    child: AnimatedDefaultTextStyle(
                      duration: Duration(milliseconds: 300),
                      style:
                          height == defaultHeight
                              ? Styles.styleBold16(context)
                              : Styles.styleRegular16(
                                context,
                              ).copyWith(color: Color(0xFF064061)),
                      child: Text(widget.item.title),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: 3.27,
                  height: height,
                  color: Color(0xFF4EB7F2),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}


// ListTile(
//         leading: FittedBox(
//           alignment: Alignment.centerLeft,
//           fit: BoxFit.scaleDown,
//           child: SvgPicture.asset(item.imagePath),
//         ),
//         title: FittedBox(
//           alignment: Alignment.centerLeft,
//           fit: BoxFit.scaleDown,
//           child: Text(
//             item.title,
//             style: Styles.styleRegular16(
//               context,
//             ).copyWith(color: Color(0xFF064061)),
//           ),
//         ),
//       )