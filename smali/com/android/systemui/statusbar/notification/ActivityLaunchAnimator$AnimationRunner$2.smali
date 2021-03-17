.class Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActivityLaunchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->lambda$onAnimationStart$0([Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mWasCancelled:Z

.field final synthetic this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

.field final synthetic val$iRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;->val$iRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 245
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;->mWasCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 250
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->access$1600(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Z)V

    .line 251
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;->val$iRemoteAnimationFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->access$1700(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 252
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;->mWasCancelled:Z

    const/16 p1, 0x10

    if-nez p0, :cond_0

    .line 253
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    goto :goto_0

    .line 255
    :cond_0
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    :goto_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 239
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner$2;->this$1:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->access$1500(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;)Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    const/16 v0, 0x10

    invoke-virtual {p1, p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    return-void
.end method
