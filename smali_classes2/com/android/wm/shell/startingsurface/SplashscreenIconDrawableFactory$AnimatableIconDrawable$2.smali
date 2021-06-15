.class Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable$2;
.super Ljava/lang/Object;
.source "SplashscreenIconDrawableFactory.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable$2;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable$2;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;

    invoke-virtual {p0}, Landroid/window/SplashScreenView$SplashscreenIconDrawable;->invalidateSelf()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable$2;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;

    invoke-virtual {p0, p2, p3, p4}, Landroid/window/SplashScreenView$SplashscreenIconDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable$2;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;

    invoke-virtual {p0, p2}, Landroid/window/SplashScreenView$SplashscreenIconDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
