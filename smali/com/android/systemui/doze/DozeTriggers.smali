.class public Lcom/android/systemui/doze/DozeTriggers;
.super Ljava/lang/Object;
.source "DozeTriggers.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/doze/DozeTriggers$DockEventListener;,
        Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;,
        Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

.field private static sWakeDisplaySensorState:Z


# instance fields
.field private final mAllowPulseTriggers:Z

.field private final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

.field private final mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private final mDockEventListener:Lcom/android/systemui/doze/DozeTriggers$DockEventListener;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private final mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field private final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

.field private mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

.field private mMachine:Lcom/android/systemui/doze/DozeMachine;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNotificationPulseTime:J

.field private final mProxCheck:Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;

.field private mPulsePending:Z

.field private final mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

.field private final mUiModeManager:Landroid/app/UiModeManager;

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

.field private mWantProx:Z

.field private mWantSensors:Z

.field private mWantTouchScreenSensors:Z


# direct methods
.method public static synthetic $r8$lambda$LL-FaZptufirxDFdxqwlS-JNi7g(Lcom/android/systemui/doze/DozeTriggers;JILjava/util/function/Consumer;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/doze/DozeTriggers;->lambda$proximityCheckThenCall$0(JILjava/util/function/Consumer;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R2rFZhJYj-lCS6CrMJVoalRn_-c(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeMachine$State;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/doze/DozeTriggers;->lambda$onWakeScreen$2(Lcom/android/systemui/doze/DozeMachine$State;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SB-r6RdBs6x2yPPuvxv3clYZsMQ(Lcom/android/systemui/doze/DozeTriggers;ZZFFIZZ[FLjava/lang/Boolean;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/doze/DozeTriggers;->lambda$onSensor$1(ZZFFIZZ[FLjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$liDQuYxYB0a-txs9yPa0ajYjJyU(Lcom/android/systemui/doze/DozeTriggers;Ljava/lang/Runnable;ILjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/doze/DozeTriggers;->lambda$requestPulse$3(Ljava/lang/Runnable;ILjava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tYVQpUBU5w_IkmuBvGNlrH1O8EI(Lcom/android/systemui/doze/DozeTriggers;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeTriggers;->onProximityFar(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 67
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    .line 72
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    sput-object v0, Lcom/android/systemui/doze/DozeTriggers;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    const/4 v0, 0x1

    .line 78
    sput-boolean v0, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/DozeHost;Landroid/app/AlarmManager;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/biometrics/AuthController;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v13, p1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;-><init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeTriggers$1;)V

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    .line 94
    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$DockEventListener;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/doze/DozeTriggers$DockEventListener;-><init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeTriggers$1;)V

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mDockEventListener:Lcom/android/systemui/doze/DozeTriggers$DockEventListener;

    .line 103
    const-class v1, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/logging/MetricsLogger;

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 597
    new-instance v1, Lcom/android/systemui/doze/DozeTriggers$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/doze/DozeTriggers$1;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    .line 176
    iput-object v13, v0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    move-object/from16 v1, p2

    .line 177
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    move-object/from16 v5, p4

    .line 178
    iput-object v5, v0, Lcom/android/systemui/doze/DozeTriggers;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    move-object/from16 v4, p5

    .line 179
    iput-object v4, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v3, p6

    .line 180
    iput-object v3, v0, Lcom/android/systemui/doze/DozeTriggers;->mSensorManager:Lcom/android/systemui/util/sensors/AsyncSensorManager;

    move-object/from16 v6, p7

    .line 181
    iput-object v6, v0, Lcom/android/systemui/doze/DozeTriggers;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const/4 v1, 0x1

    .line 182
    iput-boolean v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mAllowPulseTriggers:Z

    .line 183
    new-instance v14, Lcom/android/systemui/doze/DozeSensors;

    new-instance v7, Lcom/android/systemui/doze/DozeTriggers-$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/android/systemui/doze/DozeTriggers-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    new-instance v8, Lcom/android/systemui/doze/DozeTriggers-$$ExternalSyntheticLambda2;

    invoke-direct {v8, p0}, Lcom/android/systemui/doze/DozeTriggers-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/doze/DozeTriggers;)V

    move-object v1, v14

    move-object/from16 v2, p1

    move-object/from16 v9, p11

    move-object/from16 v10, p9

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    invoke-direct/range {v1 .. v12}, Lcom/android/systemui/doze/DozeSensors;-><init>(Landroid/content/Context;Lcom/android/systemui/util/sensors/AsyncSensorManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/util/wakelock/WakeLock;Lcom/android/systemui/doze/DozeSensors$Callback;Ljava/util/function/Consumer;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/biometrics/AuthController;)V

    iput-object v14, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    .line 186
    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {v13, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mUiModeManager:Landroid/app/UiModeManager;

    move-object/from16 v1, p8

    .line 187
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mDockManager:Lcom/android/systemui/dock/DockManager;

    move-object/from16 v1, p10

    .line 188
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mProxCheck:Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;

    move-object/from16 v1, p11

    .line 189
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    move-object/from16 v1, p12

    .line 190
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v1, p14

    .line 191
    iput-object v1, v0, Lcom/android/systemui/doze/DozeTriggers;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/doze/DozeTriggers;IZLjava/lang/Runnable;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeMachine;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeSensors;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    return-object p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 64
    sget-boolean v0, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/doze/DozeTriggers;Ljava/lang/Runnable;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeTriggers;->onNotification(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeHost;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/doze/DozeTriggers;)Landroid/hardware/display/AmbientDisplayConfiguration;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method

.method private canPulse()Z
    .locals 2

    .line 514
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 515
    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    .line 516
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_DOCKED:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private checkTriggersAtInit()V
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 465
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isBlockingDoze()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 466
    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_1
    return-void
.end method

.method private continuePulseRequest(I)V
    .locals 2

    const/4 v0, 0x0

    .line 520
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    .line 521
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->canPulse()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 526
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestPulse(I)V

    return-void

    .line 522
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    iget-object v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v1}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 523
    invoke-interface {p0}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result p0

    .line 522
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(ZLcom/android/systemui/doze/DozeMachine$State;Z)V

    return-void
.end method

.method private gentleWakeUp(I)V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0xdf

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x6

    .line 317
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 318
    invoke-virtual {v1, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 316
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 319
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->fromReason(I)Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/doze/DozeTriggers;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    .line 320
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/doze/DozeTriggers-$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/systemui/doze/DozeTriggers-$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 321
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 325
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0}, Lcom/android/systemui/doze/DozeHost;->setAodDimmingScrim(F)V

    .line 327
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeMachine;->wakeUp()V

    return-void
.end method

.method private synthetic lambda$onSensor$1(ZZFFIZZ[FLjava/lang/Boolean;)V
    .locals 0

    if-eqz p9, :cond_0

    .line 282
    invoke-virtual {p9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p9

    if-eqz p9, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_4

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p6, :cond_2

    .line 292
    invoke-direct {p0, p5}, Lcom/android/systemui/doze/DozeTriggers;->gentleWakeUp(I)V

    goto :goto_1

    :cond_2
    if-eqz p7, :cond_3

    const/16 p1, 0xa

    const/4 p2, 0x1

    const/4 p5, 0x0

    .line 294
    invoke-direct {p0, p1, p2, p5}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLjava/lang/Runnable;)V

    .line 297
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    float-to-int p1, p3

    float-to-int p2, p4

    const/4 p3, 0x2

    aget p3, p8, p3

    const/4 p4, 0x3

    aget p4, p8, p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/biometrics/AuthController;->onAodInterrupt(IIFF)V

    goto :goto_1

    .line 300
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p0, p5}, Lcom/android/systemui/doze/DozeHost;->extendPulse(I)V

    goto :goto_1

    :cond_4
    :goto_0
    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p2, p3, p1

    if-eqz p2, :cond_5

    cmpl-float p1, p4, p1

    if-eqz p1, :cond_5

    .line 288
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {p1, p3, p4}, Lcom/android/systemui/doze/DozeHost;->onSlpiTap(FF)V

    .line 290
    :cond_5
    invoke-direct {p0, p5}, Lcom/android/systemui/doze/DozeTriggers;->gentleWakeUp(I)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onWakeScreen$2(Lcom/android/systemui/doze/DozeMachine$State;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 379
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 383
    :cond_0
    sget-object p2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, p2, :cond_1

    .line 384
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 386
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance p1, Landroid/metrics/LogMaker;

    const/16 p2, 0xdf

    invoke-direct {p1, p2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p2, 0x1

    .line 387
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    const/4 p2, 0x7

    .line 388
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 386
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$proximityCheckThenCall$0(JILjava/util/function/Consumer;Ljava/lang/Boolean;)V
    .locals 4

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 248
    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    if-nez p5, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 249
    :cond_0
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :goto_0
    sub-long/2addr v0, p1

    .line 248
    invoke-virtual {v2, v3, v0, v1, p3}, Lcom/android/systemui/doze/DozeLog;->traceProximityResult(ZJI)V

    .line 252
    invoke-interface {p4, p5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 253
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const-string p1, "DozeTriggers"

    invoke-interface {p0, p1}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$requestPulse$3(Ljava/lang/Runnable;ILjava/lang/Boolean;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 495
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 497
    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    const-string p3, "inPocket"

    invoke-virtual {p2, p3}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 498
    iput-boolean p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    .line 499
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 502
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/systemui/doze/DozeTriggers;->continuePulseRequest(I)V

    :goto_0
    return-void
.end method

.method private onNotification(Ljava/lang/Runnable;)V
    .locals 2

    .line 205
    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    const-string v1, "DozeTriggers"

    if-eqz v0, :cond_0

    const-string v0, "requestNotificationPulse"

    .line 206
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    sget-boolean v0, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    if-nez v0, :cond_1

    const-string v0, "Wake display false. Pulse denied."

    .line 209
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    .line 211
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    const-string/jumbo p1, "wakeDisplaySensor"

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    return-void

    .line 214
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    .line 215
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 216
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    .line 217
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    const-string p1, "pulseOnNotificationsDisabled"

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    return-void

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost;->isDozeSuppressed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    .line 222
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    const-string p1, "dozeSuppressed"

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 225
    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLjava/lang/Runnable;)V

    .line 227
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeLog;->traceNotificationPulse()V

    return-void
.end method

.method private onProximityFar(Z)V
    .locals 9

    .line 334
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    move-result v0

    const-string v1, "DozeTriggers"

    if-eqz v0, :cond_0

    const-string p0, "onProximityFar called during transition. Ignoring sensor response."

    .line 335
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 340
    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v2}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v2

    .line 341
    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    .line 342
    :goto_0
    sget-object v6, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v2, v6, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, v4

    .line 343
    :goto_1
    sget-object v8, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v2, v8, :cond_3

    move v4, v5

    .line 345
    :cond_3
    sget-object v5, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq v2, v5, :cond_4

    sget-object v5, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v2, v5, :cond_6

    .line 348
    :cond_4
    sget-boolean v2, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prox changed, ignore touch = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v2, v0}, Lcom/android/systemui/doze/DozeHost;->onIgnoreTouchWhilePulsing(Z)V

    :cond_6
    if-eqz p1, :cond_9

    if-nez v3, :cond_7

    if-eqz v7, :cond_9

    .line 355
    :cond_7
    sget-boolean p1, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    if-eqz p1, :cond_8

    const-string p1, "Prox FAR, unpausing AOD"

    .line 356
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p0, v8}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    goto :goto_2

    :cond_9
    if-eqz v0, :cond_b

    if-eqz v4, :cond_b

    .line 360
    sget-boolean p1, Lcom/android/systemui/doze/DozeTriggers;->DEBUG:Z

    if-eqz p1, :cond_a

    const-string p1, "Prox NEAR, pausing AOD"

    .line 361
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {p0, v6}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_b
    :goto_2
    return-void
.end method

.method private onWakeScreen(ZLcom/android/systemui/doze/DozeMachine$State;)V
    .locals 4

    .line 374
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeLog;->traceWakeDisplay(Z)V

    .line 375
    sput-boolean p1, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    const/4 v0, 0x7

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 378
    new-instance p1, Lcom/android/systemui/doze/DozeTriggers-$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/doze/DozeTriggers-$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/doze/DozeTriggers;Lcom/android/systemui/doze/DozeMachine$State;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/doze/DozeTriggers;->proximityCheckThenCall(Ljava/util/function/Consumer;ZI)V

    goto :goto_2

    .line 392
    :cond_0
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/systemui/doze/DozeMachine$State;

    const/4 v2, 0x0

    if-ne p2, p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 393
    :goto_0
    sget-object v3, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-nez v1, :cond_3

    if-nez p1, :cond_3

    .line 395
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p2, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 397
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance p1, Landroid/metrics/LogMaker;

    const/16 p2, 0xdf

    invoke-direct {p1, p2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p2, 0x2

    .line 398
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 399
    invoke-virtual {p1, v0}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private proximityCheckThenCall(Ljava/util/function/Consumer;ZI)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;ZI)V"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeSensors;->isProximityCurrentlyNear()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 241
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 243
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 245
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 246
    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mProxCheck:Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;

    const-wide/16 v6, 0x1f4

    new-instance v8, Lcom/android/systemui/doze/DozeTriggers-$$ExternalSyntheticLambda3;

    move-object v0, v8

    move-object v1, p0

    move v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/doze/DozeTriggers-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/doze/DozeTriggers;JILjava/util/function/Consumer;)V

    invoke-virtual {p2, v6, v7, v8}, Lcom/android/systemui/util/sensors/ProximitySensor$ProximityCheck;->check(JLjava/util/function/Consumer;)V

    .line 255
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const-string p1, "DozeTriggers"

    invoke-interface {p0, p1}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private requestPulse(IZLjava/lang/Runnable;)V
    .locals 2

    .line 473
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 474
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    invoke-interface {v0, p1}, Lcom/android/systemui/doze/DozeHost;->extendPulse(I)V

    .line 478
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 480
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING_BRIGHT:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    return-void

    .line 484
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mAllowPulseTriggers:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->canPulse()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 493
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    .line 494
    new-instance v1, Lcom/android/systemui/doze/DozeTriggers-$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p3, p1}, Lcom/android/systemui/doze/DozeTriggers-$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/doze/DozeTriggers;Ljava/lang/Runnable;I)V

    iget-object p3, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 504
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getProxCheckBeforePulse()Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 494
    :cond_3
    :goto_0
    invoke-direct {p0, v1, v0, p1}, Lcom/android/systemui/doze/DozeTriggers;->proximityCheckThenCall(Ljava/util/function/Consumer;ZI)V

    .line 507
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance p2, Landroid/metrics/LogMaker;

    const/16 p3, 0xdf

    invoke-direct {p2, p3}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p3, 0x6

    .line 508
    invoke-virtual {p2, p3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 507
    invoke-virtual {p0, p2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 509
    invoke-static {p1}, Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;->fromReason(I)Lcom/android/systemui/doze/DozeTriggers$DozingUpdateUiEvent;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/doze/DozeTriggers;->UI_EVENT_LOGGER:Lcom/android/internal/logging/UiEventLogger;

    .line 510
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/systemui/doze/DozeTriggers-$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/android/systemui/doze/DozeTriggers-$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    invoke-virtual {p0, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    .line 485
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mAllowPulseTriggers:Z

    if-eqz p1, :cond_5

    .line 486
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    iget-boolean p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    .line 487
    invoke-interface {p0}, Lcom/android/systemui/doze/DozeHost;->isPulsingBlocked()Z

    move-result p0

    .line 486
    invoke-virtual {p1, p2, v0, p0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(ZLcom/android/systemui/doze/DozeMachine$State;Z)V

    .line 489
    :cond_5
    invoke-static {p3}, Lcom/android/systemui/doze/DozeTriggers;->runIfNotNull(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static runIfNotNull(Ljava/lang/Runnable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 232
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors;->destroy()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, " notificationPulseTime="

    .line 531
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " pulsePending="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mPulsePending:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "DozeSensors:"

    .line 535
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 537
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 538
    iget-object p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeSensors;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public onScreenState(I)V
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {v0, p1}, Lcom/android/systemui/doze/DozeSensors;->onScreenState(I)V

    .line 457
    iget-object v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantProx:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    .line 460
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantSensors:Z

    iget-boolean p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantTouchScreenSensors:Z

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/doze/DozeSensors;->setListening(ZZ)V

    return-void
.end method

.method onSensor(IFF[F)V
    .locals 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v9, p4

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v0, 0x4

    if-ne v11, v0, :cond_0

    move v2, v13

    goto :goto_0

    :cond_0
    move v2, v12

    :goto_0
    const/16 v0, 0x9

    if-ne v11, v0, :cond_1

    move v3, v13

    goto :goto_1

    :cond_1
    move v3, v12

    :goto_1
    const/4 v0, 0x3

    if-ne v11, v0, :cond_2

    move v14, v13

    goto :goto_2

    :cond_2
    move v14, v12

    :goto_2
    const/4 v0, 0x5

    if-ne v11, v0, :cond_3

    move v0, v13

    goto :goto_3

    :cond_3
    move v0, v12

    :goto_3
    const/4 v1, 0x7

    if-ne v11, v1, :cond_4

    move v1, v13

    goto :goto_4

    :cond_4
    move v1, v12

    :goto_4
    const/16 v4, 0x8

    if-ne v11, v4, :cond_5

    move v4, v13

    goto :goto_5

    :cond_5
    move v4, v12

    :goto_5
    const/16 v5, 0xa

    if-ne v11, v5, :cond_6

    move v8, v13

    goto :goto_6

    :cond_6
    move v8, v12

    :goto_6
    if-eqz v9, :cond_7

    .line 268
    array-length v5, v9

    if-lez v5, :cond_7

    aget v5, v9, v12

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_7

    move v5, v13

    goto :goto_7

    :cond_7
    move v5, v12

    :goto_7
    const/4 v6, 0x0

    if-eqz v1, :cond_9

    .line 271
    iget-object v0, v10, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->isExecutingTransition()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_8

    :cond_8
    iget-object v0, v10, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    invoke-virtual {v0}, Lcom/android/systemui/doze/DozeMachine;->getState()Lcom/android/systemui/doze/DozeMachine$State;

    move-result-object v6

    :goto_8
    invoke-direct {v10, v5, v6}, Lcom/android/systemui/doze/DozeTriggers;->onWakeScreen(ZLcom/android/systemui/doze/DozeMachine$State;)V

    goto :goto_9

    :cond_9
    if-eqz v0, :cond_a

    .line 273
    invoke-direct {v10, v11, v13, v6}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLjava/lang/Runnable;)V

    goto :goto_9

    :cond_a
    if-eqz v4, :cond_b

    if-eqz v5, :cond_c

    .line 277
    invoke-direct {v10, v11, v13, v6}, Lcom/android/systemui/doze/DozeTriggers;->requestPulse(IZLjava/lang/Runnable;)V

    goto :goto_9

    .line 281
    :cond_b
    new-instance v15, Lcom/android/systemui/doze/DozeTriggers-$$ExternalSyntheticLambda6;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p1

    move v7, v14

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/doze/DozeTriggers-$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/doze/DozeTriggers;ZZFFIZZ[F)V

    invoke-direct {v10, v15, v13, v11}, Lcom/android/systemui/doze/DozeTriggers;->proximityCheckThenCall(Ljava/util/function/Consumer;ZI)V

    :cond_c
    :goto_9
    if-eqz v14, :cond_e

    .line 307
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, v10, Lcom/android/systemui/doze/DozeTriggers;->mNotificationPulseTime:J

    sub-long/2addr v0, v2

    .line 308
    iget-object v2, v10, Lcom/android/systemui/doze/DozeTriggers;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 309
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPickupVibrationThreshold()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    move v12, v13

    .line 310
    :cond_d
    iget-object v0, v10, Lcom/android/systemui/doze/DozeTriggers;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    invoke-virtual {v0, v12}, Lcom/android/systemui/doze/DozeLog;->tracePickupWakeUp(Z)V

    :cond_e
    return-void
.end method

.method public setDozeMachine(Lcom/android/systemui/doze/DozeMachine;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mMachine:Lcom/android/systemui/doze/DozeMachine;

    return-void
.end method

.method public transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 2

    .line 406
    sget-object p1, Lcom/android/systemui/doze/DozeTriggers$2;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 440
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->unregister(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 441
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {p1, p2}, Lcom/android/systemui/doze/DozeHost;->removeCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    .line 442
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDockManager:Lcom/android/systemui/dock/DockManager;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mDockEventListener:Lcom/android/systemui/doze/DozeTriggers$DockEventListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/dock/DockManager;->removeListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    .line 443
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1, v1, v1}, Lcom/android/systemui/doze/DozeSensors;->setListening(ZZ)V

    .line 444
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1, v1}, Lcom/android/systemui/doze/DozeSensors;->setProxListening(Z)V

    .line 445
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantSensors:Z

    .line 446
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantProx:Z

    .line 447
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantTouchScreenSensors:Z

    goto :goto_1

    .line 437
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeSensors;->requestTemporaryDisable()V

    goto :goto_1

    .line 433
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantProx:Z

    .line 434
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantTouchScreenSensors:Z

    goto :goto_1

    .line 429
    :pswitch_3
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantProx:Z

    .line 430
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantTouchScreenSensors:Z

    goto :goto_1

    .line 425
    :pswitch_4
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantProx:Z

    goto :goto_1

    .line 416
    :pswitch_5
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    if-eq p2, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantProx:Z

    .line 417
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantSensors:Z

    .line 418
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantTouchScreenSensors:Z

    .line 419
    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, p1, :cond_1

    sget-boolean p1, Lcom/android/systemui/doze/DozeTriggers;->sWakeDisplaySensorState:Z

    if-nez p1, :cond_1

    .line 420
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/doze/DozeTriggers;->onWakeScreen(ZLcom/android/systemui/doze/DozeMachine$State;)V

    goto :goto_1

    .line 408
    :pswitch_6
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastReceiver:Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p1, p2}, Lcom/android/systemui/doze/DozeTriggers$TriggerReceiver;->register(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 409
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {p1, p2}, Lcom/android/systemui/doze/DozeHost;->addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    .line 410
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDockManager:Lcom/android/systemui/dock/DockManager;

    iget-object p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mDockEventListener:Lcom/android/systemui/doze/DozeTriggers$DockEventListener;

    invoke-interface {p1, p2}, Lcom/android/systemui/dock/DockManager;->addListener(Lcom/android/systemui/dock/DockManager$DockEventListener;)V

    .line 411
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    invoke-virtual {p1}, Lcom/android/systemui/doze/DozeSensors;->requestTemporaryDisable()V

    .line 412
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeTriggers;->checkTriggersAtInit()V

    .line 451
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/doze/DozeTriggers;->mDozeSensors:Lcom/android/systemui/doze/DozeSensors;

    iget-boolean p2, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantSensors:Z

    iget-boolean p0, p0, Lcom/android/systemui/doze/DozeTriggers;->mWantTouchScreenSensors:Z

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/doze/DozeSensors;->setListening(ZZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
