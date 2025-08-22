import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_adaptive_design/cubits/dotted_cubit/change_active_dot_cubit_state.dart';
import 'package:responsive_adaptive_design/cubits/dotted_cubit/change_active_dot_cubit.dart';

class DottedContainer extends StatefulWidget {
  const DottedContainer({super.key, required this.index});
  final int index;

  @override
  State<DottedContainer> createState() => _DottedContainerState();
}

class _DottedContainerState extends State<DottedContainer> {
  late bool isActive;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isActive = widget.index == 0; // Set the first dot as active by default
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocConsumer<ChangeActiveDotCubit, ChangeActiveDotCubitState>(
          listener: (context, state) {
            // TODO: implement listener
            if (state is ChangeActiveDotCubitStateChanged) {
              isActive = state.index == widget.index;
            }
          },
          builder: (context, state) {
            return InkWell(
              onTap: () {
                BlocProvider.of<ChangeActiveDotCubit>(
                  context,
                ).changeActiveDot(widget.index);
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                decoration:
                    isActive
                        ? BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color(0xff4EB7F2),
                        )
                        : ShapeDecoration(
                          color: Color(0xffE8E8E8),
                          shape: OvalBorder(),
                        ),
                width: isActive ? 32 : 8,
                height: 8,
              ),
            );
          },
        ),
        SizedBox(width: 8),
      ],
    );
  }
}
