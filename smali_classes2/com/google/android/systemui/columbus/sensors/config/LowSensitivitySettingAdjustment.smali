.class public final Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;
.super Lcom/google/android/systemui/columbus/sensors/config/Adjustment;
.source "LowSensitivitySettingAdjustment.kt"


# instance fields
.field private final sensorConfiguration:Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;

.field private final settingsObserver:Lcom/google/android/systemui/columbus/ColumbusContentObserver;

.field private useLowSensitivity:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsObserverFactory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sensorConfiguration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/sensors/config/Adjustment;-><init>(Landroid/content/Context;)V

    .line 15
    iput-object p3, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->sensorConfiguration:Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;

    const-string p1, "columbus_low_sensitivity"

    .line 20
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p3, "getUriFor(COLUMBUS_LOW_SENSITIVITY_KEY)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment$settingsObserver$1;

    invoke-direct {p3, p0}, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment$settingsObserver$1;-><init>(Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;)V

    .line 19
    invoke-virtual {p2, p1, p3}, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;->create(Landroid/net/Uri;Lkotlin/jvm/functions/Function1;)Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->settingsObserver:Lcom/google/android/systemui/columbus/ColumbusContentObserver;

    .line 22
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->getLowSensitivitySetting()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->useLowSensitivity:Z

    .line 25
    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/ColumbusContentObserver;->activate()V

    return-void
.end method

.method public static final synthetic access$updateLowSensitivity(Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->updateLowSensitivity()V

    return-void
.end method

.method private final getLowSensitivitySetting()Z
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/config/Adjustment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "columbus_low_sensitivity"

    const/4 v1, 0x0

    .line 46
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private final updateLowSensitivity()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->getLowSensitivitySetting()Z

    move-result v0

    .line 39
    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->useLowSensitivity:Z

    if-eq v1, v0, :cond_0

    .line 40
    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->useLowSensitivity:Z

    .line 41
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/config/Adjustment;->onSensitivityChanged()V

    :cond_0
    return-void
.end method


# virtual methods
.method public adjustSensitivity(F)F
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->useLowSensitivity:Z

    if-eqz v0, :cond_0

    .line 30
    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;->sensorConfiguration:Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;

    iget p1, p0, Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;->lowSensitivityValue:F

    :cond_0
    return p1
.end method
