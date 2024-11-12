import 'package:equatable/equatable.dart';

class HomeContentState extends Equatable {
  final bool onProfileHover;
  final bool onWorksHover;
  final bool onContactsHover;

  const HomeContentState(
      {this.onProfileHover = false,
      this.onWorksHover = false,
      this.onContactsHover = false});

  HomeContentState copyWith({
    bool? onProfileHover,
    bool? onWorksHover,
    bool? onContactsHover,
  }) {
    return HomeContentState(
      onProfileHover: onProfileHover ?? this.onProfileHover,
      onWorksHover: onWorksHover ?? this.onWorksHover,
      onContactsHover: onContactsHover ?? this.onContactsHover,
    );
  }

  @override
  List<Object?> get props => [
        onProfileHover,
        onWorksHover,
        onContactsHover,
      ];
}
