.class public final Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "ActivityLaunchAnimator.kt"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/animation/ActivityLaunchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Runner"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivityLaunchAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityLaunchAnimator.kt\ncom/android/systemui/animation/ActivityLaunchAnimator$Runner\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,529:1\n1245#2,2:530\n1245#2,2:532\n*E\n*S KotlinDebug\n*F\n+ 1 ActivityLaunchAnimator.kt\ncom/android/systemui/animation/ActivityLaunchAnimator$Runner\n*L\n339#1,2:530\n350#1,2:532\n*E\n"
.end annotation


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private cancelled:Z

.field private final context:Landroid/content/Context;

.field private final controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

.field private final launchContainer:Landroid/view/ViewGroup;

.field private onTimeout:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

.field private timedOut:Z

.field private final transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

.field private windowCrop:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 280
    invoke-interface {p2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->launchContainer:Landroid/view/ViewGroup;

    .line 281
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->context:Landroid/content/Context;

    .line 282
    new-instance p2, Landroid/view/SyncRtSurfaceTransactionApplier;

    invoke-direct {p2, p1}, Landroid/view/SyncRtSurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    .line 285
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCrop:Landroid/graphics/Rect;

    .line 295
    new-instance p1, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onTimeout$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onTimeout$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)V

    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->onTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$applyStateToNavigationBar(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/ActivityLaunchAnimator$State;F)V
    .locals 0

    .line 278
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->applyStateToNavigationBar(Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/ActivityLaunchAnimator$State;F)V

    return-void
.end method

.method public static final synthetic access$applyStateToWindow(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/ActivityLaunchAnimator$State;)V
    .locals 0

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->applyStateToWindow(Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/ActivityLaunchAnimator$State;)V

    return-void
.end method

.method public static final synthetic access$getAnimator$p(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->animator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public static final synthetic access$getCancelled$p(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)Z
    .locals 0

    .line 278
    iget-boolean p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->cancelled:Z

    return p0
.end method

.method public static final synthetic access$getController$p(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    return-object p0
.end method

.method public static final synthetic access$invokeCallback(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 278
    invoke-direct {p0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->invokeCallback(Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method

.method public static final synthetic access$lerp(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;IIF)F
    .locals 0

    .line 278
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->lerp(IIF)F

    move-result p0

    return p0
.end method

.method public static final synthetic access$onAnimationTimedOut(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)V
    .locals 0

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->onAnimationTimedOut()V

    return-void
.end method

.method public static final synthetic access$startAnimation(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 278
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->startAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method

.method private final applyStateToNavigationBar(Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/ActivityLaunchAnimator$State;F)V
    .locals 10

    .line 472
    sget-object v6, Lcom/android/systemui/animation/ActivityLaunchAnimator;->Companion:Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;

    const-wide/16 v2, 0xea

    const-wide/16 v4, 0x85

    move-object v0, v6

    move v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;->getProgress(FJJ)F

    move-result v0

    .line 475
    new-instance v7, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v1, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v7, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-lez v2, :cond_0

    .line 477
    new-instance p3, Landroid/graphics/Matrix;

    invoke-direct {p3}, Landroid/graphics/Matrix;-><init>()V

    .line 478
    invoke-virtual {p2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getTop()I

    move-result v2

    iget-object p1, p1, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p1

    int-to-float p1, v2

    invoke-virtual {p3, v1, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 479
    iget-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {p2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getLeft()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getRight()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getHeight()I

    move-result p2

    invoke-virtual {p1, v1, v9, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 481
    invoke-static {}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->access$getNAV_FADE_IN_INTERPOLATOR$cp()Landroid/view/animation/PathInterpolator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {v7, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    .line 482
    invoke-virtual {p1, p3}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    .line 483
    iget-object p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    .line 484
    invoke-virtual {p1, v8}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x85

    move-object v0, v6

    move v1, p3

    .line 486
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Companion;->getProgress(FJJ)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 488
    invoke-static {}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->access$getNAV_FADE_OUT_INTERPOLATOR$cp()Landroid/view/animation/PathInterpolator;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p1

    sub-float/2addr p2, p1

    invoke-virtual {v7, p2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    .line 491
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    new-array p1, v8, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    invoke-virtual {v7}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object p2

    aput-object p2, p1, v9

    invoke-virtual {p0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    return-void
.end method

.method private final applyStateToWindow(Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/animation/ActivityLaunchAnimator$State;)V
    .locals 6

    .line 450
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 451
    invoke-virtual {p2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getTop()I

    move-result v1

    iget-object v2, p1, Landroid/view/RemoteAnimationTarget;->sourceContainerBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 452
    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {p2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getRight()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 454
    invoke-virtual {p2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getTopCornerRadius()F

    move-result v1

    invoke-virtual {p2}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getBottomCornerRadius()F

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 455
    new-instance v1, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    iget-object v2, p1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v1, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 456
    invoke-virtual {v1, v2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v1

    .line 457
    invoke-virtual {v1, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->windowCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    .line 459
    iget p1, p1, Landroid/view/RemoteAnimationTarget;->prefixOrderIndex:I

    invoke-virtual {v0, p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withLayer(I)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    .line 460
    invoke-virtual {p1, p2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withCornerRadius(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 461
    invoke-virtual {p1, p2}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object p1

    .line 462
    invoke-virtual {p1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object p1

    .line 464
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->transactionApplier:Landroid/view/SyncRtSurfaceTransactionApplier;

    new-array p2, p2, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    aput-object p1, p2, v5

    invoke-virtual {p0, p2}, Landroid/view/SyncRtSurfaceTransactionApplier;->scheduleApply([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    return-void
.end method

.method private final invokeCallback(Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 518
    :try_start_0
    invoke-interface {p1}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 520
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private final lerp(IIF)F
    .locals 0

    int-to-float p0, p1

    int-to-float p1, p2

    .line 525
    invoke-static {p0, p1, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0
.end method

.method private final onAnimationTimedOut()V
    .locals 1

    .line 495
    iget-boolean v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 499
    iput-boolean v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->timedOut:Z

    .line 500
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationCancelled()V

    return-void
.end method

.method private final removeTimeout()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->launchContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->onTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final startAnimation([Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1245
    array-length v4, v0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    if-ge v6, v4, :cond_2

    aget-object v9, v0, v6

    .line 340
    iget v10, v9, Landroid/view/RemoteAnimationTarget;->mode:I

    if-nez v10, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_1

    move-object v15, v9

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move-object v15, v7

    :goto_2
    if-nez v15, :cond_3

    .line 344
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->removeTimeout()V

    .line 345
    invoke-direct {v1, v3}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->invokeCallback(Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 346
    iget-object v0, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationCancelled()V

    return-void

    .line 1245
    :cond_3
    array-length v0, v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v0, :cond_6

    aget-object v6, v2, v4

    .line 351
    iget v9, v6, Landroid/view/RemoteAnimationTarget;->windowType:I

    const/16 v10, 0x7e3

    if-ne v9, v10, :cond_4

    const/4 v9, 0x1

    goto :goto_4

    :cond_4
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_5

    move-object/from16 v16, v6

    goto :goto_5

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v16, v7

    .line 355
    :goto_5
    iget-object v0, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->createAnimatorState()Lcom/android/systemui/animation/ActivityLaunchAnimator$State;

    move-result-object v7

    .line 357
    invoke-virtual {v7}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getTop()I

    move-result v9

    .line 358
    invoke-virtual {v7}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getBottom()I

    move-result v10

    .line 359
    invoke-virtual {v7}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getLeft()I

    move-result v0

    .line 360
    invoke-virtual {v7}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getRight()I

    move-result v2

    add-int v4, v0, v2

    int-to-float v4, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    sub-int v11, v2, v0

    .line 364
    invoke-virtual {v7}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getTopCornerRadius()F

    move-result v12

    .line 365
    invoke-virtual {v7}, Lcom/android/systemui/animation/ActivityLaunchAnimator$State;->getBottomCornerRadius()F

    move-result v14

    .line 368
    iget-object v0, v15, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    .line 369
    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 370
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 371
    iget v5, v0, Landroid/graphics/Rect;->left:I

    .line 372
    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int v8, v5, v0

    int-to-float v8, v8

    div-float v6, v8, v6

    sub-int v8, v0, v5

    move-object/from16 p1, v15

    .line 377
    iget-object v15, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->launchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v15

    move/from16 p2, v14

    const/16 v18, 0x1

    .line 378
    aget v14, v15, v18

    if-gt v13, v14, :cond_7

    .line 379
    aget v14, v15, v18

    move/from16 v19, v12

    iget-object v12, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->launchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getHeight()I

    move-result v12

    add-int/2addr v14, v12

    const/4 v12, 0x0

    if-lt v2, v14, :cond_8

    .line 380
    aget v14, v15, v12

    if-gt v5, v14, :cond_8

    .line 381
    aget v5, v15, v12

    iget-object v14, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->launchContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getWidth()I

    move-result v14

    add-int/2addr v5, v14

    if-lt v0, v5, :cond_8

    move/from16 v5, v18

    goto :goto_6

    :cond_7
    move/from16 v19, v12

    const/4 v12, 0x0

    :cond_8
    move v5, v12

    :goto_6
    if-eqz v5, :cond_9

    .line 387
    iget-object v0, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/res/Resources;)F

    move-result v0

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    move v14, v0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 395
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v15

    .line 396
    iput-object v15, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->animator:Landroid/animation/ValueAnimator;

    move/from16 v17, v13

    const-wide/16 v12, 0x1f4

    .line 397
    invoke-virtual {v15, v12, v13}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 398
    sget-object v0, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 400
    new-instance v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$1;

    invoke-direct {v0, v1, v5, v3}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;ZLandroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-virtual {v15, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 411
    new-instance v13, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;

    move-object v0, v13

    iget-object v3, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    move v12, v2

    move-object v2, v3

    move-object/from16 v1, p0

    move v3, v4

    move v4, v6

    move v5, v11

    move v6, v8

    move v8, v9

    move/from16 v9, v17

    move v11, v12

    move/from16 v12, v19

    move-object/from16 v20, v13

    move v13, v14

    move/from16 v14, p2

    move-object/from16 v21, v15

    move-object/from16 v15, p1

    invoke-direct/range {v0 .. v16}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$startAnimation$2;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;Lcom/android/systemui/animation/ActivityLaunchAnimator;FFIILcom/android/systemui/animation/ActivityLaunchAnimator$State;IIIIFFFLandroid/view/RemoteAnimationTarget;Landroid/view/RemoteAnimationTarget;)V

    move-object/from16 v1, v20

    move-object/from16 v0, v21

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 446
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 2

    .line 504
    iget-boolean v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->timedOut:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 508
    iput-boolean v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->cancelled:Z

    .line 509
    invoke-direct {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->removeTimeout()V

    .line 510
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationCancelled$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationCancelled$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    const-string p1, "remoteAnimationTargets"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "remoteAnimationWallpaperTargets"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "remoteAnimationNonAppTargets"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "iRemoteAnimationFinishedCallback"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-direct {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->removeTimeout()V

    .line 317
    iget-boolean p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->timedOut:Z

    if-eqz p1, :cond_0

    .line 318
    invoke-direct {p0, p5}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->invokeCallback(Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void

    .line 324
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->cancelled:Z

    if-eqz p1, :cond_1

    return-void

    .line 328
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;

    invoke-direct {p3, p0, p2, p4, p5}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner$onAnimationStart$1;-><init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final postTimeout()V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->launchContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->onTimeout:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
