.class public final Lcom/android/systemui/statusbar/events/PrivacyDotViewController;
.super Ljava/lang/Object;
.source "PrivacyDotViewController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPrivacyDotViewController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PrivacyDotViewController.kt\ncom/android/systemui/statusbar/events/PrivacyDotViewController\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,509:1\n1256#2,2:510\n1256#2,2:512\n1256#2,2:514\n1256#2,2:516\n1256#2,2:518\n*E\n*S KotlinDebug\n*F\n+ 1 PrivacyDotViewController.kt\ncom/android/systemui/statusbar/events/PrivacyDotViewController\n*L\n192#1,2:510\n203#1,2:512\n218#1,2:514\n261#1,2:516\n404#1,2:518\n*E\n"
.end annotation


# instance fields
.field private final animationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

.field private bl:Landroid/view/View;

.field private br:Landroid/view/View;

.field private cancelRunnable:Ljava/lang/Runnable;

.field private currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

.field private final locationPublisher:Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;

.field private final lock:Ljava/lang/Object;

.field private final mainExecutor:Ljava/util/concurrent/Executor;

.field private final marginListener:Lcom/android/systemui/statusbar/phone/StatusBarMarginUpdatedListener;

.field private nextViewState:Lcom/android/systemui/statusbar/events/ViewState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "lock"
        }
    .end annotation
.end field

.field private sbHeightLandscape:I

.field private sbHeightPortrait:I

.field private final stateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final systemStatusAnimationCallback:Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

.field private tl:Landroid/view/View;

.field private tr:Landroid/view/View;

.field private uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "mainExecutor"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "stateController"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "locationPublisher"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "animationScheduler"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->mainExecutor:Ljava/util/concurrent/Executor;

    .line 60
    iput-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->stateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 61
    iput-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->locationPublisher:Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;

    .line 62
    iput-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->animationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    .line 73
    new-instance v1, Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1ff

    const/16 v17, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v17}, Lcom/android/systemui/statusbar/events/ViewState;-><init>(ZZZIIIIILandroid/view/View;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    .line 76
    invoke-static/range {v6 .. v17}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZIIIIILandroid/view/View;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    .line 81
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    .line 88
    new-instance v1, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$marginListener$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$marginListener$1;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->marginListener:Lcom/android/systemui/statusbar/phone/StatusBarMarginUpdatedListener;

    .line 98
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarLocationPublisher;->addCallback(Lcom/android/systemui/statusbar/phone/StatusBarMarginUpdatedListener;)V

    .line 100
    new-instance v1, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$1;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 420
    new-instance v1, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$systemStatusAnimationCallback$1;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$systemStatusAnimationCallback$1;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->systemStatusAnimationCallback:Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    return-void
.end method

.method public static final synthetic access$getAnimationScheduler$p(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->animationScheduler:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    return-object p0
.end method

.method public static final synthetic access$getLock$p(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)Ljava/lang/Object;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic access$getNextViewState$p(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)Lcom/android/systemui/statusbar/events/ViewState;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    return-object p0
.end method

.method public static final synthetic access$getSystemStatusAnimationCallback$p(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->systemStatusAnimationCallback:Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    return-object p0
.end method

.method public static final synthetic access$processNextViewState(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->processNextViewState()V

    return-void
.end method

.method public static final synthetic access$setNextViewState(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/statusbar/events/ViewState;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    return-void
.end method

.method public static final synthetic access$setStatusBarMargins(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setStatusBarMargins(II)V

    return-void
.end method

.method public static final synthetic access$updateStatusBarState(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->updateStatusBarState()V

    return-void
.end method

.method private final cornerForView(Landroid/view/View;)I
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x3

    goto :goto_0

    .line 271
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz p0, :cond_4

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    :goto_0
    return p0

    .line 272
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "not a corner view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const-string p0, "br"

    .line 271
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string p0, "bl"

    .line 270
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string/jumbo p0, "tr"

    .line 269
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    const-string/jumbo p0, "tl"

    .line 268
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final cornerIndex(Landroid/view/View;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 440
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cornerForView(Landroid/view/View;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private final getViews()Lkotlin/sequences/Sequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/sequences/Sequence<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p0, v1, [Landroid/view/View;

    invoke-static {p0}, Lkotlin/sequences/SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    aput-object v0, v2, v1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v1, :cond_3

    aput-object v1, v2, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz v1, :cond_2

    aput-object v1, v2, v0

    const/4 v0, 0x3

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz p0, :cond_1

    aput-object p0, v2, v0

    invoke-static {v2}, Lkotlin/sequences/SequencesKt;->sequenceOf([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const-string p0, "bl"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string p0, "br"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_3
    const-string/jumbo p0, "tr"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_4
    const-string/jumbo p0, "tl"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method private final hideDotView(Landroid/view/View;Z)V
    .locals 2

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    if-eqz p2, :cond_0

    .line 156
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0xa0

    .line 157
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 158
    sget-object p2, Lcom/android/systemui/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 p2, 0x0

    .line 159
    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 160
    new-instance p2, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$hideDotView$1;

    invoke-direct {p2, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$hideDotView$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 161
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    .line 163
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final isShadeInQs()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "lock"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->stateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->stateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->stateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final processNextViewState()V
    .locals 13

    const-string v0, "processNextViewState: "

    .line 367
    invoke-static {v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$dlog(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1ff

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZIIIIILandroid/view/View;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v1

    .line 372
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    monitor-exit v0

    .line 374
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->resolveState(Lcom/android/systemui/statusbar/events/ViewState;)V

    return-void

    :catchall_0
    move-exception p0

    .line 370
    monitor-exit v0

    throw p0
.end method

.method private final resolveState(Lcom/android/systemui/statusbar/events/ViewState;)V
    .locals 3

    const-string v0, "resolveState "

    .line 379
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$dlog(Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "resolveState: skipping"

    .line 381
    invoke-static {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$dlog(Ljava/lang/String;)V

    return-void

    .line 385
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getRotation()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/events/ViewState;->getRotation()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 387
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->updateRotations(I)V

    .line 390
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/events/ViewState;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 391
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getRotation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->updateHeights(I)V

    .line 394
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getMarginLeft()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/events/ViewState;->getMarginLeft()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 395
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getMarginRight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/events/ViewState;->getMarginRight()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 396
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getMarginLeft()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getMarginRight()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getRotation()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->updateCornerSizes(III)V

    .line 399
    :cond_4
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 400
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->shouldShowDot()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->updateDesignatedCorner(Landroid/view/View;Z)V

    .line 403
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/events/ViewState;->needsLayout(Lcom/android/systemui/statusbar/events/ViewState;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 404
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 1256
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 404
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 407
    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->shouldShowDot()Z

    move-result v0

    .line 408
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/events/ViewState;->shouldShowDot()Z

    move-result v1

    if-eq v0, v1, :cond_8

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 409
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 410
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->showDotView(Landroid/view/View;Z)V

    goto :goto_1

    :cond_7
    if-nez v0, :cond_8

    .line 411
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 412
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/events/ViewState;->getDesignatedCorner()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->hideDotView(Landroid/view/View;Z)V

    .line 416
    :cond_8
    :goto_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->currentViewState:Lcom/android/systemui/statusbar/events/ViewState;

    return-void
.end method

.method private final rotatedCorner(II)I
    .locals 0

    sub-int/2addr p1, p2

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x4

    :cond_0
    return p1
.end method

.method private final scheduleUpdate()V
    .locals 4

    const-string v0, "scheduleUpdate: "

    .line 357
    invoke-static {v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$dlog(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cancelRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 360
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$scheduleUpdate$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$scheduleUpdate$1;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    const-wide/16 v2, 0x64

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cancelRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private final selectDesignatedCorner(I)Landroid/view/View;
    .locals 6

    .line 228
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v2, "tl"

    if-eqz v0, :cond_11

    .line 232
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    const-string/jumbo v3, "tr"

    if-eqz p1, :cond_d

    const/4 v4, 0x1

    const-string v5, "br"

    if-eq p1, v4, :cond_9

    const/4 v3, 0x2

    const-string v4, "bl"

    if-eq p1, v3, :cond_5

    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    if-eqz v0, :cond_2

    .line 238
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "unknown rotation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    if-eqz v0, :cond_7

    .line 237
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz p0, :cond_8

    goto :goto_0

    :cond_8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_9
    if-eqz v0, :cond_b

    .line 236
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz p0, :cond_a

    goto :goto_0

    :cond_a
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_b
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz p0, :cond_c

    goto :goto_0

    :cond_c
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_d
    if-eqz v0, :cond_f

    .line 235
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-eqz p0, :cond_e

    goto :goto_0

    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_f
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz p0, :cond_10

    :goto_0
    return-object p0

    :cond_10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_11
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method private final setCornerVisibilities(I)V
    .locals 1

    .line 261
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 1256
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 262
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->scheduleUpdate()V

    return-void
.end method

.method private final setStatusBarMargins(II)V
    .locals 13

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStatusBarMargins l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$dlog(Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x19f

    const/4 v12, 0x0

    move v7, p1

    move v8, p2

    invoke-static/range {v1 .. v12}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZIIIIILandroid/view/View;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    .line 337
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final showDotView(Landroid/view/View;Z)V
    .locals 1

    .line 169
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 171
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p2, 0x0

    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 174
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0xa0

    .line 175
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 176
    sget-object p1, Lcom/android/systemui/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 177
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 180
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private final updateCornerSizes(III)V
    .locals 4

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 1256
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 219
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cornerForView(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, v2, p3}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->rotatedCorner(II)I

    move-result v2

    .line 220
    invoke-direct {p0, v2, p1, p2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->widthForCorner(III)I

    move-result v2

    .line 221
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final updateDesignatedCorner(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 p0, 0x0

    .line 249
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 250
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 251
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 252
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0x12c

    .line 253
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 254
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final updateHeights(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 188
    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->sbHeightLandscape:I

    goto :goto_0

    .line 187
    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->sbHeightPortrait:I

    .line 192
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    move-result-object p0

    .line 1256
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 192
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final updateRotations(I)V
    .locals 6

    .line 203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->getViews()Lkotlin/sequences/Sequence;

    move-result-object v0

    .line 1256
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 204
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cornerForView(Landroid/view/View;)I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->rotatedCorner(II)I

    move-result v2

    .line 205
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 206
    invoke-static {v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$toGravity(I)I

    move-result v5

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 210
    sget v3, Lcom/android/systemui/R$id;->privacy_dot:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 211
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 210
    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 212
    invoke-static {v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$innerGravity(I)I

    move-result v2

    .line 210
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final updateStatusBarState()V
    .locals 13

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->isShadeInQs()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1fd

    const/4 v12, 0x0

    invoke-static/range {v1 .. v12}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZIIIIILandroid/view/View;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    .line 343
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final widthForCorner(III)I
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown corner"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move p2, p3

    :cond_2
    :goto_0
    return p2
.end method


# virtual methods
.method public final initialize(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string/jumbo v5, "topLeft"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v5, "topRight"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "bottomLeft"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "bottomRight"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    iget-object v5, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v6, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 295
    iget-object v6, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 296
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    if-eqz v5, :cond_2

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    if-eqz v5, :cond_1

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    if-eqz v5, :cond_0

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    return-void

    :cond_0
    const-string v0, "br"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_1
    const-string v0, "bl"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_2
    const-string/jumbo v0, "tr"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    :cond_3
    const-string/jumbo v0, "tl"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v6

    .line 301
    :cond_4
    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tl:Landroid/view/View;

    .line 302
    iput-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->tr:Landroid/view/View;

    .line 303
    iput-object v3, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->bl:Landroid/view/View;

    .line 304
    iput-object v4, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->br:Landroid/view/View;

    const/4 v1, 0x0

    .line 306
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->selectDesignatedCorner(I)Landroid/view/View;

    move-result-object v11

    .line 307
    invoke-direct {p0, v11}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cornerIndex(Landroid/view/View;)I

    move-result v10

    .line 309
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$initialize$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$initialize$5;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 313
    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 314
    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v12, 0x7f

    const/4 v13, 0x0

    invoke-static/range {v2 .. v13}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZIIIIILandroid/view/View;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    .line 315
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final setNewRotation(I)V
    .locals 13

    const-string/jumbo v0, "updateRotation: "

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$dlog(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/events/ViewState;->getRotation()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne p1, v1, :cond_0

    .line 128
    monitor-exit v0

    return-void

    .line 130
    :cond_0
    :try_start_1
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 126
    monitor-exit v0

    const/4 v0, 0x4

    .line 133
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setCornerVisibilities(I)V

    .line 135
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->selectDesignatedCorner(I)Landroid/view/View;

    move-result-object v10

    .line 136
    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->cornerIndex(Landroid/view/View;)I

    move-result v9

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 140
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->sbHeightLandscape:I

    goto :goto_0

    .line 139
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->sbHeightPortrait:I

    :goto_0
    move v6, v0

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v11, 0x67

    const/4 v12, 0x0

    move v5, p1

    invoke-static/range {v1 .. v12}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZIIIIILandroid/view/View;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catchall_1
    move-exception p0

    .line 126
    monitor-exit v0

    throw p0
.end method

.method public final setQsExpanded(Z)V
    .locals 13

    const-string v0, "setQsExpanded "

    .line 116
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewControllerKt;->access$dlog(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->nextViewState:Lcom/android/systemui/statusbar/events/ViewState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1fb

    const/4 v12, 0x0

    move v4, p1

    invoke-static/range {v1 .. v12}, Lcom/android/systemui/statusbar/events/ViewState;->copy$default(Lcom/android/systemui/statusbar/events/ViewState;ZZZIIIIILandroid/view/View;ILjava/lang/Object;)Lcom/android/systemui/statusbar/events/ViewState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNextViewState(Lcom/android/systemui/statusbar/events/ViewState;)V

    .line 119
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final setStatusBarHeights(II)V
    .locals 0

    .line 323
    iput p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->sbHeightPortrait:I

    .line 324
    iput p2, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->sbHeightLandscape:I

    return-void
.end method

.method public final setUiExecutor(Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-void
.end method
