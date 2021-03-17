.class public final synthetic Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner-$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

.field public final synthetic f$1:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic f$2:Landroid/view/IRemoteAnimationFinishedCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner-$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner-$$ExternalSyntheticLambda1;->f$1:[Landroid/view/RemoteAnimationTarget;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner-$$ExternalSyntheticLambda1;->f$2:Landroid/view/IRemoteAnimationFinishedCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner-$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner-$$ExternalSyntheticLambda1;->f$1:[Landroid/view/RemoteAnimationTarget;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner-$$ExternalSyntheticLambda1;->f$2:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;->$r8$lambda$4Z7JIqHH8MibX2UnteVV_qTgu10(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$AnimationRunner;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method
