.class Lcom/android/keyguard/DisabledUdfpsController$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "DisabledUdfpsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/DisabledUdfpsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/DisabledUdfpsController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/DisabledUdfpsController;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/keyguard/DisabledUdfpsController$3;->this$0:Lcom/android/keyguard/DisabledUdfpsController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/keyguard/DisabledUdfpsController$3;->this$0:Lcom/android/keyguard/DisabledUdfpsController;

    if-eqz p1, :cond_0

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/android/keyguard/DisabledUdfpsController;->access$502(Lcom/android/keyguard/DisabledUdfpsController;Z)Z

    .line 146
    iget-object p0, p0, Lcom/android/keyguard/DisabledUdfpsController$3;->this$0:Lcom/android/keyguard/DisabledUdfpsController;

    invoke-static {p0}, Lcom/android/keyguard/DisabledUdfpsController;->access$200(Lcom/android/keyguard/DisabledUdfpsController;)V

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/DisabledUdfpsController$3;->this$0:Lcom/android/keyguard/DisabledUdfpsController;

    invoke-static {v0, p1}, Lcom/android/keyguard/DisabledUdfpsController;->access$402(Lcom/android/keyguard/DisabledUdfpsController;Z)Z

    .line 139
    iget-object p0, p0, Lcom/android/keyguard/DisabledUdfpsController$3;->this$0:Lcom/android/keyguard/DisabledUdfpsController;

    invoke-static {p0}, Lcom/android/keyguard/DisabledUdfpsController;->access$200(Lcom/android/keyguard/DisabledUdfpsController;)V

    return-void
.end method

.method public onUserUnlocked()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/android/keyguard/DisabledUdfpsController$3;->this$0:Lcom/android/keyguard/DisabledUdfpsController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/DisabledUdfpsController;->access$602(Lcom/android/keyguard/DisabledUdfpsController;Z)Z

    .line 152
    iget-object p0, p0, Lcom/android/keyguard/DisabledUdfpsController$3;->this$0:Lcom/android/keyguard/DisabledUdfpsController;

    invoke-static {p0}, Lcom/android/keyguard/DisabledUdfpsController;->access$200(Lcom/android/keyguard/DisabledUdfpsController;)V

    return-void
.end method
