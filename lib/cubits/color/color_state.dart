part of 'color_cubit.dart';

class ColorState extends Equatable {
  final Color color; // 관리할 상태를 보관할 필드 선언

  const ColorState({this.color = Colors.red});
  factory ColorState.initial() => const ColorState(color: Colors.red);

  ColorState copyWith({
    Color? color,
  }) {
    return ColorState(
      color: color ?? this.color,
    );
  }

  @override
  List<Object> get props => [color];

  @override
  bool get stringify => true;
}
