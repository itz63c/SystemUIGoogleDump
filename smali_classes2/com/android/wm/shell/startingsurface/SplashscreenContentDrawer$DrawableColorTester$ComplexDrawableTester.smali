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

    .line 552
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$1;)V

    sput-object v0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;->TRANSPARENT_FILTER_QUANTIZER:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;

    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/Drawable;Z)V
    .locals 9

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x20

    const-string v2, "ComplexDrawableTester"

    .line 556
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 557
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 558
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 559
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    const/16 v5, 0x28

    if-lez v3, :cond_1

    if-gtz v4, :cond_0

    goto :goto_0

    .line 566
    :cond_0
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 567
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v8, v5

    move v5, v3

    move v3, v8

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    .line 570
    :goto_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 571
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 572
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 573
    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 575
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 581
    iput-boolean p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;->mFilterTransparent:Z

    const/4 p1, 0x5

    if-eqz p2, :cond_2

    .line 583
    new-instance p2, Lcom/android/internal/graphics/palette/Palette$Builder;

    sget-object v2, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;->TRANSPARENT_FILTER_QUANTIZER:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;

    invoke-direct {p2, v3, v2}, Lcom/android/internal/graphics/palette/Palette$Builder;-><init>(Landroid/graphics/Bitmap;Lcom/android/internal/graphics/palette/Quantizer;)V

    .line 584
    invoke-virtual {p2, p1}, Lcom/android/internal/graphics/palette/Palette$Builder;->maximumColorCount(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object p1

    goto :goto_2

    .line 586
    :cond_2
    new-instance p2, Lcom/android/internal/graphics/palette/Palette$Builder;

    const/4 v2, 0x0

    invoke-direct {p2, v3, v2}, Lcom/android/internal/graphics/palette/Palette$Builder;-><init>(Landroid/graphics/Bitmap;Lcom/android/internal/graphics/palette/Quantizer;)V

    .line 587
    invoke-virtual {p2, p1}, Lcom/android/internal/graphics/palette/Palette$Builder;->maximumColorCount(I)Lcom/android/internal/graphics/palette/Palette$Builder;

    move-result-object p1

    .line 589
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Builder;->generate()Lcom/android/internal/graphics/palette/Palette;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;->mPalette:Lcom/android/internal/graphics/palette/Palette;

    .line 590
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 591
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method public getDominantColor()I
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;->mPalette:Lcom/android/internal/graphics/palette/Palette;

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette;->getDominantSwatch()Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getInt()I

    move-result p0

    return p0

    :cond_0
    const/high16 p0, -0x1000000

    return p0
.end method

.method public isComplexColor()Z
    .locals 1

    .line 601
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

    .line 615
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;->mPalette:Lcom/android/internal/graphics/palette/Palette;

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette;->getSwatches()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 617
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 618
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 619
    invoke-virtual {v2}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getInt()I

    move-result v2

    invoke-static {v2}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->access$1700(I)Z

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

    .line 596
    iget-boolean p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;->mFilterTransparent:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;->TRANSPARENT_FILTER_QUANTIZER:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;->access$1900(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;)F

    move-result p0

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method
