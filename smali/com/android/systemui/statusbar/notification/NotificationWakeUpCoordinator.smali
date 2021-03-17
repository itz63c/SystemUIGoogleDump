.class public final Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;
.super Ljava/lang/Object;
.source "NotificationWakeUpCoordinator.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/phone/PanelExpansionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationWakeUpCoordinator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationWakeUpCoordinator.kt\ncom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,445:1\n1819#2,2:446\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationWakeUpCoordinator.kt\ncom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator\n*L\n373#1,2:446\n*E\n"
.end annotation


# instance fields
.field private animatingScreenOff:Z

.field private final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private collapsedEnoughToHide:Z

.field private final dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private fullyAwake:Z

.field private mDozeAmount:F

.field private final mEntrySetToClearWhenFinished:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mLinearDozeAmount:F

.field private mLinearVisibilityAmount:F

.field private final mNotificationVisibility:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$mNotificationVisibility$1;

.field private mNotificationVisibleAmount:F

.field private mNotificationsVisible:Z

.field private mNotificationsVisibleForExpansion:Z

.field private mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field private mVisibilityAmount:F

.field private mVisibilityAnimator:Landroid/animation/ObjectAnimator;

.field private mVisibilityInterpolator:Landroid/view/animation/Interpolator;

.field private notificationsFullyHidden:Z

.field private pulseExpanding:Z

.field private pulsing:Z

.field private state:I

.field private final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final wakeUpListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;",
            ">;"
        }
    .end annotation
.end field

.field private wakingUp:Z

.field private willWakeUp:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 1

    const-string v0, "mHeadsUpManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBarStateController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bypassController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dozeParameters"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 39
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 40
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 41
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 44
    new-instance p3, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$mNotificationVisibility$1;

    invoke-direct {p3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$mNotificationVisibility$1;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationVisibility:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$mNotificationVisibility$1;

    .line 56
    sget-object p3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityInterpolator:Landroid/view/animation/Interpolator;

    .line 66
    new-instance p3, Ljava/util/LinkedHashSet;

    invoke-direct {p3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    .line 68
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakeUpListeners:Ljava/util/ArrayList;

    const/4 p3, 0x1

    .line 69
    iput p3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    .line 144
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 145
    invoke-interface {p2, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 146
    new-instance p1, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->addListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    return-void
.end method

.method public static final synthetic access$getMLinearVisibilityAmount$p(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)F
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    return p0
.end method

.method public static final synthetic access$getMNotificationsVisibleForExpansion$p(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisibleForExpansion:Z

    return p0
.end method

.method public static final synthetic access$getPulseExpanding$p(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulseExpanding:Z

    return p0
.end method

.method public static final synthetic access$getWakeUpListeners$p(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakeUpListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$setPulseExpanding$p(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulseExpanding:Z

    return-void
.end method

.method public static final synthetic access$setVisibilityAmount(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setVisibilityAmount(F)V

    return-void
.end method

.method private final handleAnimationFinished()V
    .locals 4

    .line 372
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearDozeAmount:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_4

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 373
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setHeadsUpAnimatingAway(Z)V

    goto :goto_2

    .line 374
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    :cond_4
    return-void
.end method

.method private final notifyAnimationStart(Z)V
    .locals 0

    .line 390
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-eqz p0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->notifyHideAnimationStart(Z)V

    return-void

    :cond_0
    const-string p0, "mStackScrollerController"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final overrideDozeAmountIfAnimatingScreenOff(F)Z
    .locals 3

    .line 331
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->animatingScreenOff:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 333
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->animatingScreenOff:Z

    return v1

    .line 337
    :cond_1
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setDozeAmount(FF)V

    return v2

    :cond_2
    return v1
.end method

.method private final overrideDozeAmountIfBypass()Z
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 312
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 316
    :cond_1
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setDozeAmount(FF)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private final setNotificationsFullyHidden(Z)V
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notificationsFullyHidden:Z

    if-eq v0, p1, :cond_0

    .line 118
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notificationsFullyHidden:Z

    .line 119
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakeUpListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;

    .line 120
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;->onFullyHiddenChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setNotificationsVisible(ZZZ)V
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 226
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    .line 227
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :goto_0
    if-eqz p2, :cond_2

    .line 229
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notifyAnimationStart(Z)V

    .line 230
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->startVisibilityAnimation(Z)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 232
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setVisibilityAmount(F)V

    :goto_2
    return-void
.end method

.method private final setVisibilityAmount(F)V
    .locals 1

    .line 364
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityAmount:F

    .line 367
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->handleAnimationFinished()V

    .line 368
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateHideAmount()V

    return-void
.end method

.method private final shouldAnimateVisibility()Z
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final startVisibilityAnimation(Z)V
    .locals 6

    .line 345
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationVisibleAmount:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v2, :cond_2

    cmpg-float v0, v0, v5

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    if-eqz v0, :cond_4

    .line 346
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-eqz v0, :cond_3

    .line 347
    sget-object v0, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    goto :goto_2

    .line 349
    :cond_3
    sget-object v0, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN_REVERSE:Landroid/view/animation/Interpolator;

    .line 346
    :goto_2
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityInterpolator:Landroid/view/animation/Interpolator;

    .line 351
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-eqz v0, :cond_5

    move v1, v5

    .line 352
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationVisibility:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$mNotificationVisibility$1;

    new-array v2, v3, [F

    aput v1, v2, v4

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 353
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x1f4

    if-eqz p1, :cond_6

    long-to-float p1, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    div-float/2addr p1, v1

    float-to-long v1, p1

    .line 358
    :cond_6
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 359
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 360
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private final updateHideAmount()V
    .locals 4

    .line 383
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearDozeAmount:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 384
    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mVisibilityAmount:F

    sub-float v2, v1, v2

    iget v3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mDozeAmount:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 385
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setHideAmount(FF)V

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 386
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsFullyHidden(Z)V

    return-void

    :cond_1
    const-string p0, "mStackScrollerController"

    .line 385
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final updateNotificationVisibility(ZZ)V
    .locals 5

    .line 207
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisibleForExpansion:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->hasNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getCanShowPulsingHuns()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    if-nez v0, :cond_5

    .line 210
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakingUp:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    if-eqz v3, :cond_5

    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mDozeAmount:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-nez v3, :cond_4

    move v1, v2

    :cond_4
    if-nez v1, :cond_5

    return-void

    .line 215
    :cond_5
    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisible(ZZZ)V

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakeUpListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getCanShowPulsingHuns()Z
    .locals 3

    .line 130
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulsing:Z

    .line 131
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 133
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakingUp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->fullyAwake:Z

    if-eqz v0, :cond_1

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    .line 136
    :goto_1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->collapsedEnoughToHide:Z

    if-eqz p0, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method

.method public final getNotificationsFullyHidden()Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notificationsFullyHidden:Z

    return p0
.end method

.method public final getWakeUpHeight()F
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getWakeUpHeight()F

    move-result p0

    return p0

    :cond_0
    const-string p0, "mStackScrollerController"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final isPulseExpanding()Z
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isPulseExpanding()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "mStackScrollerController"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public onDozeAmountChanged(FF)V
    .locals 5

    .line 237
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->overrideDozeAmountIfBypass()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 241
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->overrideDozeAmountIfAnimatingScreenOff(F)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-nez v1, :cond_8

    const/4 v1, 0x0

    cmpg-float v4, p1, v1

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    if-nez v4, :cond_8

    .line 246
    iget v4, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearDozeAmount:F

    cmpg-float v1, v4, v1

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    if-nez v1, :cond_6

    cmpg-float v1, v4, v0

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v3

    :goto_3
    if-eqz v1, :cond_8

    :cond_6
    cmpg-float v0, v4, v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    move v2, v3

    .line 248
    :goto_4
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->notifyAnimationStart(Z)V

    .line 250
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setDozeAmount(FF)V

    return-void
.end method

.method public onDozingChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 395
    invoke-direct {p0, p1, p1, p1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisible(ZZZ)V

    :cond_0
    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 4

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->shouldAnimateVisibility()Z

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_3

    .line 412
    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearDozeAmount:F

    const/4 v2, 0x0

    cmpg-float p2, p2, v2

    const/4 v3, 0x1

    if-nez p2, :cond_0

    move p2, v3

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-nez p2, :cond_4

    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearVisibilityAmount:F

    cmpg-float p2, p2, v2

    if-nez p2, :cond_1

    move p2, v3

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    if-nez p2, :cond_4

    .line 413
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result p2

    if-eqz p2, :cond_2

    move v0, v1

    goto :goto_2

    .line 417
    :cond_2
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakingUp:Z

    if-nez p2, :cond_4

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    if-nez p2, :cond_4

    .line 419
    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setHeadsUpAnimatingAway(Z)V

    .line 420
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 423
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 424
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mEntrySetToClearWhenFinished:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 425
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setHeadsUpAnimatingAway(Z)V

    .line 427
    :cond_4
    :goto_2
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    return-void
.end method

.method public onPanelExpansionChanged(FZ)V
    .locals 1

    const p2, 0x3f666666    # 0.9f

    cmpg-float p1, p1, p2

    const/4 p2, 0x1

    if-gtz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 295
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->collapsedEnoughToHide:Z

    if-eq p1, v0, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getCanShowPulsingHuns()Z

    move-result v0

    .line 297
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->collapsedEnoughToHide:Z

    if-eqz v0, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->getCanShowPulsingHuns()Z

    move-result p1

    if-nez p1, :cond_1

    .line 299
    invoke-direct {p0, p2, p2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    .line 300
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    :cond_1
    return-void
.end method

.method public onStateChanged(I)V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->dozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlUnlockedScreenOff()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 268
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->animatingScreenOff:Z

    if-eqz v0, :cond_0

    .line 269
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    if-ne v0, v2, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setDozeAmount(FF)V

    .line 278
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    if-nez v0, :cond_1

    if-ne p1, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 277
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->animatingScreenOff:Z

    .line 281
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->overrideDozeAmountIfBypass()Z

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne p1, v2, :cond_4

    .line 283
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->shouldAnimateVisibility()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 286
    :cond_3
    invoke-direct {p0, v2, v1, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisible(ZZZ)V

    .line 287
    invoke-direct {p0, v1, v2, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisible(ZZZ)V

    .line 290
    :cond_4
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->state:I

    return-void
.end method

.method public final removeListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakeUpListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setDozeAmount(FF)V
    .locals 4

    .line 254
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearDozeAmount:F

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    xor-int/2addr v0, v1

    .line 255
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mLinearDozeAmount:F

    .line 256
    iput p2, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mDozeAmount:F

    .line 257
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-eqz v3, :cond_3

    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setDozeAmount(F)V

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateHideAmount()V

    if-eqz v0, :cond_2

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 260
    invoke-direct {p0, v2, v2, v2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisible(ZZZ)V

    .line 261
    invoke-virtual {p0, v2, v2, v2}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setNotificationsVisibleForExpansion(ZZZ)V

    :cond_2
    return-void

    :cond_3
    const-string p0, "mStackScrollerController"

    .line 257
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setFullyAwake(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->fullyAwake:Z

    return-void
.end method

.method public final setNotificationsVisibleForExpansion(ZZZ)V
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisibleForExpansion:Z

    .line 185
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    if-nez p1, :cond_0

    .line 186
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-eqz p1, :cond_0

    .line 190
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->releaseAllImmediately()V

    :cond_0
    return-void
.end method

.method public final setPulseHeight(F)F
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setPulseHeight(F)F

    move-result p1

    .line 406
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1

    :cond_1
    const-string p0, "mStackScrollerController"

    .line 404
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final setPulsing(Z)V
    .locals 1

    .line 105
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulsing:Z

    if-eqz p1, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->shouldAnimateVisibility()Z

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    :cond_0
    return-void
.end method

.method public final setStackScroller(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 1

    const-string v0, "stackScrollerController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 161
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isPulseExpanding()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->pulseExpanding:Z

    .line 162
    new-instance v0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$setStackScroller$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$setStackScroller$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOnPulseHeightChangedListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setWakingUp(Z)V
    .locals 1

    .line 75
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->wakingUp:Z

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setWillWakeUp(Z)V

    if-eqz p1, :cond_2

    .line 78
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisibleForExpansion:Z

    if-nez p1, :cond_1

    .line 79
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 81
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mStackScrollerController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->wakeUpFromPulse()V

    goto :goto_0

    :cond_0
    const-string p0, "mStackScrollerController"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    .line 83
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mNotificationsVisible:Z

    if-nez p1, :cond_2

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->shouldAnimateVisibility()Z

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->updateNotificationVisibility(ZZ)V

    :cond_2
    return-void
.end method

.method public final setWillWakeUp(Z)V
    .locals 2

    if-eqz p1, :cond_1

    .line 94
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->mDozeAmount:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 95
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->willWakeUp:Z

    :cond_2
    return-void
.end method
