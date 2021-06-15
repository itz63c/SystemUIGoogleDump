.class public Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory;
.super Ljava/lang/Object;
.source "SplashscreenIconDrawableFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;,
        Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;
    }
.end annotation


# direct methods
.method static makeIconDrawable(ILandroid/graphics/drawable/Drawable;ILandroid/os/Handler;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 56
    instance-of v0, p1, Landroid/graphics/drawable/Animatable;

    if-eqz v0, :cond_0

    .line 57
    new-instance p2, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;

    invoke-direct {p2, p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;-><init>(ILandroid/graphics/drawable/Drawable;)V

    return-object p2

    .line 58
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_1

    .line 59
    new-instance p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;

    check-cast p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable;ILandroid/os/Handler;)V

    return-object p0

    .line 63
    :cond_1
    new-instance v0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;

    new-instance v1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {v0, v1, p2, p3}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$ImmobileIconDrawable;-><init>(Landroid/graphics/drawable/AdaptiveIconDrawable;ILandroid/os/Handler;)V

    return-object v0
.end method
