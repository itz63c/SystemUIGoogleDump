.class Lcom/android/systemui/keyguard/KeyguardViewMediator$3;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/keyguard/ViewMediatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeCustomMessage()Ljava/lang/CharSequence;
    .locals 2

    .line 755
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 756
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2702(Lcom/android/systemui/keyguard/KeyguardViewMediator;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBouncerPromptReason()I
    .locals 5

    .line 726
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 727
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustUsuallyManaged(I)Z

    move-result v1

    .line 728
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricsPossible(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    .line 730
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 731
    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object p0

    .line 732
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    if-eqz v2, :cond_2

    .line 734
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result p0

    if-nez p0, :cond_2

    return v4

    :cond_2
    if-eqz v2, :cond_3

    and-int/lit8 p0, v0, 0x10

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    if-eqz v2, :cond_4

    and-int/lit8 p0, v0, 0x2

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    if-eqz v1, :cond_5

    and-int/lit8 p0, v0, 0x4

    if-eqz p0, :cond_5

    const/4 p0, 0x4

    return p0

    :cond_5
    if-eqz v2, :cond_6

    and-int/lit8 p0, v0, 0x8

    if-eqz p0, :cond_6

    const/4 p0, 0x5

    return p0

    :cond_6
    if-eqz v2, :cond_7

    and-int/lit8 p0, v0, 0x40

    if-eqz p0, :cond_7

    const/4 p0, 0x6

    return p0

    :cond_7
    if-eqz v2, :cond_8

    and-int/lit16 p0, v0, 0x80

    if-eqz p0, :cond_8

    const/4 p0, 0x7

    return p0

    :cond_8
    return v3
.end method

.method public isScreenOn()Z
    .locals 0

    .line 721
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result p0

    return p0
.end method

.method public keyguardDone(ZI)V
    .locals 0

    .line 640
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    const-string p1, "KeyguardViewMediator"

    const-string p2, "keyguardDone"

    .line 643
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 1

    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardDoneDrawing"

    .line 649
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 650
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 651
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public keyguardDonePending(ZI)V
    .locals 2

    const-string p1, "KeyguardViewMediator.mViewMediatorCallback#keyguardDonePending"

    .line 661
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string p1, "KeyguardViewMediator"

    const-string v0, "keyguardDonePending"

    .line 662
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    if-eq p2, p1, :cond_0

    .line 664
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    .line 668
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1902(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 669
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2002(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 670
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2102(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 671
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ldagger/Lazy;

    move-result-object p1

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardViewController;

    iget-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 672
    invoke-static {p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/keyguard/KeyguardViewController;->startPreHideAnimation(Ljava/lang/Runnable;)V

    .line 673
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0xd

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 675
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public keyguardGone()V
    .locals 2

    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#keyguardGone"

    .line 680
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "KeyguardViewMediator"

    const-string v1, "keyguardGone"

    .line 681
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ldagger/Lazy;

    move-result-object v0

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardViewController;->setKeyguardGoingAwayState(Z)V

    .line 683
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardDisplayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDisplayManager;->hide()V

    .line 684
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onBouncerVisiblityChanged(Z)V
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v0

    .line 710
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2400(Lcom/android/systemui/keyguard/KeyguardViewMediator;ZZ)V

    .line 711
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onCancelClicked()V
    .locals 0

    .line 704
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardViewController;->onCancelClicked()V

    return-void
.end method

.method public playTrustedSound()V
    .locals 0

    .line 716
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$2500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    return-void
.end method

.method public readyForKeyguardDone()V
    .locals 2

    const-string v0, "KeyguardViewMediator.mViewMediatorCallback#readyForKeyguardDone"

    .line 689
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1902(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 692
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 694
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public resetKeyguard()V
    .locals 0

    .line 699
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    return-void
.end method

.method public setNeedsInput(Z)V
    .locals 0

    .line 656
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Ldagger/Lazy;

    move-result-object p0

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardViewController;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardViewController;->setNeedsInput(Z)V

    return-void
.end method

.method public userActivity()V
    .locals 0

    .line 635
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->userActivity()V

    return-void
.end method
