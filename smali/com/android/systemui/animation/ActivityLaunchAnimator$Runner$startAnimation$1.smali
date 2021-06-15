.class public final Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActivityLaunchAnimator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->startAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $iCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field final synthetic $isExpandingFullyAbove:Z

.field final synthetic this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;


# direct methods
.method constructor <init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;ZLandroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    iput-boolean p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$1;->$isExpandingFullyAbove:Z

    iput-object p3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$1;->$iCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 400
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 406
    iget-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$1;->$iCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-static {p1, v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->access$invokeCallback(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 407
    iget-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    invoke-static {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->access$getController$p(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$1;->$isExpandingFullyAbove:Z

    invoke-interface {p1, p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationEnd(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    .line 402
    iget-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    invoke-static {p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->access$getController$p(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$1;->$isExpandingFullyAbove:Z

    invoke-interface {p1, p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationStart(Z)V

    return-void
.end method
