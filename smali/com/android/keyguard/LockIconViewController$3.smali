.class Lcom/android/keyguard/LockIconViewController$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "LockIconViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/LockIconViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/LockIconViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/LockIconViewController;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/android/keyguard/LockIconViewController$3;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 3

    .line 344
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$3;->this$0:Lcom/android/keyguard/LockIconViewController;

    .line 345
    invoke-static {v0}, Lcom/android/keyguard/LockIconViewController;->access$1100(Lcom/android/keyguard/LockIconViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 346
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 345
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result v1

    .line 344
    invoke-static {v0, v1}, Lcom/android/keyguard/LockIconViewController;->access$1002(Lcom/android/keyguard/LockIconViewController;Z)Z

    .line 348
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, v0, :cond_0

    .line 349
    iget-object p2, p0, Lcom/android/keyguard/LockIconViewController$3;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p2, p1}, Lcom/android/keyguard/LockIconViewController;->access$1202(Lcom/android/keyguard/LockIconViewController;Z)Z

    .line 350
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$3;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p0}, Lcom/android/keyguard/LockIconViewController;->access$700(Lcom/android/keyguard/LockIconViewController;)V

    :cond_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController$3;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {v0, p1}, Lcom/android/keyguard/LockIconViewController;->access$902(Lcom/android/keyguard/LockIconViewController;Z)Z

    .line 338
    iget-object p0, p0, Lcom/android/keyguard/LockIconViewController$3;->this$0:Lcom/android/keyguard/LockIconViewController;

    invoke-static {p0}, Lcom/android/keyguard/LockIconViewController;->access$700(Lcom/android/keyguard/LockIconViewController;)V

    return-void
.end method
