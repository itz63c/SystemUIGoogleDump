.class Lcom/android/systemui/classifier/FalsingCollectorImpl;
.super Ljava/lang/Object;
.source "FalsingCollectorImpl.java"

# interfaces
.implements Lcom/android/systemui/classifier/FalsingCollector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/classifier/FalsingCollectorImpl$ProximityEventImpl;
    }
.end annotation


# instance fields
.field private mAvoidGesture:Z

.field private final mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private mPendingDownEvent:Landroid/view/MotionEvent;

.field private final mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

.field private mScreenOn:Z

.field private final mSensorEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

.field private mSessionStarted:Z

.field private mShowingAod:Z

.field private mState:I

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private final mSystemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public static synthetic $r8$lambda$GHD5NqS_UivQZRtWSaZkM3kaw9Y(Lcom/android/systemui/classifier/FalsingCollectorImpl;Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->onProximityEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/classifier/HistoryTracker;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSensorEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    .line 68
    new-instance v0, Lcom/android/systemui/classifier/FalsingCollectorImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl$1;-><init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 79
    new-instance v1, Lcom/android/systemui/classifier/FalsingCollectorImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl$2;-><init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 98
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 99
    iput-object p2, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 100
    iput-object p3, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 101
    iput-object p4, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    .line 102
    iput-object p5, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 103
    iput-object p6, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 104
    iput-object p7, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 105
    iput-object p8, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 106
    iput-object p9, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    const-string p1, "FalsingManager"

    .line 109
    invoke-virtual {p5, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->setTag(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 110
    invoke-virtual {p5, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->setDelay(I)V

    .line 112
    invoke-interface {p6, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 113
    invoke-interface {p6}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mState:I

    .line 115
    invoke-virtual {p3, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/classifier/FalsingCollectorImpl;I)I
    .locals 0

    .line 42
    iput p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateSessionActive()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/classifier/FalsingCollectorImpl;)Lcom/android/systemui/classifier/FalsingDataProvider;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    return-object p0
.end method

.method static logDebug(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 369
    invoke-static {p0, v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static logDebug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method private onProximityEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 1

    .line 364
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    new-instance v0, Lcom/android/systemui/classifier/FalsingCollectorImpl$ProximityEventImpl;

    invoke-direct {v0, p1}, Lcom/android/systemui/classifier/FalsingCollectorImpl$ProximityEventImpl;-><init>(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/FalsingManager;->onProximityEvent(Lcom/android/systemui/plugins/FalsingManager$ProximityEvent;)V

    return-void
.end method

.method private registerSensors()V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->isWirelessCharging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSensorEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    :cond_0
    return-void
.end method

.method private sessionEnd()V
    .locals 1

    .line 343
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSessionStarted:Z

    if-eqz v0, :cond_0

    const-string v0, "Ending Session"

    .line 344
    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 345
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSessionStarted:Z

    .line 346
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->unregisterSensors()V

    .line 347
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->onSessionEnd()V

    :cond_0
    return-void
.end method

.method private sessionStart()V
    .locals 2

    .line 333
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSessionStarted:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->shouldSessionBeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Starting Session"

    .line 334
    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 335
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSessionStarted:Z

    .line 336
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/FalsingDataProvider;->setJustUnlockedWithFace(Z)V

    .line 337
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->registerSensors()V

    .line 338
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->onSessionStarted()V

    :cond_0
    return-void
.end method

.method private shouldSessionBeActive()Z
    .locals 2

    .line 321
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mScreenOn:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mState:I

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mShowingAod:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private unregisterSensors()V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSensorEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    return-void
.end method

.method private updateSessionActive()V
    .locals 1

    .line 325
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->shouldSessionBeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->sessionStart()V

    goto :goto_0

    .line 328
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->sessionEnd()V

    :goto_0
    return-void
.end method


# virtual methods
.method public avoidGesture()V
    .locals 1

    const/4 v0, 0x1

    .line 301
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mAvoidGesture:Z

    .line 302
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 304
    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    :cond_0
    return-void
.end method

.method public isReportingEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAffordanceSwipingAborted()V
    .locals 0

    return-void
.end method

.method public onAffordanceSwipingStarted(Z)V
    .locals 0

    return-void
.end method

.method public onBouncerHidden()V
    .locals 1

    .line 253
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSessionStarted:Z

    if-eqz v0, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->registerSensors()V

    :cond_0
    return-void
.end method

.method public onBouncerShown()V
    .locals 0

    .line 248
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->unregisterSensors()V

    return-void
.end method

.method public onCameraHintStarted()V
    .locals 0

    return-void
.end method

.method public onCameraOn()V
    .locals 0

    return-void
.end method

.method public onExpansionFromPulseStopped()V
    .locals 0

    return-void
.end method

.method public onLeftAffordanceHintStarted()V
    .locals 0

    return-void
.end method

.method public onLeftAffordanceOn()V
    .locals 0

    return-void
.end method

.method public onMotionEventComplete()V
    .locals 4

    .line 295
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 296
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    const-wide/16 v2, 0x64

    .line 295
    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return-void
.end method

.method public onNotificationActive()V
    .locals 0

    return-void
.end method

.method public onNotificationDismissed()V
    .locals 0

    return-void
.end method

.method public onNotificationStartDismissing()V
    .locals 0

    return-void
.end method

.method public onNotificationStartDraggingDown()V
    .locals 0

    return-void
.end method

.method public onNotificationStopDismissing()V
    .locals 0

    return-void
.end method

.method public onNotificationStopDraggingDown()V
    .locals 0

    return-void
.end method

.method public onQsDown()V
    .locals 0

    return-void
.end method

.method public onScreenOff()V
    .locals 1

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mScreenOn:Z

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateSessionActive()V

    return-void
.end method

.method public onScreenOnFromTouch()V
    .locals 0

    .line 198
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->onScreenTurningOn()V

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 1

    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mScreenOn:Z

    .line 221
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateSessionActive()V

    return-void
.end method

.method public onStartExpandingFromPulse()V
    .locals 0

    return-void
.end method

.method public onSuccessfulUnlock()V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onSuccessfulUnlock()V

    .line 121
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->sessionEnd()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 269
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 271
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    const/4 p1, 0x0

    .line 272
    iput-boolean p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mAvoidGesture:Z

    goto :goto_0

    .line 273
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mAvoidGesture:Z

    if-nez v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2

    .line 275
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {v1, v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    .line 279
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_3
    :goto_0
    return-void

    .line 261
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->avoidGesture()V

    return-void
.end method

.method public onTrackingStarted(Z)V
    .locals 0

    return-void
.end method

.method public onTrackingStopped()V
    .locals 0

    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 0

    return-void
.end method

.method public setNotificationExpanded()V
    .locals 0

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->unregisterSensors()V

    goto :goto_0

    .line 154
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSessionStarted:Z

    if-eqz p1, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->registerSensors()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setShowingAod(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mShowingAod:Z

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateSessionActive()V

    return-void
.end method

.method public shouldEnforceBouncer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateFalseConfidence(Lcom/android/systemui/classifier/FalsingClassifier$Result;)V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/classifier/HistoryTracker;->addResults(Ljava/util/Collection;J)V

    return-void
.end method
