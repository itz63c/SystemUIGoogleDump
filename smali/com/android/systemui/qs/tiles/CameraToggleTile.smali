.class public Lcom/android/systemui/qs/tiles/CameraToggleTile;
.super Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;
.source "CameraToggleTile.java"


# direct methods
.method public static synthetic $r8$lambda$UtRBYTAzb02VNYRl3lbeOYsaQac()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/android/systemui/qs/tiles/CameraToggleTile;->lambda$isAvailable$0()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected constructor <init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 0

    .line 55
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;-><init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    return-void
.end method

.method private static synthetic lambda$isAvailable$0()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "privacy"

    const-string v1, "camera_toggle_enabled"

    const/4 v2, 0x0

    .line 62
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getIconRes()I
    .locals 0

    const p0, 0x108034e

    return p0
.end method

.method public getSensorId()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 74
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_camera_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 61
    sget-object p0, Lcom/android/systemui/qs/tiles/CameraToggleTile-$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/qs/tiles/CameraToggleTile-$$ExternalSyntheticLambda0;

    .line 62
    invoke-static {p0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
