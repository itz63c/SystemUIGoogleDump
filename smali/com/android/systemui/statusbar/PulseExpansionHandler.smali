.class public final Lcom/android/systemui/statusbar/PulseExpansionHandler;
.super Ljava/lang/Object;
.source "PulseExpansionHandler.kt"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/PulseExpansionHandler$Companion;,
        Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/PulseExpansionHandler$Companion;

.field private static final RUBBERBAND_FACTOR_STATIC:F

.field private static final SPRING_BACK_ANIMATION_LENGTH_MS:I


# instance fields
.field private bouncerShowing:Z

.field private final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private expansionCallback:Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;

.field private final falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field private final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private isExpanding:Z

.field private isWakingToShadeLocked:Z

.field private leavingLockscreen:Z

.field private mDraggedFarEnough:Z

.field private mEmptyDragAmount:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private final mMinDragDistance:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPulsing:Z

.field private mReachedWakeUpHeight:Z

.field private mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field private final mTemp2:[I

.field private final mTouchSlop:F

.field private mWakeUpHeight:F

.field private pulseExpandAbortListener:Ljava/lang/Runnable;

.field private qsExpanded:Z

.field private final roundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

.field private shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private stackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field private final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private velocityTracker:Landroid/view/VelocityTracker;

.field private final wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/PulseExpansionHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->Companion:Lcom/android/systemui/statusbar/PulseExpansionHandler$Companion;

    const/high16 v0, 0x3e800000    # 0.25f

    .line 65
    sput v0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->RUBBERBAND_FACTOR_STATIC:F

    const/16 v0, 0x177

    .line 66
    sput v0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->SPRING_BACK_ANIMATION_LENGTH_MS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wakeUpCoordinator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bypassController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headsUpManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "roundnessManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBarStateController"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falsingManager"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "falsingCollector"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    .line 57
    iput-object p3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 58
    iput-object p4, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 59
    iput-object p5, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->roundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    .line 60
    iput-object p6, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 61
    iput-object p7, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 62
    iput-object p8, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 100
    iput-object p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mTemp2:[I

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 119
    sget p3, Lcom/android/systemui/R$dimen;->keyguard_drag_down_min_distance:I

    .line 118
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mMinDragDistance:I

    .line 120
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mTouchSlop:F

    .line 121
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method public static final synthetic access$setEmptyDragAmount(Lcom/android/systemui/statusbar/PulseExpansionHandler;F)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setEmptyDragAmount(F)V

    return-void
.end method

.method public static final synthetic access$setUserLocked(Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setUserLocked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    return-void
.end method

.method private final canHandleMotionEvent()Z
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getCanShowPulsingHuns()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->qsExpanded:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bouncerShowing:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final cancelExpansion()V
    .locals 2

    const/4 v0, 0x0

    .line 305
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setExpanding(Z)V

    .line 306
    iget-object v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v1}, Lcom/android/systemui/classifier/FalsingCollector;->onExpansionFromPulseStopped()V

    .line 307
    iget-object v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v1, :cond_0

    .line 308
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->reset(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    const/4 v1, 0x0

    .line 309
    iput-object v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    goto :goto_0

    .line 311
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->resetClock()V

    .line 313
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisibleForExpansion(ZZZ)V

    return-void
.end method

.method private final captureStartingChild(FF)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->findView(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p1, :cond_0

    .line 263
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setUserLocked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    :cond_0
    return-void
.end method

.method private final findView(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 4

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->stackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const-string v1, "stackScrollerController"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mTemp2:[I

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getLocationOnScreen([I)V

    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mTemp2:[I

    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-float v3, v3

    add-float/2addr p1, v3

    const/4 v3, 0x1

    .line 323
    aget v0, v0, v3

    int-to-float v0, v0

    add-float/2addr p2, v0

    .line 324
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->stackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->isContentExpandable()Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v2, p0

    :cond_0
    return-object v2

    .line 324
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 321
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final finishExpansion()V
    .locals 8

    .line 217
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->resetClock()V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setUserLocked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    .line 220
    iput-object v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 223
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isWakingToShadeLocked:Z

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setWillWakeUp(Z)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x4

    const-string v7, "com.android.systemui:PULSEDRAG"

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->goToLockedShade(Landroid/view/View;)V

    .line 229
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->leavingLockscreen:Z

    .line 230
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setExpanding(Z)V

    .line 231
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    instance-of v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_2

    .line 232
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 233
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->onExpandedByGesture(Z)V

    :cond_2
    return-void

    :cond_3
    const-string p0, "shadeController"

    .line 228
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final isFalseTouch()Z
    .locals 1

    .line 112
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    move-result p0

    return p0
.end method

.method private final recycleVelocityTracker()V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :goto_0
    const/4 v0, 0x0

    .line 179
    iput-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private final reset(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 3

    .line 274
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 275
    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setUserLocked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 279
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result v1

    aput v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result v2

    aput v2, v0, v1

    const-string v1, "actualHeight"

    .line 278
    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 280
    sget-object v1, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 281
    sget v1, Lcom/android/systemui/statusbar/PulseExpansionHandler;->SPRING_BACK_ANIMATION_LENGTH_MS:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 282
    new-instance v1, Lcom/android/systemui/statusbar/PulseExpansionHandler$reset$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler$reset$1;-><init>(Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 287
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private final resetClock()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 297
    iget v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mEmptyDragAmount:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 298
    sget-object v1, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 299
    sget v1, Lcom/android/systemui/statusbar/PulseExpansionHandler;->SPRING_BACK_ANIMATION_LENGTH_MS:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 300
    new-instance v1, Lcom/android/systemui/statusbar/PulseExpansionHandler$resetClock$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler$resetClock$1;-><init>(Lcom/android/systemui/statusbar/PulseExpansionHandler;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 301
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private final setEmptyDragAmount(F)V
    .locals 0

    .line 269
    iput p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mEmptyDragAmount:F

    .line 270
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->expansionCallback:Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;->setEmptyDragAmount(F)V

    return-void

    :cond_0
    const-string p0, "expansionCallback"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final setExpanding(Z)V
    .locals 3

    .line 76
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    .line 78
    iget-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setPulseExpanding(Z)V

    if-eqz v0, :cond_5

    if-eqz p1, :cond_2

    .line 81
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->roundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->setTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_1

    .line 86
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->roundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->setTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 87
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->leavingLockscreen:Z

    if-nez p1, :cond_4

    .line 88
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->maybePerformPendingUnlock()V

    .line 89
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->pulseExpandAbortListener:Ljava/lang/Runnable;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 92
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->headsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->unpinAll(Z)V

    :cond_5
    return-void
.end method

.method private final setUserLocked(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .locals 0

    .line 291
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz p0, :cond_0

    .line 292
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserLocked(Z)V

    :cond_0
    return-void
.end method

.method private final startExpansion(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 134
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->recycleVelocityTracker()V

    .line 171
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setExpanding(Z)V

    goto :goto_0

    .line 151
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    sub-float p1, v1, p1

    .line 152
    iget v4, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mTouchSlop:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_5

    iget v4, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchX:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float p1, p1, v4

    if-lez p1, :cond_5

    .line 153
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {p1}, Lcom/android/systemui/classifier/FalsingCollector;->onStartExpandingFromPulse()V

    .line 154
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setExpanding(Z)V

    .line 155
    iget p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchX:F

    iget v4, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    invoke-direct {p0, p1, v4}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->captureStartingChild(FF)V

    .line 156
    iput v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    .line 157
    iput v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchX:F

    .line 158
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getWakeUpHeight()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mWakeUpHeight:F

    .line 159
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mReachedWakeUpHeight:Z

    return v3

    .line 165
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->recycleVelocityTracker()V

    .line 166
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setExpanding(Z)V

    goto :goto_0

    .line 142
    :cond_4
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mDraggedFarEnough:Z

    .line 143
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setExpanding(Z)V

    .line 144
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->leavingLockscreen:Z

    const/4 p1, 0x0

    .line 145
    iput-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 146
    iput v1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    .line 147
    iput v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchX:F

    :cond_5
    :goto_0
    return v2
.end method

.method private final updateExpansionHeight(F)V
    .locals 4

    const/4 v0, 0x0

    .line 238
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 239
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mReachedWakeUpHeight:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mWakeUpHeight:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 240
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mReachedWakeUpHeight:Z

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mStartingChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v2, :cond_1

    .line 243
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 244
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getCollapsedHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 245
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMaxContentHeight()I

    move-result v0

    .line 244
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 246
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setActualHeight(I)V

    int-to-float p1, p1

    .line 247
    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_1

    .line 249
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mReachedWakeUpHeight:Z

    if-eqz v2, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mWakeUpHeight:F

    .line 250
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    move p1, v3

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v2, p1, v3, v3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisibleForExpansion(ZZZ)V

    .line 253
    iget p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mWakeUpHeight:F

    invoke-static {p1, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 255
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->wakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setPulseHeight(F)F

    move-result p1

    .line 256
    sget v0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->RUBBERBAND_FACTOR_STATIC:F

    mul-float/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setEmptyDragAmount(F)V

    return-void
.end method


# virtual methods
.method public final getLeavingLockscreen()Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->leavingLockscreen:Z

    return p0
.end method

.method public final isExpanding()Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    return p0
.end method

.method public final isWakingToShadeLocked()Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isWakingToShadeLocked:Z

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->canHandleMotionEvent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->startExpansion(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onStartedWakingUp()V
    .locals 1

    const/4 v0, 0x0

    .line 345
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isWakingToShadeLocked:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->canHandleMotionEvent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    if-eqz v0, :cond_7

    .line 188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 194
    iget v2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mInitialTouchY:F

    sub-float/2addr v0, v2

    .line 195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 209
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->cancelExpansion()V

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->recycleVelocityTracker()V

    goto :goto_1

    .line 196
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->updateExpansionHeight(F)V

    goto :goto_1

    .line 198
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v3, 0x3e8

    invoke-virtual {p1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_5

    .line 199
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    const/high16 v0, -0x3b860000    # -1000.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    .line 200
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-eqz p1, :cond_5

    move v1, v2

    .line 201
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isFalseTouch()Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz v1, :cond_6

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->finishExpansion()V

    goto :goto_0

    .line 204
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->cancelExpansion()V

    .line 206
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->recycleVelocityTracker()V

    .line 213
    :goto_1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding:Z

    return p0

    .line 189
    :cond_7
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->startExpansion(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final setBouncerShowing(Z)V
    .locals 0

    .line 115
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->bouncerShowing:Z

    return-void
.end method

.method public final setPulseExpandAbortListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->pulseExpandAbortListener:Ljava/lang/Runnable;

    return-void
.end method

.method public final setPulsing(Z)V
    .locals 0

    .line 341
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->mPulsing:Z

    return-void
.end method

.method public final setQsExpanded(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->qsExpanded:Z

    return-void
.end method

.method public final setUp(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;Lcom/android/systemui/statusbar/phone/ShadeController;)V
    .locals 1

    const-string v0, "stackScrollerController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expansionCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shadeController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    iput-object p2, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->expansionCallback:Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;

    .line 336
    iput-object p3, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->shadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 337
    iput-object p1, p0, Lcom/android/systemui/statusbar/PulseExpansionHandler;->stackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    return-void
.end method
