.class public Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BaseKeyguardCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    .line 885
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method

.method private animatePadlockError()V
    .locals 3

    .line 977
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->setTransientBiometricsError(Z)V

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 981
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v1, 0x514

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private shouldSuppressBiometricError(ILandroid/hardware/biometrics/BiometricSourceType;Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1

    .line 987
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, v0, :cond_0

    .line 988
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->shouldSuppressFingerprintError(ILcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result p0

    return p0

    .line 989
    :cond_0
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, v0, :cond_1

    .line 990
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->shouldSuppressFaceError(ILcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private shouldSuppressFaceError(ILcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 0

    const/4 p0, 0x1

    .line 1010
    invoke-virtual {p2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0x9

    if-ne p1, p2, :cond_2

    :cond_0
    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return p0
.end method

.method private shouldSuppressFingerprintError(ILcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 0

    const/4 p0, 0x1

    .line 1000
    invoke-virtual {p2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0x9

    if-ne p1, p2, :cond_2

    :cond_0
    const/4 p2, 0x5

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 1045
    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    .line 1046
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 957
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1900(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-direct {p0, p1, p3, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->shouldSuppressBiometricError(ILandroid/hardware/biometrics/BiometricSourceType;Lcom/android/keyguard/KeyguardUpdateMonitor;)Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 960
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->animatePadlockError()V

    const/4 p3, 0x3

    if-ne p1, p3, :cond_1

    .line 964
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$500(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    goto :goto_0

    .line 965
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 966
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 967
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1900(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 968
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;)V

    .line 970
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 p1, 0x1388

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    goto :goto_0

    .line 972
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2302(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 4

    .line 933
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1900(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p3

    const/4 v0, 0x1

    .line 934
    invoke-virtual {p3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, -0x2

    const/4 v1, 0x0

    if-ne p1, p3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 939
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result p1

    const-wide/16 v2, 0x514

    if-eqz p1, :cond_2

    .line 940
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object p1

    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object p3, p3, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 942
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1900(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 943
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1, p2, v1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2100(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/CharSequence;ZZ)V

    if-nez v0, :cond_3

    .line 945
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 949
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;

    move-result-object p0

    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1037
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 1038
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2302(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onLockScreenModeChanged(I)V
    .locals 0

    .line 890
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockScreenMode:I

    return-void
.end method

.method public onLogoutEnabledChanged()V
    .locals 1

    .line 1065
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1066
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    :cond_0
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/settingslib/fuelgauge/BatteryStatus;)V
    .locals 8

    .line 895
    iget v0, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 897
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v3

    .line 898
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isPluggedInWired()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$702(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z

    .line 899
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isPluggedIn()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    invoke-static {v4, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$602(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z

    .line 900
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isCharged()Z

    move-result v4

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$802(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z

    .line 901
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget v4, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$902(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I

    .line 902
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->getChargingSpeed(Landroid/content/Context;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1002(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I

    .line 903
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget v4, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1202(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I

    .line 904
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-boolean v4, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->present:Z

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1302(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z

    .line 905
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isOverheated()Z

    move-result v4

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1402(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z

    .line 906
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isPluggedIn()Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v2

    goto :goto_4

    :cond_4
    move p1, v1

    :goto_4
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1502(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z

    const-wide/16 v4, -0x1

    .line 908
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 909
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1700(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    move-result-wide v6

    goto :goto_5

    :cond_5
    move-wide v6, v4

    .line 908
    :goto_5
    invoke-static {p1, v6, v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1602(Lcom/android/systemui/statusbar/KeyguardIndicationController;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    const-string v0, "KeyguardIndication"

    const-string v6, "Error calling IBatteryStats: "

    .line 911
    invoke-static {v0, v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 912
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1, v4, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1602(Lcom/android/systemui/statusbar/KeyguardIndicationController;J)J

    .line 914
    :goto_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    if-nez v3, :cond_6

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$700(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    .line 915
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1800(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-nez v3, :cond_7

    .line 916
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 917
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;)V

    .line 918
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    goto :goto_7

    :cond_7
    if-eqz v3, :cond_8

    .line 919
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 920
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    :cond_8
    :goto_7
    return-void
.end method

.method public onRequireUnlockForNfc()V
    .locals 3

    .line 1072
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$1100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->require_unlock_for_nfc:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2100(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/CharSequence;ZZ)V

    .line 1074
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 4

    .line 1022
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2100(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/CharSequence;ZZ)V

    .line 1026
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    .line 1027
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2302(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1017
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$2100(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 1051
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1052
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    :cond_0
    return-void
.end method

.method public onUserUnlocked()V
    .locals 1

    .line 1058
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->access$300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1059
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    :cond_0
    return-void
.end method
