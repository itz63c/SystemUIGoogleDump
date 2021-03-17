.class Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;
.super Ljava/lang/Object;
.source "SplashscreenContentDrawer.java"

# interfaces
.implements Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ColorTester;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComplexDrawableTester"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;
    }
.end annotation


# static fields
.field private static final TRANSPARENT_FILTER_QUANTIZER:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;


# instance fields
.field private final mFilterTransparent:Z

.field private final mPalette:Lcom/android/internal/graphics/palette/Palette;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 490
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$1;)V

    sput-object v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;->TRANSPARENT_FILTER_QUANTIZER:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/Drawable;Z)V
    .locals 7

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 495
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 496
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/16 v3, 0x28

    if-lez v1, :cond_1

    if-gtz v2, :cond_0

    goto :goto_0

    .line 503
    :cond_0
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 504
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 507
    :goto_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 508
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 509
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 510
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 512
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 514
    new-instance p1, Lcom/android/internal/graphics/palette/Palette$Builder;

    invoke-direct {p1, v1}, Lcom/android/internal/graphics/palette/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x5

    .line 515
    invoke-virtual {p1, v0}, Lcom/android/internal/graphics/palette/Palette$Builder;->maximumColorCount(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Builder;->clearFilters()Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object p1

    .line 519
    iput-boolean p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;->mFilterTransparent:Z

    if-eqz p2, :cond_2

    .line 521
    sget-object p2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;->TRANSPARENT_FILTER_QUANTIZER:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;

    invoke-virtual {p1, p2}, Lcom/android/internal/graphics/palette/Palette$Builder;->setQuantizer(Lcom/android/internal/graphics/palette/Quantizer;)Lcom/android/internal/graphics/palette/Palette$Builder;

    .line 523
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;->mPalette:Lcom/android/internal/graphics/palette/Palette;

    .line 524
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method


# virtual methods
.method public getDominantColor()I
    .locals 0

    .line 539
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;->mPalette:Lcom/android/internal/graphics/palette/Palette;

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette;->getDominantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 541
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result p0

    return p0

    :cond_0
    const/high16 p0, -0x1000000

    return p0
.end method

.method public isComplexColor()Z
    .locals 1

    .line 534
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;->mPalette:Lcom/android/internal/graphics/palette/Palette;

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGrayscale()Z
    .locals 3

    .line 548
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;->mPalette:Lcom/android/internal/graphics/palette/Palette;

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 550
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 551
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 552
    invoke-virtual {v2}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->access$1300(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public nonTransparentRatio()F
    .locals 0

    .line 529
    iget-boolean p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;->mFilterTransparent:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;->TRANSPARENT_FILTER_QUANTIZER:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;->access$1500(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;)F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method
