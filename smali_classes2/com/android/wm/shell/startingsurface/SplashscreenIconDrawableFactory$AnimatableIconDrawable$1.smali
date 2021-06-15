.class Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable$1;
.super Ljava/lang/Object;
.source "SplashscreenIconDrawableFactory.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->prepareAnimate(JLjava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;

.field final synthetic val$startListener:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable$1;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable$1;->val$startListener:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable$1;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->access$000(Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;)Landroid/graphics/drawable/Animatable;

    move-result-object p0

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->stop()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable$1;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->access$000(Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;)Landroid/graphics/drawable/Animatable;

    move-result-object p0

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->stop()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable$1;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->access$000(Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;)Landroid/graphics/drawable/Animatable;

    move-result-object p0

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->stop()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable$1;->val$startListener:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 178
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 180
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable$1;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;->access$000(Lcom/android/wm/shell/startingsurface/SplashscreenIconDrawableFactory$AnimatableIconDrawable;)Landroid/graphics/drawable/Animatable;

    move-result-object p0

    invoke-interface {p0}, Landroid/graphics/drawable/Animatable;->start()V

    return-void
.end method
