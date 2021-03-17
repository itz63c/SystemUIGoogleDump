.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "NotificationPanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 254
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 255
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1402(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    :cond_0
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    .line 264
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 265
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 266
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 267
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 268
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 269
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isBiometricUnlock()Z

    move-result p1

    if-nez p1, :cond_2

    .line 270
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 271
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-wide/16 p1, 0x168

    invoke-static {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;J)V

    :cond_2
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 1

    .line 277
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    .line 278
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1402(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 7

    .line 283
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/DisabledUdfpsController;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 284
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/biometrics/AuthController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsRegion()Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 285
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/biometrics/AuthController;

    move-result-object p1

    .line 286
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 285
    invoke-virtual {p1, v0}, Lcom/android/systemui/biometrics/AuthController;->isUdfpsEnrolled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 287
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->disabled_udfps_view:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 288
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    new-instance v6, Lcom/android/keyguard/DisabledUdfpsController;

    .line 289
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->disabled_udfps_view:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/keyguard/DisabledUdfpsView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 291
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 292
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/biometrics/AuthController;

    move-result-object v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 293
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/DisabledUdfpsController;-><init>(Lcom/android/keyguard/DisabledUdfpsView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/biometrics/AuthController;Lcom/android/keyguard/KeyguardViewController;)V

    .line 288
    invoke-static {p1, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/keyguard/DisabledUdfpsController;)Lcom/android/keyguard/DisabledUdfpsController;

    .line 294
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/DisabledUdfpsController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    :cond_0
    return-void
.end method

.method public onLockScreenModeChanged(I)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$1100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->onLockScreenModeChanged(I)V

    .line 247
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onLockScreenModeChanged(I)V

    return-void
.end method
