.class Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;
.super Ljava/lang/Object;
.source "DefaultTransitionHandler.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/transition/DefaultTransitionHandler;->startExampleAnimation(Ljava/util/ArrayList;Landroid/view/SurfaceControl;ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/transition/DefaultTransitionHandler;

.field final synthetic val$finisher:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/transition/DefaultTransitionHandler;Ljava/lang/Runnable;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;->this$0:Lcom/android/wm/shell/transition/DefaultTransitionHandler;

    iput-object p2, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;->val$finisher:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;->val$finisher:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/wm/shell/transition/DefaultTransitionHandler$1;->val$finisher:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
