.class Lcom/android/systemui/classifier/FalsingCollectorImpl;
.super Ljava/lang/Object;
.source "FalsingCollectorImpl.java"

# interfaces
.implements Lcom/android/systemui/classifier/FalsingCollector;


# instance fields
.field private mAvoidGesture:Z

.field private final mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mPendingDownEvent:Landroid/view/MotionEvent;

.field private final mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

.field private mScreenOn:Z

.field private final mSensorEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

.field private mSessionStarted:Z

.field private mShowingAod:Z

.field private mState:I

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# direct methods
.method public static synthetic $r8$lambda$GHD5NqS_UivQZRtWSaZkM3kaw9Y(Lcom/android/systemui/classifier/FalsingCollectorImpl;Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->onProximityEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/systemui/classifier/FalsingCollectorImpl-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSensorEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    .line 57
    new-instance v0, Lcom/android/systemui/classifier/FalsingCollectorImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl$1;-><init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V

    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 68
    new-instance v1, Lcom/android/systemui/classifier/FalsingCollectorImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl$2;-><init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V

    iput-object v1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 85
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 86
    iput-object p2, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 87
    iput-object p3, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 88
    iput-object p4, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 89
    iput-object p5, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    const-string p1, "FalsingManager"

    .line 92
    invoke-virtual {p4, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->setTag(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 93
    invoke-virtual {p4, p1}, Lcom/android/systemui/util/sensors/ProximitySensor;->setDelay(I)V

    .line 95
    invoke-interface {p5, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 96
    invoke-interface {p5}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mState:I

    .line 98
    invoke-virtual {p3, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/classifier/FalsingCollectorImpl;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateSessionActive()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/classifier/FalsingCollectorImpl;)Lcom/android/systemui/classifier/FalsingDataProvider;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    return-object p0
.end method

.method static logDebug(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 339
    invoke-static {p0, v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static logDebug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method private onProximityEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->onProximityEvent(Lcom/android/systemui/util/sensors/ThresholdSensor$ThresholdSensorEvent;)V

    return-void
.end method

.method private registerSensors()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->isWirelessCharging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSensorEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    :cond_0
    return-void
.end method

.method private sessionEnd()V
    .locals 1

    .line 313
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSessionStarted:Z

    if-eqz v0, :cond_0

    const-string v0, "Ending Session"

    .line 314
    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 315
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSessionStarted:Z

    .line 316
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->unregisterSensors()V

    .line 317
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->onSessionEnd()V

    :cond_0
    return-void
.end method

.method private sessionStart()V
    .locals 2

    .line 303
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSessionStarted:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->shouldSessionBeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Starting Session"

    .line 304
    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 305
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSessionStarted:Z

    .line 306
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/FalsingDataProvider;->setJustUnlockedWithFace(Z)V

    .line 307
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->registerSensors()V

    .line 308
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingDataProvider;->onSessionStarted()V

    :cond_0
    return-void
.end method

.method private shouldSessionBeActive()Z
    .locals 2

    .line 291
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

    .line 328
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSensorEventListener:Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/util/sensors/ProximitySensor;->unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    return-void
.end method

.method private updateInteractionType(I)V
    .locals 2

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InteractionType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->logDebug(Ljava/lang/String;)V

    .line 287
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->setInteractionType(I)V

    return-void
.end method

.method private updateSessionActive()V
    .locals 1

    .line 295
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->shouldSessionBeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->sessionStart()V

    goto :goto_0

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->sessionEnd()V

    :goto_0
    return-void
.end method


# virtual methods
.method public avoidGesture()V
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 272
    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mAvoidGesture:Z

    .line 273
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 274
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

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 168
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateInteractionType(I)V

    return-void
.end method

.method public onBouncerHidden()V
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSessionStarted:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->registerSensors()V

    :cond_0
    return-void
.end method

.method public onBouncerShown()V
    .locals 0

    .line 238
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

.method public onNotificationActive()V
    .locals 0

    return-void
.end method

.method public onNotificationDismissed()V
    .locals 0

    return-void
.end method

.method public onNotificationStartDismissing()V
    .locals 1

    const/4 v0, 0x1

    .line 229
    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateInteractionType(I)V

    return-void
.end method

.method public onNotificationStartDraggingDown()V
    .locals 1

    const/4 v0, 0x2

    .line 119
    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateInteractionType(I)V

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
    .locals 1

    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateInteractionType(I)V

    return-void
.end method

.method public onScreenOff()V
    .locals 1

    const/4 v0, 0x0

    .line 215
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mScreenOn:Z

    .line 216
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateSessionActive()V

    return-void
.end method

.method public onScreenOnFromTouch()V
    .locals 0

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->onScreenTurningOn()V

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 1

    const/4 v0, 0x1

    .line 209
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mScreenOn:Z

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateSessionActive()V

    return-void
.end method

.method public onStartExpandingFromPulse()V
    .locals 1

    const/16 v0, 0x9

    .line 178
    invoke-direct {p0, v0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateInteractionType(I)V

    return-void
.end method

.method public onSuccessfulUnlock()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->onSuccessfulUnlock()V

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->sessionEnd()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 257
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    const/4 p1, 0x0

    .line 258
    iput-boolean p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mAvoidGesture:Z

    goto :goto_0

    .line 259
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mAvoidGesture:Z

    if-nez v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 261
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {v1, v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 262
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    .line 265
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTrackingStarted(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 151
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateInteractionType(I)V

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

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->unregisterSensors()V

    goto :goto_0

    .line 139
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSessionStarted:Z

    if-eqz p1, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->registerSensors()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setShowingAod(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mShowingAod:Z

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->updateSessionActive()V

    return-void
.end method

.method public shouldEnforceBouncer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
