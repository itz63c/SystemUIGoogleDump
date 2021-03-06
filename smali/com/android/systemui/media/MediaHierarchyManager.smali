.class public final Lcom/android/systemui/media/MediaHierarchyManager;
.super Ljava/lang/Object;
.source "MediaHierarchyManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaHierarchyManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/media/MediaHierarchyManager$Companion;


# instance fields
.field private animationPending:Z

.field private animationStartBounds:Landroid/graphics/Rect;

.field private animator:Landroid/animation/ValueAnimator;

.field private final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private collapsingShadeFromQS:Z

.field private final context:Landroid/content/Context;

.field private currentAttachmentLocation:I

.field private currentBounds:Landroid/graphics/Rect;

.field private desiredLocation:I

.field private dozeAnimationRunning:Z

.field private fullyAwake:Z

.field private goingToSleep:Z

.field private final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

.field private final mediaHosts:[Lcom/android/systemui/media/MediaHost;

.field private final notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private previousLocation:I

.field private qsExpansion:F

.field private rootOverlay:Landroid/view/ViewGroupOverlay;

.field private rootView:Landroid/view/View;

.field private final startAnimation:Ljava/lang/Runnable;

.field private final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private statusbarState:I

.field private targetBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/MediaHierarchyManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/MediaHierarchyManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/MediaHierarchyManager;->Companion:Lcom/android/systemui/media/MediaHierarchyManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/media/MediaCarouselController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBarStateController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardStateController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bypassController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaCarouselController"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notifLockscreenUserManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "wakefulnessLifecycle"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->context:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 72
    iput-object p3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 73
    iput-object p4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 74
    iput-object p5, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    .line 75
    iput-object p6, p0, Lcom/android/systemui/media/MediaHierarchyManager;->notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 86
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    .line 87
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartBounds:Landroid/graphics/Rect;

    .line 88
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    .line 91
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 92
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 93
    sget-object p3, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 94
    new-instance p3, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 100
    new-instance p3, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$2;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 120
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 92
    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    const/4 p1, 0x3

    new-array p1, p1, [Lcom/android/systemui/media/MediaHost;

    .line 122
    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaHosts:[Lcom/android/systemui/media/MediaHost;

    const/4 p1, -0x1

    .line 128
    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    .line 133
    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    .line 141
    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    .line 147
    new-instance p1, Lcom/android/systemui/media/MediaHierarchyManager$startAnimation$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaHierarchyManager$startAnimation$1;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->startAnimation:Ljava/lang/Runnable;

    .line 224
    new-instance p1, Lcom/android/systemui/media/MediaHierarchyManager$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaHierarchyManager$1;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 249
    new-instance p1, Lcom/android/systemui/media/MediaHierarchyManager$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaHierarchyManager$2;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    invoke-virtual {p7, p1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final synthetic access$applyTargetStateIfNotAnimating(Lcom/android/systemui/media/MediaHierarchyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->applyTargetStateIfNotAnimating()V

    return-void
.end method

.method public static final synthetic access$getAnimationStartBounds$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic access$getAnimator$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic access$getCurrentBounds$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic access$getRootOverlay$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/view/ViewGroupOverlay;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootOverlay:Landroid/view/ViewGroupOverlay;

    return-object p0
.end method

.method public static final synthetic access$getRootView$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getStartAnimation$p(Lcom/android/systemui/media/MediaHierarchyManager;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->startAnimation:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getTargetBounds$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic access$interpolateBounds(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/media/MediaHierarchyManager;->interpolateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setAnimationPending$p(Lcom/android/systemui/media/MediaHierarchyManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationPending:Z

    return-void
.end method

.method public static final synthetic access$setDozeAnimationRunning(Lcom/android/systemui/media/MediaHierarchyManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->setDozeAnimationRunning(Z)V

    return-void
.end method

.method public static final synthetic access$setFullyAwake(Lcom/android/systemui/media/MediaHierarchyManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->setFullyAwake(Z)V

    return-void
.end method

.method public static final synthetic access$setGoingToSleep(Lcom/android/systemui/media/MediaHierarchyManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->setGoingToSleep(Z)V

    return-void
.end method

.method public static final synthetic access$setRootOverlay$p(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/view/ViewGroupOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootOverlay:Landroid/view/ViewGroupOverlay;

    return-void
.end method

.method public static final synthetic access$setRootView$p(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$setStatusbarState$p(Lcom/android/systemui/media/MediaHierarchyManager;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    return-void
.end method

.method public static final synthetic access$updateDesiredLocation(Lcom/android/systemui/media/MediaHierarchyManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation(Z)V

    return-void
.end method

.method public static final synthetic access$updateTargetState(Lcom/android/systemui/media/MediaHierarchyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateTargetState()V

    return-void
.end method

.method private final adjustAnimatorForTransition(II)V
    .locals 2

    .line 412
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->getAnimationParams(II)Lkotlin/Pair;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 413
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    .line 414
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 415
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    return-void
.end method

.method private final applyState(Landroid/graphics/Rect;Z)V
    .locals 3

    .line 538
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 539
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 540
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eqz p1, :cond_1

    .line 541
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getTransformationProgress()F

    move-result p1

    goto :goto_1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 542
    :goto_1
    iget v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    .line 543
    iget-object v2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/android/systemui/media/MediaCarouselController;->setCurrentState(IIFZ)V

    .line 544
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateHostAttachment()V

    .line 545
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    const/16 p2, -0x3e8

    if-ne p1, p2, :cond_2

    .line 546
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getMediaFrame()Landroid/view/ViewGroup;

    move-result-object p1

    .line 547
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 548
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 549
    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 550
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 546
    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/view/ViewGroup;->setLeftTopRightBottom(IIII)V

    :cond_2
    return-void
.end method

.method static synthetic applyState$default(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/graphics/Rect;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 537
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaHierarchyManager;->applyState(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method private final applyTargetStateIfNotAnimating()V
    .locals 4

    .line 436
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/systemui/media/MediaHierarchyManager;->applyState$default(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/graphics/Rect;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final calculateLocation()I
    .locals 7

    .line 590
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getBlockLocationChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    iget p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    return p0

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 595
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 597
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowLockscreenNotifications()Z

    move-result v3

    .line 599
    iget v4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpansion:F

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    const/4 v6, 0x2

    if-lez v5, :cond_3

    if-nez v0, :cond_3

    :goto_1
    move v1, v2

    goto :goto_2

    :cond_3
    const v5, 0x3ecccccd    # 0.4f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    move v1, v6

    :cond_5
    :goto_2
    if-ne v1, v6, :cond_7

    .line 606
    invoke-direct {p0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_3
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 607
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    :cond_7
    if-ne v1, v6, :cond_8

    .line 610
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-nez v0, :cond_8

    .line 611
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->collapsingShadeFromQS:Z

    if-eqz v0, :cond_8

    return v2

    :cond_8
    if-eq v1, v6, :cond_9

    .line 615
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-ne v0, v6, :cond_9

    .line 616
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullyAwake:Z

    if-nez p0, :cond_9

    return v6

    :cond_9
    return v1
.end method

.method private final cancelAnimationAndApplyDesiredState()V
    .locals 2

    .line 528
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 529
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->applyState(Landroid/graphics/Rect;Z)V

    :goto_0
    return-void
.end method

.method private final createUniqueObjectHost()Lcom/android/systemui/util/animation/UniqueObjectHostView;
    .locals 2

    .line 304
    new-instance v0, Lcom/android/systemui/util/animation/UniqueObjectHostView;

    iget-object v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/util/animation/UniqueObjectHostView;-><init>(Landroid/content/Context;)V

    .line 305
    new-instance v1, Lcom/android/systemui/media/MediaHierarchyManager$createUniqueObjectHost$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager$createUniqueObjectHost$1;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/util/animation/UniqueObjectHostView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-object v0
.end method

.method private final getAnimationParams(II)Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    if-ne p1, v1, :cond_1

    if-ne p2, v0, :cond_1

    .line 424
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-nez p1, :cond_0

    .line 425
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 426
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getKeyguardFadingAwayDelay()J

    move-result-wide p0

    move-wide v2, p0

    :cond_0
    const-wide/16 p0, 0x1c0

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    const-wide/16 p0, 0x1d0

    goto :goto_0

    :cond_2
    const-wide/16 p0, 0xc8

    .line 432
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method private final getBlockLocationChanges()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->goingToSleep:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->dozeAnimationRunning:Z

    if-eqz p0, :cond_0

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

.method private final getHost(I)Lcom/android/systemui/media/MediaHost;
    .locals 0

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 524
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaHosts:[Lcom/android/systemui/media/MediaHost;

    aget-object p0, p0, p1

    return-object p0
.end method

.method private final getMediaFrame()Landroid/view/ViewGroup;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->getMediaFrame()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method private final getQSTransformationProgress()F
    .locals 3

    .line 508
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    .line 509
    iget v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    invoke-direct {p0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 510
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getLocation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5

    if-nez v1, :cond_2

    goto :goto_1

    .line 511
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getLocation()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 512
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-eq v0, v2, :cond_5

    .line 513
    :cond_4
    iget p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpansion:F

    return p0

    :cond_5
    :goto_2
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method private final getTransformationProgress()F
    .locals 1

    .line 500
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getQSTransformationProgress()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    return p0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method private final interpolateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 475
    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    .line 476
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 475
    invoke-static {p0, v0, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    .line 477
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    .line 478
    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 477
    invoke-static {v0, v1, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    .line 479
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 480
    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 479
    invoke-static {v1, v2, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    float-to-int v1, v1

    .line 481
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    .line 482
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    .line 481
    invoke-static {p1, p2, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    if-nez p4, :cond_0

    .line 483
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 484
    :cond_0
    invoke-virtual {p4, p0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-object p4
.end method

.method static synthetic interpolateBounds$default(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;ILjava/lang/Object;)Landroid/graphics/Rect;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 469
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/media/MediaHierarchyManager;->interpolateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private final isCurrentlyInGuidedTransformation()Z
    .locals 1

    .line 492
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getTransformationProgress()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isTransitionRunning()Z
    .locals 4

    .line 584
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getTransformationProgress()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v3

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationPending:Z

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private final performTransitionToNewLocation(ZZ)V
    .locals 1

    .line 346
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    if-ltz v0, :cond_9

    if-eqz p1, :cond_0

    goto :goto_4

    .line 350
    :cond_0
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object p1

    .line 351
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    if-eqz p1, :cond_8

    if-nez v0, :cond_1

    goto :goto_3

    .line 356
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateTargetState()V

    .line 357
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 358
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->applyTargetStateIfNotAnimating()V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_6

    .line 360
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 361
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    iget p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    if-ne p1, p2, :cond_4

    .line 362
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 370
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 366
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartBounds:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 372
    :goto_1
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    iget p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaHierarchyManager;->adjustAnimatorForTransition(II)V

    .line 373
    iget-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationPending:Z

    if-nez p1, :cond_7

    .line 374
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootView:Landroid/view/View;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 p2, 0x1

    .line 376
    iput-boolean p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationPending:Z

    .line 377
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 381
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->cancelAnimationAndApplyDesiredState()V

    :cond_7
    :goto_2
    return-void

    .line 353
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->cancelAnimationAndApplyDesiredState()V

    return-void

    .line 347
    :cond_9
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->cancelAnimationAndApplyDesiredState()V

    return-void
.end method

.method private final setDozeAnimationRunning(Z)V
    .locals 2

    .line 215
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->dozeAnimationRunning:Z

    if-eq v0, p1, :cond_0

    .line 216
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->dozeAnimationRunning:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 218
    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final setFullyAwake(Z)V
    .locals 1

    .line 202
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullyAwake:Z

    if-eq v0, p1, :cond_0

    .line 203
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullyAwake:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 205
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation(Z)V

    :cond_0
    return-void
.end method

.method private final setGoingToSleep(Z)V
    .locals 2

    .line 189
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->goingToSleep:Z

    if-eq v0, p1, :cond_0

    .line 190
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->goingToSleep:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 192
    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final shouldAnimateTransition(II)Z
    .locals 4

    .line 389
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    .line 395
    iget v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-ne v3, v2, :cond_1

    .line 396
    iget v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-nez v3, :cond_1

    return v1

    :cond_1
    if-ne p1, v2, :cond_3

    if-ne p2, v0, :cond_3

    .line 402
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result p1

    if-nez p1, :cond_2

    .line 403
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-ne p1, v0, :cond_3

    :cond_2
    return v2

    .line 408
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getMediaFrame()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/media/MediaHierarchyManagerKt;->isShownNotFaded(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationPending:Z

    if-eqz p0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    return v1
.end method

.method private final updateDesiredLocation(Z)V
    .locals 9

    .line 327
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->calculateLocation()I

    move-result v1

    .line 328
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-eq v1, v0, :cond_3

    if-ltz v0, :cond_0

    .line 330
    iput v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    move v8, v3

    goto :goto_0

    :cond_1
    move v8, v4

    .line 333
    :goto_0
    iput v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-nez p1, :cond_2

    .line 336
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->shouldAnimateTransition(II)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v4

    .line 337
    :goto_1
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->getAnimationParams(II)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 338
    invoke-direct {p0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v2

    .line 339
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    move v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/media/MediaCarouselController;->onDesiredLocationChanged(ILcom/android/systemui/media/MediaHostState;ZJJ)V

    .line 341
    invoke-direct {p0, v8, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->performTransitionToNewLocation(ZZ)V

    :cond_3
    return-void
.end method

.method static synthetic updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 326
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation(Z)V

    return-void
.end method

.method private final updateHostAttachment()V
    .locals 4

    .line 555
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isTransitionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootOverlay:Landroid/view/ViewGroupOverlay;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v1, -0x3e8

    goto :goto_1

    .line 556
    :cond_1
    iget v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    .line 557
    :goto_1
    iget v2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    if-eq v2, v1, :cond_4

    .line 558
    iput v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    .line 561
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getMediaFrame()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getMediaFrame()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 564
    :goto_2
    iget v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    invoke-direct {p0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 566
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootOverlay:Landroid/view/ViewGroupOverlay;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getMediaFrame()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    goto :goto_3

    .line 571
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getMediaFrame()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 572
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    .line 573
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    .line 574
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getMediaFrame()Landroid/view/ViewGroup;

    move-result-object v2

    .line 577
    iget-object v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v3, v0

    .line 578
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr p0, v1

    .line 574
    invoke-virtual {v2, v0, v1, v3, p0}, Landroid/view/ViewGroup;->setLeftTopRightBottom(IIII)V

    :cond_4
    :goto_3
    return-void
.end method

.method private final updateTargetState()V
    .locals 8

    .line 448
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getTransformationProgress()F

    move-result v4

    .line 450
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 451
    iget v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    invoke-direct {p0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 455
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 457
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v1, v0

    .line 460
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 461
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    .line 462
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/media/MediaHierarchyManager;->interpolateBounds$default(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;ILjava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    goto :goto_2

    .line 464
    :cond_2
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_4

    return-void

    .line 465
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final closeGuts()V
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->closeGuts()V

    return-void
.end method

.method public final register(Lcom/android/systemui/media/MediaHost;)Lcom/android/systemui/util/animation/UniqueObjectHostView;
    .locals 4

    const-string v0, "mediaObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->createUniqueObjectHost()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    .line 278
    invoke-virtual {p1, v0}, Lcom/android/systemui/media/MediaHost;->setHostView(Lcom/android/systemui/util/animation/UniqueObjectHostView;)V

    .line 279
    new-instance v1, Lcom/android/systemui/media/MediaHierarchyManager$register$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/MediaHierarchyManager$register$1;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/media/MediaHost;->addVisibilityChangeListener(Lkotlin/jvm/functions/Function1;)V

    .line 283
    iget-object v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaHosts:[Lcom/android/systemui/media/MediaHost;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaHost;->getLocation()I

    move-result v2

    aput-object p1, v1, v2

    .line 284
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaHost;->getLocation()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    const/4 v3, -0x1

    if-ne v1, v2, :cond_0

    .line 287
    iput v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    .line 289
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaHost;->getLocation()I

    move-result p1

    iget v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    if-ne p1, v1, :cond_1

    .line 290
    iput v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    :cond_1
    const/4 p1, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 292
    invoke-static {p0, p1, v1, v2}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZILjava/lang/Object;)V

    return-object v0
.end method

.method public final setCollapsingShadeFromQS(Z)V
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->collapsingShadeFromQS:Z

    if-eq v0, p1, :cond_0

    .line 171
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->collapsingShadeFromQS:Z

    const/4 p1, 0x1

    .line 172
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation(Z)V

    :cond_0
    return-void
.end method

.method public final setQsExpansion(F)V
    .locals 3

    .line 154
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpansion:F

    cmpg-float v0, v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 155
    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpansion:F

    const/4 p1, 0x0

    .line 156
    invoke-static {p0, v2, v1, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZILjava/lang/Object;)V

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getQSTransformationProgress()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateTargetState()V

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->applyTargetStateIfNotAnimating()V

    :cond_1
    return-void
.end method
