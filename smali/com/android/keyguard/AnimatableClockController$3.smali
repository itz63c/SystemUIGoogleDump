.class Lcom/android/keyguard/AnimatableClockController$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "AnimatableClockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/AnimatableClockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/AnimatableClockController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/AnimatableClockController;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/keyguard/AnimatableClockController$3;->this$0:Lcom/android/keyguard/AnimatableClockController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 0

    .line 120
    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/AnimatableClockController$3;->this$0:Lcom/android/keyguard/AnimatableClockController;

    .line 121
    invoke-static {p1}, Lcom/android/keyguard/AnimatableClockController;->access$400(Lcom/android/keyguard/AnimatableClockController;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->canBypass()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 122
    iget-object p0, p0, Lcom/android/keyguard/AnimatableClockController$3;->this$0:Lcom/android/keyguard/AnimatableClockController;

    invoke-static {p0}, Lcom/android/keyguard/AnimatableClockController;->access$500(Lcom/android/keyguard/AnimatableClockController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/AnimatableClockView;

    invoke-virtual {p0}, Lcom/android/keyguard/AnimatableClockView;->animateDisappear()V

    :cond_0
    return-void
.end method
