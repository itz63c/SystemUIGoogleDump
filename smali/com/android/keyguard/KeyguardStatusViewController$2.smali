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

    .line 262
    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$1300(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 303
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusViewController;->access$000(Lcom/android/keyguard/KeyguardStatusViewController;)V

    .line 304
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusViewController;->access$1000(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    .line 305
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$1100(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateLogoutView()V

    :cond_0
    return-void
.end method

.method public onLockScreenModeChanged(I)V
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardStatusViewController;->access$302(Lcom/android/keyguard/KeyguardStatusViewController;I)I

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$100(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/keyguard/KeyguardClockSwitchController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController;->updateLockScreenMode(I)V

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$400(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/keyguard/KeyguardSliceViewController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSliceViewController;->updateLockScreenMode(I)V

    .line 268
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusViewController;->access$300(Lcom/android/keyguard/KeyguardStatusViewController;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 271
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusViewController;->access$400(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/keyguard/KeyguardSliceViewController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 272
    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$100(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/keyguard/KeyguardClockSwitchController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardClockSwitchController;->getClockTextTopPadding()F

    move-result v0

    .line 271
    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardSliceViewController;->updateTopMargin(F)V

    .line 273
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusViewController;->access$500(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardStatusView;->setCanShowOwnerInfo(Z)V

    .line 274
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusViewController;->access$600(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardStatusView;->setCanShowLogout(Z)V

    goto :goto_0

    .line 277
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusViewController;->access$400(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/keyguard/KeyguardSliceViewController;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardSliceViewController;->updateTopMargin(F)V

    .line 278
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusViewController;->access$700(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardStatusView;->setCanShowOwnerInfo(Z)V

    .line 279
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusViewController;->access$800(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardStatusView;->setCanShowLogout(Z)V

    .line 281
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$900(Lcom/android/keyguard/KeyguardStatusViewController;)V

    return-void
.end method

.method public onLogoutEnabledChanged()V
    .locals 0

    .line 328
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$1600(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateLogoutView()V

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    .line 311
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$1200(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V

    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$000(Lcom/android/keyguard/KeyguardStatusViewController;)V

    return-void
.end method

.method public onTimeFormatChanged(Ljava/lang/String;)V
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$100(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/keyguard/KeyguardClockSwitchController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController;->refreshFormat(Ljava/lang/String;)V

    return-void
.end method

.method public onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$100(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/keyguard/KeyguardClockSwitchController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController;->updateTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 321
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusViewController;->access$100(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/keyguard/KeyguardClockSwitchController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardClockSwitchController;->refreshFormat()V

    .line 322
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardStatusViewController;->access$1400(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V

    .line 323
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController$2;->this$0:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->access$1500(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusView;->updateLogoutView()V

    return-void
.end method
