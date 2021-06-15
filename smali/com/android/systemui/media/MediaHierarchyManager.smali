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

.field private qsExpanded:Z

.field private qsExpansion:F

.field private rootOverlay:Landroid/view/ViewGroupOverlay;

.field private rootView:Landroid/view/View;

.field private final startAnimation:Ljava/lang/Runnable;

.field private final statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

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

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/media/MediaCarouselController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
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

    const-string v0, "statusBarKeyguardViewManager"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->context:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 73
    iput-object p3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 74
    iput-object p4, p0, Lcom/android/systemui/media/MediaHierarchyManager;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 75
    iput-object p5, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    .line 76
    iput-object p6, p0, Lcom/android/systemui/media/MediaHierarchyManager;->notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 78
    iput-object p8, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 88
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    .line 89
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartBounds:Landroid/graphics/Rect;

    .line 90
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    .line 93
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 94
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 95
    sget-object p3, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    new-instance p3, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$1;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 102
    new-instance p3, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$2;

    invoke-direct {p3, p0}, Lcom/android/systemui/media/MediaHierarchyManager$animator$1$2;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 122
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 94
    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    const/4 p1, 0x3

    new-array p1, p1, [Lcom/android/systemui/media/MediaHost;

    .line 124
    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaHosts:[Lcom/android/systemui/media/MediaHost;

    const/4 p1, -0x1

    .line 130
    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    .line 135
    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    .line 143
    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    .line 149
    new-instance p1, Lcom/android/systemui/media/MediaHierarchyManager$startAnimation$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaHierarchyManager$startAnimation$1;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->startAnimation:Ljava/lang/Runnable;

    .line 245
    new-instance p1, Lcom/android/systemui/media/MediaHierarchyManager$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaHierarchyManager$1;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 294
    new-instance p1, Lcom/android/systemui/media/MediaHierarchyManager$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaHierarchyManager$2;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    invoke-virtual {p7, p1}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static final synthetic access$applyTargetStateIfNotAnimating(Lcom/android/systemui/media/MediaHierarchyManager;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->applyTargetStateIfNotAnimating()V

    return-void
.end method

.method public static final synthetic access$getAnimationStartBounds$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/graphics/Rect;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic access$getAnimator$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic access$getCurrentBounds$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/graphics/Rect;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic access$getMediaCarouselController$p(Lcom/android/systemui/media/MediaHierarchyManager;)Lcom/android/systemui/media/MediaCarouselController;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    return-object p0
.end method

.method public static final synthetic access$getRootOverlay$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/view/ViewGroupOverlay;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootOverlay:Landroid/view/ViewGroupOverlay;

    return-object p0
.end method

.method public static final synthetic access$getRootView$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/view/View;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getStartAnimation$p(Lcom/android/systemui/media/MediaHierarchyManager;)Ljava/lang/Runnable;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->startAnimation:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getTargetBounds$p(Lcom/android/systemui/media/MediaHierarchyManager;)Landroid/graphics/Rect;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic access$interpolateBounds(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/media/MediaHierarchyManager;->interpolateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isHomeScreenShadeVisibleToUser(Lcom/android/systemui/media/MediaHierarchyManager;)Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isHomeScreenShadeVisibleToUser()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isLockScreenShadeVisibleToUser(Lcom/android/systemui/media/MediaHierarchyManager;)Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isLockScreenShadeVisibleToUser()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isLockScreenVisibleToUser(Lcom/android/systemui/media/MediaHierarchyManager;)Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isLockScreenVisibleToUser()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isVisibleToUser(Lcom/android/systemui/media/MediaHierarchyManager;)Z
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isVisibleToUser()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setAnimationPending$p(Lcom/android/systemui/media/MediaHierarchyManager;Z)V
    .locals 0

    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationPending:Z

    return-void
.end method

.method public static final synthetic access$setDozeAnimationRunning(Lcom/android/systemui/media/MediaHierarchyManager;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->setDozeAnimationRunning(Z)V

    return-void
.end method

.method public static final synthetic access$setFullyAwake(Lcom/android/systemui/media/MediaHierarchyManager;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->setFullyAwake(Z)V

    return-void
.end method

.method public static final synthetic access$setGoingToSleep(Lcom/android/systemui/media/MediaHierarchyManager;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->setGoingToSleep(Z)V

    return-void
.end method

.method public static final synthetic access$setRootOverlay$p(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/view/ViewGroupOverlay;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootOverlay:Landroid/view/ViewGroupOverlay;

    return-void
.end method

.method public static final synthetic access$setRootView$p(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/view/View;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootView:Landroid/view/View;

    return-void
.end method

.method public static final synthetic access$setStatusbarState$p(Lcom/android/systemui/media/MediaHierarchyManager;I)V
    .locals 0

    .line 69
    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    return-void
.end method

.method public static final synthetic access$updateDesiredLocation(Lcom/android/systemui/media/MediaHierarchyManager;Z)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation(Z)V

    return-void
.end method

.method public static final synthetic access$updateTargetState(Lcom/android/systemui/media/MediaHierarchyManager;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateTargetState()V

    return-void
.end method

.method private final adjustAnimatorForTransition(II)V
    .locals 2

    .line 457
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

    .line 458
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    .line 459
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 460
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    return-void
.end method

.method private final applyState(Landroid/graphics/Rect;Z)V
    .locals 3

    .line 583
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 584
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 585
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    if-eqz p1, :cond_1

    .line 586
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getTransformationProgress()F

    move-result p1

    goto :goto_1

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 587
    :goto_1
    iget v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    .line 588
    iget-object v2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {v2, v0, v1, p1, p2}, Lcom/android/systemui/media/MediaCarouselController;->setCurrentState(IIFZ)V

    .line 589
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateHostAttachment()V

    .line 590
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    const/16 p2, -0x3e8

    if-ne p1, p2, :cond_2

    .line 591
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getMediaFrame()Landroid/view/ViewGroup;

    move-result-object p1

    .line 592
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    iget p2, p0, Landroid/graphics/Rect;->left:I

    .line 593
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 594
    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 595
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 591
    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/view/ViewGroup;->setLeftTopRightBottom(IIII)V

    :cond_2
    return-void
.end method

.method static synthetic applyState$default(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/graphics/Rect;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 582
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaHierarchyManager;->applyState(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method private final applyTargetStateIfNotAnimating()V
    .locals 4

    .line 481
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
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

    .line 635
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getBlockLocationChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    iget p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    return p0

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 640
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-eq v0, v1, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 642
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowLockscreenNotifications()Z

    move-result v3

    .line 644
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

    .line 651
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

    .line 652
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    :cond_7
    if-ne v1, v6, :cond_8

    .line 655
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-nez v0, :cond_8

    .line 656
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->collapsingShadeFromQS:Z

    if-eqz v0, :cond_8

    return v2

    :cond_8
    if-eq v1, v6, :cond_9

    .line 660
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-ne v0, v6, :cond_9

    .line 661
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullyAwake:Z

    if-nez p0, :cond_9

    return v6

    :cond_9
    return v1
.end method

.method private final cancelAnimationAndApplyDesiredState()V
    .locals 2

    .line 573
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 574
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 575
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

    .line 349
    new-instance v0, Lcom/android/systemui/util/animation/UniqueObjectHostView;

    iget-object v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/util/animation/UniqueObjectHostView;-><init>(Landroid/content/Context;)V

    .line 350
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

    .line 469
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-nez p1, :cond_0

    .line 470
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 471
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

    .line 477
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

    .line 202
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

    .line 569
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaHosts:[Lcom/android/systemui/media/MediaHost;

    aget-object p0, p0, p1

    return-object p0
.end method

.method private final getMediaFrame()Landroid/view/ViewGroup;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->getMediaFrame()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method private final getQSTransformationProgress()F
    .locals 3

    .line 553
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    .line 554
    iget v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    invoke-direct {p0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 555
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

    .line 556
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

    .line 557
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-eq v0, v2, :cond_5

    .line 558
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

    .line 545
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

    .line 520
    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    .line 521
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 520
    invoke-static {p0, v0, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    .line 522
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    .line 523
    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    .line 522
    invoke-static {v0, v1, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    float-to-int v0, v0

    .line 524
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    .line 525
    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    .line 524
    invoke-static {v1, v2, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    float-to-int v1, v1

    .line 526
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    .line 527
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    .line 526
    invoke-static {p1, p2, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    if-nez p4, :cond_0

    .line 528
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 529
    :cond_0
    invoke-virtual {p4, p0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-object p4
.end method

.method static synthetic interpolateBounds$default(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;ILjava/lang/Object;)Landroid/graphics/Rect;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 514
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/media/MediaHierarchyManager;->interpolateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private final isCurrentlyInGuidedTransformation()Z
    .locals 1

    .line 537
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

.method private final isHomeScreenShadeVisibleToUser()Z
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 697
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isExpanded()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isLockScreenShadeVisibleToUser()Z
    .locals 3

    .line 688
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 691
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpanded:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private final isLockScreenVisibleToUser()Z
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->notifLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowLockscreenNotifications()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpanded:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final isTransitionRunning()Z
    .locals 4

    .line 629
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

    .line 630
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

.method private final isVisibleToUser()Z
    .locals 1

    .line 674
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isLockScreenVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isLockScreenShadeVisibleToUser()Z

    move-result v0

    if-nez v0, :cond_1

    .line 675
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isHomeScreenShadeVisibleToUser()Z

    move-result p0

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

.method private final performTransitionToNewLocation(ZZ)V
    .locals 1

    .line 391
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    if-ltz v0, :cond_9

    if-eqz p1, :cond_0

    goto :goto_4

    .line 395
    :cond_0
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object p1

    .line 396
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    if-eqz p1, :cond_8

    if-nez v0, :cond_1

    goto :goto_3

    .line 401
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateTargetState()V

    .line 402
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 403
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->applyTargetStateIfNotAnimating()V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_6

    .line 405
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 406
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    iget p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    if-ne p1, p2, :cond_4

    .line 407
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 415
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 411
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationStartBounds:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 417
    :goto_1
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    iget p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaHierarchyManager;->adjustAnimatorForTransition(II)V

    .line 418
    iget-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationPending:Z

    if-nez p1, :cond_7

    .line 419
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootView:Landroid/view/View;

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 p2, 0x1

    .line 421
    iput-boolean p2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->animationPending:Z

    .line 422
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 426
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->cancelAnimationAndApplyDesiredState()V

    :cond_7
    :goto_2
    return-void

    .line 398
    :cond_8
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->cancelAnimationAndApplyDesiredState()V

    return-void

    .line 392
    :cond_9
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->cancelAnimationAndApplyDesiredState()V

    return-void
.end method

.method private final setDozeAnimationRunning(Z)V
    .locals 2

    .line 236
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->dozeAnimationRunning:Z

    if-eq v0, p1, :cond_0

    .line 237
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->dozeAnimationRunning:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 239
    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final setFullyAwake(Z)V
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullyAwake:Z

    if-eq v0, p1, :cond_0

    .line 224
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->fullyAwake:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 226
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation(Z)V

    :cond_0
    return-void
.end method

.method private final setGoingToSleep(Z)V
    .locals 2

    .line 210
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->goingToSleep:Z

    if-eq v0, p1, :cond_0

    .line 211
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->goingToSleep:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 213
    invoke-static {p0, p1, v0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private final shouldAnimateTransition(II)Z
    .locals 4

    .line 434
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    .line 440
    iget v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-ne v3, v2, :cond_1

    .line 441
    iget v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-nez v3, :cond_1

    return v1

    :cond_1
    if-ne p1, v2, :cond_3

    if-ne p2, v0, :cond_3

    .line 447
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result p1

    if-nez p1, :cond_2

    .line 448
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->statusbarState:I

    if-ne p1, v0, :cond_3

    :cond_2
    return v2

    .line 453
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

    .line 372
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->calculateLocation()I

    move-result v1

    .line 373
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-eq v1, v0, :cond_3

    if-ltz v0, :cond_0

    .line 375
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

    .line 378
    :goto_0
    iput v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    if-nez p1, :cond_2

    .line 381
    iget p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->shouldAnimateTransition(II)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v4

    .line 382
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

    .line 383
    invoke-direct {p0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v2

    .line 384
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    move v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/media/MediaCarouselController;->onDesiredLocationChanged(ILcom/android/systemui/media/MediaHostState;ZJJ)V

    .line 386
    invoke-direct {p0, v8, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->performTransitionToNewLocation(ZZ)V

    :cond_3
    return-void
.end method

.method static synthetic updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 371
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation(Z)V

    return-void
.end method

.method private final updateHostAttachment()V
    .locals 4

    .line 600
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

    .line 601
    :cond_1
    iget v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    .line 602
    :goto_1
    iget v2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    if-eq v2, v1, :cond_4

    .line 603
    iput v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    .line 606
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

    .line 609
    :goto_2
    iget v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    invoke-direct {p0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v1

    if-eqz v0, :cond_3

    .line 611
    iget-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->rootOverlay:Landroid/view/ViewGroupOverlay;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getMediaFrame()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    goto :goto_3

    .line 616
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getMediaFrame()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 617
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    .line 618
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    .line 619
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getMediaFrame()Landroid/view/ViewGroup;

    move-result-object v2

    .line 622
    iget-object v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v3, v0

    .line 623
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    add-int/2addr p0, v1

    .line 619
    invoke-virtual {v2, v0, v1, v3, p0}, Landroid/view/ViewGroup;->setLeftTopRightBottom(IIII)V

    :cond_4
    :goto_3
    return-void
.end method

.method private final updateTargetState()V
    .locals 8

    .line 493
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getTransformationProgress()F

    move-result v4

    .line 495
    iget v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 496
    iget v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->previousLocation:I

    invoke-direct {p0, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/MediaHost;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 500
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 502
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v1, v0

    .line 505
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 506
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    .line 507
    invoke-static/range {v1 .. v7}, Lcom/android/systemui/media/MediaHierarchyManager;->interpolateBounds$default(Lcom/android/systemui/media/MediaHierarchyManager;Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;ILjava/lang/Object;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    goto :goto_2

    .line 509
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

    .line 510
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final closeGuts()V
    .locals 3

    .line 345
    iget-object p0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/systemui/media/MediaCarouselController;->closeGuts$default(Lcom/android/systemui/media/MediaCarouselController;ZILjava/lang/Object;)V

    return-void
.end method

.method public final register(Lcom/android/systemui/media/MediaHost;)Lcom/android/systemui/util/animation/UniqueObjectHostView;
    .locals 4

    const-string v0, "mediaObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->createUniqueObjectHost()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v0

    .line 323
    invoke-virtual {p1, v0}, Lcom/android/systemui/media/MediaHost;->setHostView(Lcom/android/systemui/util/animation/UniqueObjectHostView;)V

    .line 324
    new-instance v1, Lcom/android/systemui/media/MediaHierarchyManager$register$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/MediaHierarchyManager$register$1;-><init>(Lcom/android/systemui/media/MediaHierarchyManager;)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/media/MediaHost;->addVisibilityChangeListener(Lkotlin/jvm/functions/Function1;)V

    .line 328
    iget-object v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaHosts:[Lcom/android/systemui/media/MediaHost;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaHost;->getLocation()I

    move-result v2

    aput-object p1, v1, v2

    .line 329
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaHost;->getLocation()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    const/4 v3, -0x1

    if-ne v1, v2, :cond_0

    .line 332
    iput v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->desiredLocation:I

    .line 334
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaHost;->getLocation()I

    move-result p1

    iget v1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    if-ne p1, v1, :cond_1

    .line 335
    iput v3, p0, Lcom/android/systemui/media/MediaHierarchyManager;->currentAttachmentLocation:I

    :cond_1
    const/4 p1, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 337
    invoke-static {p0, p1, v1, v2}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZILjava/lang/Object;)V

    return-object v0
.end method

.method public final setCollapsingShadeFromQS(Z)V
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->collapsingShadeFromQS:Z

    if-eq v0, p1, :cond_0

    .line 192
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->collapsingShadeFromQS:Z

    const/4 p1, 0x1

    .line 193
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation(Z)V

    :cond_0
    return-void
.end method

.method public final setQsExpanded(Z)V
    .locals 1

    .line 171
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpanded:Z

    if-eq v0, p1, :cond_0

    .line 172
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpanded:Z

    :cond_0
    if-eqz p1, :cond_2

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isLockScreenShadeVisibleToUser()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isHomeScreenShadeVisibleToUser()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 176
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceImpression()V

    .line 179
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isLockScreenVisibleToUser()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 180
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceImpression()V

    .line 182
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/MediaCarouselController;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->isVisibleToUser()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setVisibleToUser(Z)V

    return-void
.end method

.method public final setQsExpansion(F)V
    .locals 3

    .line 156
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

    .line 157
    iput p1, p0, Lcom/android/systemui/media/MediaHierarchyManager;->qsExpansion:F

    const/4 p1, 0x0

    .line 158
    invoke-static {p0, v2, v1, p1}, Lcom/android/systemui/media/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/MediaHierarchyManager;ZILjava/lang/Object;)V

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->getQSTransformationProgress()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->updateTargetState()V

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->applyTargetStateIfNotAnimating()V

    :cond_1
    return-void
.end method
