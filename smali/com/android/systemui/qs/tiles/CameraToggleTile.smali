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

.method protected constructor <init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p5

    move-object v5, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    .line 58
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;-><init>(Lcom/android/systemui/qs/QSHost;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    return-void
.end method

.method private static synthetic lambda$isAvailable$0()Ljava/lang/Boolean;
    .locals 3

    const-string v0, "privacy"

    const-string v1, "camera_toggle_enabled"

    const/4 v2, 0x1

    .line 66
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getIconRes(Z)I
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x1080350

    return p0

    :cond_0
    const p0, 0x108034f

    return p0
.end method

.method public getSensorId()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 82
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_camera_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 65
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SensorPrivacyToggleTile;->mSensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;->supportsSensorToggle(I)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/qs/tiles/CameraToggleTile$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/qs/tiles/CameraToggleTile$$ExternalSyntheticLambda0;

    .line 66
    invoke-static {p0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
