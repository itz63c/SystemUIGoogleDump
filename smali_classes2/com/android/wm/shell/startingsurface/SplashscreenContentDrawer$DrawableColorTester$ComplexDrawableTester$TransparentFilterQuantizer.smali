.class Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;
.super Ljava/lang/Object;
.source "SplashscreenContentDrawer.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransparentFilterQuantizer"
.end annotation


# instance fields
.field private final mInnerQuantizer:Lcom/android/internal/graphics/palette/Quantizer;

.field private mNonTransparentRatio:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 562
    new-instance v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;->mInnerQuantizer:Lcom/android/internal/graphics/palette/Quantizer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$1;)V
    .locals 0

    .line 560
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;-><init>()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;)F
    .locals 0

    .line 560
    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;->mNonTransparentRatio:F

    return p0
.end method


# virtual methods
.method public getQuantizedColors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 595
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;->mInnerQuantizer:Lcom/android/internal/graphics/palette/Quantizer;

    invoke-interface {p0}, Lcom/android/internal/graphics/palette/Quantizer;->getQuantizedColors()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public quantize([II[Lcom/android/internal/graphics/palette/Palette$Filter;)V
    .locals 5

    const/4 v0, 0x0

    .line 567
    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;->mNonTransparentRatio:F

    .line 569
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/high16 v3, -0x1000000

    if-lez v0, :cond_1

    .line 570
    aget v4, p1, v0

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 578
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;->mInnerQuantizer:Lcom/android/internal/graphics/palette/Quantizer;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/internal/graphics/palette/Quantizer;->quantize([II[Lcom/android/internal/graphics/palette/Palette$Filter;)V

    return-void

    :cond_2
    int-to-float v0, v2

    .line 581
    array-length v4, p1

    int-to-float v4, v4

    div-float/2addr v0, v4

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;->mNonTransparentRatio:F

    .line 582
    new-array v0, v2, [I

    .line 584
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-lez v2, :cond_4

    .line 585
    aget v4, p1, v2

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_3

    .line 586
    aget v4, p1, v2

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 590
    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$ComplexDrawableTester$TransparentFilterQuantizer;->mInnerQuantizer:Lcom/android/internal/graphics/palette/Quantizer;

    invoke-interface {p0, v0, p2, p3}, Lcom/android/internal/graphics/palette/Quantizer;->quantize([II[Lcom/android/internal/graphics/palette/Palette$Filter;)V

    return-void
.end method
