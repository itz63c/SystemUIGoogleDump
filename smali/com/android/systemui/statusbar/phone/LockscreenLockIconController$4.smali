.class Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "LockscreenLockIconController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$4;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$4;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$100(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$4;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$100(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    return-void
.end method

.method public onSimStateChanged(III)V
    .locals 0

    .line 468
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$4;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1600(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$1502(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;Z)Z

    .line 469
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$4;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$100(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController$4;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->access$100(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V

    return-void
.end method
