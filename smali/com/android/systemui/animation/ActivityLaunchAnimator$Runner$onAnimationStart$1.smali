.class final Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;
.super Ljava/lang/Object;
.source "ActivityLaunchAnimator.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $iRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field final synthetic $remoteAnimationNonAppTargets:[Landroid/view/RemoteAnimationTarget;

.field final synthetic $remoteAnimationTargets:[Landroid/view/RemoteAnimationTarget;

.field final synthetic this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;


# direct methods
.method constructor <init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    iput-object p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$remoteAnimationTargets:[Landroid/view/RemoteAnimationTarget;

    iput-object p3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$remoteAnimationNonAppTargets:[Landroid/view/RemoteAnimationTarget;

    iput-object p4, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$iRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$remoteAnimationTargets:[Landroid/view/RemoteAnimationTarget;

    iget-object v2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$remoteAnimationNonAppTargets:[Landroid/view/RemoteAnimationTarget;

    .line 330
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;->$iRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 329
    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->access$startAnimation(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method
