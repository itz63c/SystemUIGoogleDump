.class Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "UdfpsKeyguardViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 312
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_0

    .line 314
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$600(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)V

    :cond_0
    return-void
.end method

.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 320
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    .line 322
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$700(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    :cond_0
    return-void
.end method

.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 306
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, v0, :cond_0

    .line 307
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-static {p0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$500(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)V

    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChangedRaw(Z)V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-static {v0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->access$802(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z

    .line 328
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;->this$0:Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    return-void
.end method
