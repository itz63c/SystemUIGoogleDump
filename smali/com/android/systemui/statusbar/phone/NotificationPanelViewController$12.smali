.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FILjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field final synthetic val$onFinishRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Ljava/lang/Runnable;)V
    .locals 0

    .line 2184
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;->val$onFinishRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 2193
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 2198
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3802(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 2199
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    .line 2200
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->resetCheckSnoozeLeavebehind()V

    .line 2201
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 2202
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;->val$onFinishRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 2203
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2205
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;->mIsCanceled:Z

    invoke-static {p1, v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;ZZ)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 2188
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingStarted()V

    return-void
.end method
