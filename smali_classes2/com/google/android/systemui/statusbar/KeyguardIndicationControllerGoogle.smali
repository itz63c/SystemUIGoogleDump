.class public Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;
.super Lcom/android/systemui/statusbar/KeyguardIndicationController;
.source "KeyguardIndicationControllerGoogle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;
    }
.end annotation


# instance fields
.field private mAdaptiveChargingActive:Z

.field private mAdaptiveChargingEnabledInSettings:Z

.field protected mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mAdaptiveChargingStatusReceiver:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryLevel:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDateFormatUtil:Lcom/android/systemui/util/time/DateFormatUtil;

.field private mEstimatedChargeCompletion:J

.field private mIsCharging:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public static synthetic $r8$lambda$LqZQpr1bUC4j84iy9GJbaTcyl2s(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pyvOVG-qPd301kkU5EvuzZ7P8i8(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->lambda$new$1(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v_-DRSAcmRpLHks7pbD2avf-190(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;ZLandroid/app/PendingIntent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->lambda$setAmbientMusic$2(ZLandroid/app/PendingIntent;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/app/IBatteryStats;Landroid/os/UserManager;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 14

    move-object v12, p0

    move-object v13, p1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p13

    .line 134
    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/app/IBatteryStats;Landroid/os/UserManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    .line 71
    new-instance v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$1;-><init>(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)V

    iput-object v0, v12, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    new-instance v1, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$2;-><init>(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)V

    iput-object v1, v12, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingStatusReceiver:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;

    .line 137
    iput-object v13, v12, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mContext:Landroid/content/Context;

    .line 138
    new-instance v1, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    invoke-direct {v1, p1}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;-><init>(Landroid/content/Context;)V

    iput-object v1, v12, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    move-object/from16 v1, p9

    .line 139
    iput-object v1, v12, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 140
    new-instance v1, Lcom/android/systemui/util/time/DateFormatUtil;

    invoke-direct {v1, p1}, Lcom/android/systemui/util/time/DateFormatUtil;-><init>(Landroid/content/Context;)V

    iput-object v1, v12, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mDateFormatUtil:Lcom/android/systemui/util/time/DateFormatUtil;

    .line 142
    new-instance v1, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle-$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)V

    const-string v2, "adaptive_charging_enabled"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p11

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle-$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle-$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)V

    const-string v3, "adaptive_charging"

    move-object/from16 v4, p12

    .line 144
    invoke-virtual {v4, v3, v1, v2}, Lcom/android/systemui/util/DeviceConfigProxy;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 154
    invoke-direct {p0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->triggerAdaptiveChargingStatusUpdate()V

    .line 156
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.google.android.systemui.adaptivecharging.ADAPTIVE_CHARGING_DEADLINE_SET"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 158
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    move-object/from16 v4, p7

    invoke-virtual {v4, v0, v1, v3, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->triggerAdaptiveChargingStatusUpdate()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingActive:Z

    return p0
.end method

.method static synthetic access$102(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingActive:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mEstimatedChargeCompletion:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;J)J
    .locals 0

    .line 57
    iput-wide p1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mEstimatedChargeCompletion:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Z)V
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mIsCharging:Z

    return p0
.end method

.method static synthetic access$402(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mIsCharging:Z

    return p1
.end method

.method static synthetic access$502(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mBatteryLevel:I

    return p1
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->refreshAdaptiveChargingEnabled()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    .line 148
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    const-string v0, "adaptive_charging_enabled"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->triggerAdaptiveChargingStatusUpdate()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setAmbientMusic$2(ZLandroid/app/PendingIntent;Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_1

    .line 226
    iget-object p1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez p1, :cond_0

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_1

    .line 227
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->sendBroadcastWithoutDismissingKeyguard(Landroid/app/PendingIntent;)V

    :goto_1
    return-void
.end method

.method private refreshAdaptiveChargingEnabled()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    invoke-virtual {v0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    .line 164
    invoke-virtual {v0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingEnabledInSettings:Z

    return-void
.end method

.method private sendBroadcastWithoutDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 1

    .line 247
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 251
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 253
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sending intent failed: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KgrdIndicationCtrlGoogle"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private triggerAdaptiveChargingStatusUpdate()V
    .locals 1

    .line 267
    invoke-direct {p0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->refreshAdaptiveChargingEnabled()V

    .line 269
    iget-boolean v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingEnabledInSettings:Z

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingManager:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingStatusReceiver:Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager;->queryStatus(Lcom/google/android/systemui/adaptivecharging/AdaptiveChargingManager$AdaptiveChargingStatusReceiver;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 272
    iput-boolean v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingActive:Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected computePowerIndication()Ljava/lang/String;
    .locals 5

    .line 169
    iget-boolean v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mIsCharging:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingEnabledInSettings:Z

    if-eqz v0, :cond_1

    .line 170
    iget-boolean v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mAdaptiveChargingActive:Z

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mDateFormatUtil:Lcom/android/systemui/util/time/DateFormatUtil;

    invoke-virtual {v0}, Lcom/android/systemui/util/time/DateFormatUtil;->is24HourFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Hm"

    goto :goto_0

    :cond_0
    const-string v0, "hma"

    .line 172
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    iget-wide v1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mEstimatedChargeCompletion:J

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iget v2, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mBatteryLevel:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 178
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$string;->adaptive_charging_time_estimate:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 182
    :cond_1
    invoke-super {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle$GoogleKeyguardCallback;-><init>(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;)V

    iput-object v0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 190
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object p0
.end method

.method public hideAmbientMusic()V
    .locals 1

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isKeyguardLayoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    :cond_0
    return-void
.end method

.method public setAmbientMusic(Ljava/lang/CharSequence;Landroid/app/PendingIntent;IZ)V
    .locals 4

    .line 216
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isKeyguardLayoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    const/16 v1, 0x9

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    invoke-direct {v2}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;-><init>()V

    .line 220
    invoke-virtual {v2, p1}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mContext:Landroid/content/Context;

    .line 221
    invoke-static {p3, v3}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->getNowPlayingIcon(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v2, p3}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object p3

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 223
    invoke-virtual {p3, v2}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setTextColor(Landroid/content/res/ColorStateList;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object p3

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 225
    :cond_0
    new-instance v2, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle-$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p4, p2}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle-$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;ZLandroid/app/PendingIntent;)V

    move-object p0, v2

    .line 224
    :goto_0
    invoke-virtual {p3, p0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setClickListener(Landroid/view/View$OnClickListener;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object p0

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->build()Lcom/android/systemui/keyguard/KeyguardIndication;

    move-result-object p0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 217
    :goto_1
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    :cond_2
    return-void
.end method

.method public setReverseChargingMessage(Ljava/lang/CharSequence;)V
    .locals 4

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isKeyguardLayoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xa

    if-eqz v0, :cond_0

    .line 199
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    invoke-direct {v2}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;-><init>()V

    .line 204
    invoke-virtual {v2, p1}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object p1

    iget-object v2, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$anim;->reverse_charging_animation:I

    .line 205
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 206
    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setTextColor(Landroid/content/res/ColorStateList;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object p0

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->build()Lcom/android/systemui/keyguard/KeyguardIndication;

    move-result-object p0

    const/4 p1, 0x0

    .line 201
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method
