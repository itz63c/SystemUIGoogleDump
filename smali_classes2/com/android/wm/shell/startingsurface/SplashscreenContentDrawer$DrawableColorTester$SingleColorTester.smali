.class Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;
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
    name = "SingleColorTester"
.end annotation


# instance fields
.field private final mColorDrawable:Landroid/graphics/drawable/ColorDrawable;


# direct methods
.method constructor <init>(Landroid/graphics/drawable/ColorDrawable;)V
    .locals 0

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    return-void
.end method


# virtual methods
.method public getDominantColor()I
    .locals 0

    .line 472
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    return p0
.end method

.method public isComplexColor()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isGrayscale()Z
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p0

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester;->access$1300(I)Z

    move-result p0

    return p0
.end method

.method public nonTransparentRatio()F
    .locals 0

    .line 461
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$DrawableColorTester$SingleColorTester;->mColorDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result p0

    .line 462
    div-int/lit16 p0, p0, 0xff

    int-to-float p0, p0

    return p0
.end method
