.class public Lcom/google/android/systemui/elmyra/gates/PowerState;
.super Lcom/google/android/systemui/elmyra/gates/Gate;
.source "PowerState.java"


# instance fields
.field private final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/gates/Gate;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Lcom/google/android/systemui/elmyra/gates/PowerState$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/gates/PowerState$1;-><init>(Lcom/google/android/systemui/elmyra/gates/PowerState;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/gates/PowerState;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const-string v0, "power"

    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/PowerState;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method protected isBlocked()Z
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/PowerState;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected onActivate()V
    .locals 1

    .line 35
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/PowerState;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 36
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDeactivate()V
    .locals 1

    .line 41
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/PowerState;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 42
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method
