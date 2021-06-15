.class Lcom/android/keyguard/KeyguardStatusViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardStatusViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardStatusViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardStatusViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardStatusViewController;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$1000(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusViewController;->access$000(Lcom/android/keyguard/KeyguardStatusViewController;)V

    .line 258
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusViewController;->access$600(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    .line 259
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusViewController;->access$800(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardStatusView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$700(Lcom/android/keyguard/KeyguardStatusViewController;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardStatusView;->updateLogoutView(Z)V

    :cond_0
    return-void
.end method

.method public onLockScreenModeChanged(I)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$300(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/keyguard/KeyguardSliceViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSliceViewController;->updateLockScreenMode(I)V

    .line 239
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusViewController;->access$400(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardStatusView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardStatusView;->setCanShowOwnerInfo(Z)V

    .line 240
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$500(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->updateLogoutView(Z)V

    return-void
.end method

.method public onLogoutEnabledChanged()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$1300(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$700(Lcom/android/keyguard/KeyguardStatusViewController;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardStatusView;->updateLogoutView(Z)V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    .line 265
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$900(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$000(Lcom/android/keyguard/KeyguardStatusViewController;)V

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$100(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/keyguard/KeyguardClockSwitchController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController;->updateTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 275
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusViewController;->access$1100(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    .line 276
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusViewController;->access$1200(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardStatusView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$700(Lcom/android/keyguard/KeyguardStatusViewController;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardStatusView;->updateLogoutView(Z)V

    return-void
.end method
