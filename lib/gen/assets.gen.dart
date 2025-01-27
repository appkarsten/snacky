/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/backgrounds
  $AssetsImagesBackgroundsGen get backgrounds =>
      const $AssetsImagesBackgroundsGen();

  /// File path: assets/images/burger.png
  AssetGenImage get burger => const AssetGenImage('assets/images/burger.png');

  /// File path: assets/images/cone_ice.png
  AssetGenImage get coneIce =>
      const AssetGenImage('assets/images/cone_ice.png');

  /// File path: assets/images/cup_cat.png
  AssetGenImage get cupCat => const AssetGenImage('assets/images/cup_cat.png');

  /// File path: assets/images/cup_chick.png
  AssetGenImage get cupChick =>
      const AssetGenImage('assets/images/cup_chick.png');

  /// File path: assets/images/cup_ice.png
  AssetGenImage get cupIce => const AssetGenImage('assets/images/cup_ice.png');

  /// Directory path: assets/images/details
  $AssetsImagesDetailsGen get details => const $AssetsImagesDetailsGen();

  /// File path: assets/images/star.png
  AssetGenImage get star => const AssetGenImage('assets/images/star.png');

  /// File path: assets/images/stick_ice.png
  AssetGenImage get stickIce =>
      const AssetGenImage('assets/images/stick_ice.png');

  /// Directory path: assets/images/svg
  $AssetsImagesSvgGen get svg => const $AssetsImagesSvgGen();

  /// List of all assets
  List<AssetGenImage> get values =>
      [burger, coneIce, cupCat, cupChick, cupIce, star, stickIce];
}

class $AssetsImagesBackgroundsGen {
  const $AssetsImagesBackgroundsGen();

  /// File path: assets/images/backgrounds/bg_mainscreen.png
  AssetGenImage get bgMainscreen =>
      const AssetGenImage('assets/images/backgrounds/bg_mainscreen.png');

  /// File path: assets/images/backgrounds/bg_startscreen.png
  AssetGenImage get bgStartscreen =>
      const AssetGenImage('assets/images/backgrounds/bg_startscreen.png');

  /// List of all assets
  List<AssetGenImage> get values => [bgMainscreen, bgStartscreen];
}

class $AssetsImagesDetailsGen {
  const $AssetsImagesDetailsGen();

  /// File path: assets/images/details/cut_card.png
  AssetGenImage get cutCard =>
      const AssetGenImage('assets/images/details/cut_card.png');

  /// File path: assets/images/details/snack_snack.png
  AssetGenImage get snackSnack =>
      const AssetGenImage('assets/images/details/snack_snack.png');

  /// List of all assets
  List<AssetGenImage> get values => [cutCard, snackSnack];
}

class $AssetsImagesSvgGen {
  const $AssetsImagesSvgGen();

  /// File path: assets/images/svg/Cancel.svg
  SvgGenImage get cancel => const SvgGenImage('assets/images/svg/Cancel.svg');

  /// File path: assets/images/svg/Gluten Free.svg
  SvgGenImage get glutenFree =>
      const SvgGenImage('assets/images/svg/Gluten Free.svg');

  /// File path: assets/images/svg/Heart Filled.svg
  SvgGenImage get heartFilled =>
      const SvgGenImage('assets/images/svg/Heart Filled.svg');

  /// File path: assets/images/svg/Heart.svg
  SvgGenImage get heart => const SvgGenImage('assets/images/svg/Heart.svg');

  /// File path: assets/images/svg/Kcal.svg
  SvgGenImage get kcal => const SvgGenImage('assets/images/svg/Kcal.svg');

  /// File path: assets/images/svg/Low Fat.svg
  SvgGenImage get lowFat => const SvgGenImage('assets/images/svg/Low Fat.svg');

  /// File path: assets/images/svg/Lunch.svg
  SvgGenImage get lunch => const SvgGenImage('assets/images/svg/Lunch.svg');

  /// File path: assets/images/svg/Minus.svg
  SvgGenImage get minus => const SvgGenImage('assets/images/svg/Minus.svg');

  /// File path: assets/images/svg/Plus.svg
  SvgGenImage get plus => const SvgGenImage('assets/images/svg/Plus.svg');

  /// File path: assets/images/svg/Star Filled.svg
  SvgGenImage get starFilled =>
      const SvgGenImage('assets/images/svg/Star Filled.svg');

  /// File path: assets/images/svg/Star.svg
  SvgGenImage get star => const SvgGenImage('assets/images/svg/Star.svg');

  /// File path: assets/images/svg/Sugar Free.svg
  SvgGenImage get sugarFree =>
      const SvgGenImage('assets/images/svg/Sugar Free.svg');

  /// File path: assets/images/svg/􁑐.svg
  SvgGenImage get a => const SvgGenImage('assets/images/svg/􁑐.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        cancel,
        glutenFree,
        heartFilled,
        heart,
        kcal,
        lowFat,
        lunch,
        minus,
        plus,
        starFilled,
        star,
        sugarFree,
        a
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
