.class public Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;
.super Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;
.source "ScreenStateAdjustment.java"


# instance fields
.field private final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mScreenOffAdjustment:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 32
    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment$1;-><init>(Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 34
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;->mPowerManager:Landroid/os/PowerManager;

    .line 36
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/systemui/R$dimen;->elmyra_screen_off_adjustment:I

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 38
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;->mScreenOffAdjustment:F

    .line 40
    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method


# virtual methods
.method public adjustSensitivity(F)F
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iget p0, p0, Lcom/google/android/systemui/elmyra/sensors/config/ScreenStateAdjustment;->mScreenOffAdjustment:F

    add-float/2addr p1, p0

    :cond_0
    return p1
.end method
