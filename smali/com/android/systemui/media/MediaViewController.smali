.class public final Lcom/android/systemui/media/MediaViewController;
.super Ljava/lang/Object;
.source "MediaViewController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/MediaViewController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaViewController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaViewController.kt\ncom/android/systemui/media/MediaViewController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,500:1\n1819#2,2:501\n1819#2,2:503\n1#3:505\n*E\n*S KotlinDebug\n*F\n+ 1 MediaViewController.kt\ncom/android/systemui/media/MediaViewController\n*L\n252#1,2:501\n259#1,2:503\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/media/MediaViewController$Companion;

.field public static final GUTS_ANIMATION_DURATION:J


# instance fields
.field private animateNextStateChange:Z

.field private animationDelay:J

.field private animationDuration:J

.field private final collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

.field private final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final configurationListener:Lcom/android/systemui/media/MediaViewController$configurationListener$1;

.field private currentEndLocation:I

.field private currentHeight:I

.field private currentStartLocation:I

.field private currentTransitionProgress:F

.field private currentWidth:I

.field private final expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

.field private firstRefresh:Z

.field private isGutsVisible:Z

.field private final layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

.field private final measurement:Lcom/android/systemui/util/animation/MeasurementOutput;

.field private final mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

.field public sizeChangedListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final stateCallback:Lcom/android/systemui/media/MediaHostStatesManager$Callback;

.field private final tmpKey:Lcom/android/systemui/media/CacheKey;

.field private final tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

.field private final tmpState2:Lcom/android/systemui/util/animation/TransitionViewState;

.field private final tmpState3:Lcom/android/systemui/util/animation/TransitionViewState;

.field private transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

.field private final viewStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/media/CacheKey;",
            "Lcom/android/systemui/util/animation/TransitionViewState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/MediaViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/MediaViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/MediaViewController;->Companion:Lcom/android/systemui/media/MediaViewController$Companion;

    const-wide/16 v0, 0x1f4

    .line 42
    sput-wide v0, Lcom/android/systemui/media/MediaViewController;->GUTS_ANIMATION_DURATION:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/media/MediaHostStatesManager;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mediaHostStatesManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/android/systemui/media/MediaViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 37
    iput-object p3, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->firstRefresh:Z

    .line 51
    new-instance v0, Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-direct {v0}, Lcom/android/systemui/util/animation/TransitionLayoutController;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    .line 55
    new-instance v1, Lcom/android/systemui/util/animation/MeasurementOutput;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/android/systemui/util/animation/MeasurementOutput;-><init>(II)V

    iput-object v1, p0, Lcom/android/systemui/media/MediaViewController;->measurement:Lcom/android/systemui/util/animation/MeasurementOutput;

    .line 60
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/media/MediaViewController;->viewStates:Ljava/util/Map;

    const/4 v1, -0x1

    .line 67
    iput v1, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    .line 74
    iput v1, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 79
    iput v1, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    .line 84
    new-instance v1, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {v1}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/media/MediaViewController;->tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 89
    new-instance v1, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {v1}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/media/MediaViewController;->tmpState2:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 94
    new-instance v1, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {v1}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/media/MediaViewController;->tmpState3:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 99
    new-instance v1, Lcom/android/systemui/media/CacheKey;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/media/CacheKey;-><init>(IIFZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/android/systemui/media/MediaViewController;->tmpKey:Lcom/android/systemui/media/CacheKey;

    .line 133
    new-instance v1, Lcom/android/systemui/media/MediaViewController$configurationListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/MediaViewController$configurationListener$1;-><init>(Lcom/android/systemui/media/MediaViewController;)V

    iput-object v1, p0, Lcom/android/systemui/media/MediaViewController;->configurationListener:Lcom/android/systemui/media/MediaViewController$configurationListener$1;

    .line 151
    new-instance v2, Lcom/android/systemui/media/MediaViewController$stateCallback$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/media/MediaViewController$stateCallback$1;-><init>(Lcom/android/systemui/media/MediaViewController;)V

    iput-object v2, p0, Lcom/android/systemui/media/MediaViewController;->stateCallback:Lcom/android/systemui/media/MediaHostStatesManager$Callback;

    .line 169
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/media/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 175
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v3}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/media/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 184
    sget v4, Lcom/android/systemui/R$xml;->media_collapsed:I

    invoke-virtual {v2, p1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    .line 185
    sget v2, Lcom/android/systemui/R$xml;->media_expanded:I

    invoke-virtual {v3, p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V

    .line 186
    invoke-virtual {p3, p0}, Lcom/android/systemui/media/MediaHostStatesManager;->addController(Lcom/android/systemui/media/MediaViewController;)V

    .line 187
    new-instance p1, Lcom/android/systemui/media/MediaViewController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/MediaViewController$1;-><init>(Lcom/android/systemui/media/MediaViewController;)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/animation/TransitionLayoutController;->setSizeChangedListener(Lkotlin/jvm/functions/Function2;)V

    .line 192
    invoke-interface {p2, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$getCurrentEndLocation$p(Lcom/android/systemui/media/MediaViewController;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    return p0
.end method

.method public static final synthetic access$getCurrentStartLocation$p(Lcom/android/systemui/media/MediaViewController;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    return p0
.end method

.method public static final synthetic access$getCurrentTransitionProgress$p(Lcom/android/systemui/media/MediaViewController;)F
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    return p0
.end method

.method public static final synthetic access$getTransitionLayout$p(Lcom/android/systemui/media/MediaViewController;)Lcom/android/systemui/util/animation/TransitionLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    return-object p0
.end method

.method private final constraintSetForExpansion(F)Landroidx/constraintlayout/widget/ConstraintSet;
    .locals 1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 245
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    :goto_0
    return-object p0
.end method

.method private final ensureAllMeasurements()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHostStatesManager;->getMediaHostStates()Ljava/util/Map;

    move-result-object v0

    .line 236
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 237
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaHostState;

    invoke-direct {p0, v1}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final getKey(Lcom/android/systemui/media/MediaHostState;ZLcom/android/systemui/media/CacheKey;)Lcom/android/systemui/media/CacheKey;
    .locals 1

    .line 318
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/animation/MeasurementInput;->getHeightMeasureSpec()I

    move-result p0

    :goto_0
    invoke-virtual {p3, p0}, Lcom/android/systemui/media/CacheKey;->setHeightMeasureSpec(I)V

    .line 319
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/animation/MeasurementInput;->getWidthMeasureSpec()I

    move-result v0

    :goto_1
    invoke-virtual {p3, v0}, Lcom/android/systemui/media/CacheKey;->setWidthMeasureSpec(I)V

    .line 320
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result p0

    invoke-virtual {p3, p0}, Lcom/android/systemui/media/CacheKey;->setExpansion(F)V

    .line 321
    invoke-virtual {p3, p2}, Lcom/android/systemui/media/CacheKey;->setGutsVisible(Z)V

    return-object p3
.end method

.method private final obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 270
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 274
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/media/MediaViewController;->isGutsVisible:Z

    iget-object v2, p0, Lcom/android/systemui/media/MediaViewController;->tmpKey:Lcom/android/systemui/media/CacheKey;

    invoke-direct {p0, p1, v1, v2}, Lcom/android/systemui/media/MediaViewController;->getKey(Lcom/android/systemui/media/MediaHostState;ZLcom/android/systemui/media/CacheKey;)Lcom/android/systemui/media/CacheKey;

    move-result-object v3

    .line 275
    iget-object v1, p0, Lcom/android/systemui/media/MediaViewController;->viewStates:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/animation/TransitionViewState;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    .line 281
    invoke-static/range {v3 .. v9}, Lcom/android/systemui/media/CacheKey;->copy$default(Lcom/android/systemui/media/CacheKey;IIFZILjava/lang/Object;)Lcom/android/systemui/media/CacheKey;

    move-result-object v1

    .line 283
    iget-object v2, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-eqz v2, :cond_6

    .line 285
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result v0

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    if-nez v0, :cond_5

    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result v0

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v5

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    .line 298
    :cond_4
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->copy()Lcom/android/systemui/media/MediaHostState;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/systemui/media/MediaHostState;->setExpansion(F)V

    .line 302
    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v7

    const-string v0, "null cannot be cast to non-null type com.android.systemui.util.animation.TransitionViewState"

    invoke-static {v7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 303
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->copy()Lcom/android/systemui/media/MediaHostState;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/android/systemui/media/MediaHostState;->setExpansion(F)V

    .line 304
    invoke-direct {p0, v1}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v8

    invoke-static {v8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 305
    iget-object v6, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    .line 308
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result v9

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    .line 305
    invoke-static/range {v6 .. v12}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getInterpolatedState$default(Lcom/android/systemui/util/animation/TransitionLayoutController;Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/TransitionViewState;FLcom/android/systemui/util/animation/TransitionViewState;ILjava/lang/Object;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v0

    goto :goto_3

    .line 286
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 287
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 288
    invoke-interface {p1}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaViewController;->constraintSetForExpansion(F)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object p1

    .line 289
    new-instance v3, Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {v3}, Lcom/android/systemui/util/animation/TransitionViewState;-><init>()V

    .line 286
    invoke-virtual {v0, v2, p1, v3}, Lcom/android/systemui/util/animation/TransitionLayout;->calculateViewState(Lcom/android/systemui/util/animation/MeasurementInput;Landroidx/constraintlayout/widget/ConstraintSet;Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v0

    .line 291
    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaViewController;->setGutsViewState(Lcom/android/systemui/util/animation/TransitionViewState;)V

    .line 295
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->viewStates:Ljava/util/Map;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    return-object v0
.end method

.method private final obtainViewStateForLocation(I)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHostStatesManager;->getMediaHostStates()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/MediaHostState;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 452
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p0

    return-object p0
.end method

.method private final setGutsViewState(Lcom/android/systemui/util/animation/TransitionViewState;)V
    .locals 6

    .line 252
    sget-object v0, Lcom/android/systemui/media/PlayerViewHolder;->Companion:Lcom/android/systemui/media/PlayerViewHolder$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder$Companion;->getControlsIds()Ljava/util/Set;

    move-result-object v0

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 253
    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v1, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/util/animation/WidgetState;->getAlpha()F

    move-result v3

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/systemui/util/animation/WidgetState;->setAlpha(F)V

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/util/animation/WidgetState;->getGone()Z

    move-result v2

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/systemui/util/animation/WidgetState;->setGone(Z)V

    goto :goto_0

    .line 259
    :cond_3
    sget-object v0, Lcom/android/systemui/media/PlayerViewHolder;->Companion:Lcom/android/systemui/media/PlayerViewHolder$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/media/PlayerViewHolder$Companion;->getGutsIds()Ljava/util/Set;

    move-result-object v0

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 260
    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v4, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result v5

    if-eqz v5, :cond_5

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_5
    move v5, v3

    :goto_4
    invoke-virtual {v4, v5}, Lcom/android/systemui/util/animation/WidgetState;->setAlpha(F)V

    .line 261
    :goto_5
    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidgetStates()Ljava/util/Map;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/animation/WidgetState;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-virtual {v1, v4}, Lcom/android/systemui/util/animation/WidgetState;->setGone(Z)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method private final updateViewStateToCarouselSize(Lcom/android/systemui/util/animation/TransitionViewState;ILcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {p1, p3}, Lcom/android/systemui/util/animation/TransitionViewState;->copy(Lcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    .line 431
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHostStatesManager;->getCarouselSizes()Ljava/util/Map;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/animation/MeasurementOutput;

    if-nez p0, :cond_2

    goto :goto_1

    .line 435
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/animation/MeasurementOutput;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getHeight()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/util/animation/TransitionViewState;->setHeight(I)V

    .line 436
    invoke-virtual {p0}, Lcom/android/systemui/util/animation/MeasurementOutput;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidth()I

    move-result p2

    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/animation/TransitionViewState;->setWidth(I)V

    :goto_1
    return-object p1
.end method


# virtual methods
.method public final animatePendingStateChange(JJ)V
    .locals 1

    const/4 v0, 0x1

    .line 469
    iput-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->animateNextStateChange:Z

    .line 470
    iput-wide p1, p0, Lcom/android/systemui/media/MediaViewController;->animationDuration:J

    .line 471
    iput-wide p3, p0, Lcom/android/systemui/media/MediaViewController;->animationDelay:J

    return-void
.end method

.method public final attach(Lcom/android/systemui/util/animation/TransitionLayout;)V
    .locals 3

    const-string v0, "transitionLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    iput-object p1, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 332
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/animation/TransitionLayoutController;->attach(Lcom/android/systemui/util/animation/TransitionLayout;)V

    .line 333
    iget p1, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 338
    :cond_0
    iget v0, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    .line 340
    iget v1, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    const/4 v2, 0x1

    .line 337
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V

    return-void
.end method

.method public final closeGuts(Z)V
    .locals 4

    .line 223
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->isGutsVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->isGutsVisible:Z

    if-nez p1, :cond_1

    .line 226
    sget-wide v0, Lcom/android/systemui/media/MediaViewController;->GUTS_ANIMATION_DURATION:J

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/media/MediaViewController;->animatePendingStateChange(JJ)V

    .line 228
    :cond_1
    iget v0, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    .line 229
    iget v1, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    .line 230
    iget v2, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    .line 228
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V

    return-void
.end method

.method public final getCollapsedLayout()Landroidx/constraintlayout/widget/ConstraintSet;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->collapsedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    return-object p0
.end method

.method public final getCurrentHeight()I
    .locals 0

    .line 110
    iget p0, p0, Lcom/android/systemui/media/MediaViewController;->currentHeight:I

    return p0
.end method

.method public final getCurrentWidth()I
    .locals 0

    .line 105
    iget p0, p0, Lcom/android/systemui/media/MediaViewController;->currentWidth:I

    return p0
.end method

.method public final getExpandedLayout()Landroidx/constraintlayout/widget/ConstraintSet;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->expandedLayout:Landroidx/constraintlayout/widget/ConstraintSet;

    return-object p0
.end method

.method public final getMeasurementsForState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/MeasurementOutput;
    .locals 2

    const-string v0, "hostState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->measurement:Lcom/android/systemui/util/animation/MeasurementOutput;

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/animation/MeasurementOutput;->setMeasuredWidth(I)V

    .line 352
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->measurement:Lcom/android/systemui/util/animation/MeasurementOutput;

    invoke-virtual {p1}, Lcom/android/systemui/util/animation/TransitionViewState;->getHeight()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/animation/MeasurementOutput;->setMeasuredHeight(I)V

    .line 353
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->measurement:Lcom/android/systemui/util/animation/MeasurementOutput;

    return-object p0
.end method

.method public final getSizeChangedListener()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->sizeChangedListener:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "sizeChangedListener"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getStateCallback()Lcom/android/systemui/media/MediaHostStatesManager$Callback;
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->stateCallback:Lcom/android/systemui/media/MediaHostStatesManager$Callback;

    return-object p0
.end method

.method public final getTranslationX()F
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result p0

    :goto_0
    return p0
.end method

.method public final getTranslationY()F
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result p0

    :goto_0
    return p0
.end method

.method public final isGutsVisible()Z
    .locals 0

    .line 180
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaViewController;->isGutsVisible:Z

    return p0
.end method

.method public final onDestroy()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/MediaHostStatesManager;->removeController(Lcom/android/systemui/media/MediaViewController;)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->configurationListener:Lcom/android/systemui/media/MediaViewController$configurationListener$1;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final onLocationPreChange(I)V
    .locals 0

    .line 460
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaViewController;->obtainViewStateForLocation(I)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 461
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/animation/TransitionLayoutController;->setMeasureState(Lcom/android/systemui/util/animation/TransitionViewState;)V

    :goto_0
    return-void
.end method

.method public final openGuts()V
    .locals 4

    .line 207
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->isGutsVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 208
    iput-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->isGutsVisible:Z

    .line 209
    sget-wide v0, Lcom/android/systemui/media/MediaViewController;->GUTS_ANIMATION_DURATION:J

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/media/MediaViewController;->animatePendingStateChange(JJ)V

    .line 210
    iget v0, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    .line 211
    iget v1, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    .line 212
    iget v2, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    const/4 v3, 0x0

    .line 210
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V

    return-void
.end method

.method public final refreshState()V
    .locals 4

    .line 479
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->viewStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 480
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->firstRefresh:Z

    if-eqz v0, :cond_0

    .line 483
    invoke-direct {p0}, Lcom/android/systemui/media/MediaViewController;->ensureAllMeasurements()V

    const/4 v0, 0x0

    .line 484
    iput-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->firstRefresh:Z

    .line 486
    :cond_0
    iget v0, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    iget v1, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    iget v2, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V

    return-void
.end method

.method public final setCurrentHeight(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/android/systemui/media/MediaViewController;->currentHeight:I

    return-void
.end method

.method public final setCurrentState(IIFZ)V
    .locals 11

    .line 366
    iput p2, p0, Lcom/android/systemui/media/MediaViewController;->currentEndLocation:I

    .line 367
    iput p1, p0, Lcom/android/systemui/media/MediaViewController;->currentStartLocation:I

    .line 368
    iput p3, p0, Lcom/android/systemui/media/MediaViewController;->currentTransitionProgress:F

    .line 370
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaViewController;->animateNextStateChange:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, v2

    .line 372
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHostStatesManager;->getMediaHostStates()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaHostState;

    if-nez v0, :cond_1

    return-void

    .line 373
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/media/MediaViewController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaHostStatesManager;->getMediaHostStates()Ljava/util/Map;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaHostState;

    .line 378
    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v4

    if-nez v4, :cond_2

    return-void

    .line 379
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/media/MediaViewController;->tmpState2:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p0, v4, p2, v5}, Lcom/android/systemui/media/MediaViewController;->updateViewStateToCarouselSize(Lcom/android/systemui/util/animation/TransitionViewState;ILcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 380
    iget-object v4, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-virtual {v4, p2}, Lcom/android/systemui/util/animation/TransitionLayoutController;->setMeasureState(Lcom/android/systemui/util/animation/TransitionViewState;)V

    .line 383
    iput-boolean v2, p0, Lcom/android/systemui/media/MediaViewController;->animateNextStateChange:Z

    .line 384
    iget-object v4, p0, Lcom/android/systemui/media/MediaViewController;->transitionLayout:Lcom/android/systemui/util/animation/TransitionLayout;

    if-nez v4, :cond_3

    return-void

    .line 389
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/systemui/media/MediaViewController;->obtainViewState(Lcom/android/systemui/media/MediaHostState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object v4

    .line 390
    iget-object v5, p0, Lcom/android/systemui/media/MediaViewController;->tmpState3:Lcom/android/systemui/util/animation/TransitionViewState;

    invoke-direct {p0, v4, p1, v5}, Lcom/android/systemui/media/MediaViewController;->updateViewStateToCarouselSize(Lcom/android/systemui/util/animation/TransitionViewState;ILcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    .line 392
    invoke-interface {v0}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz p1, :cond_b

    if-eqz v3, :cond_b

    .line 395
    invoke-interface {v3}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    .line 400
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    .line 401
    invoke-interface {v3}, Lcom/android/systemui/media/MediaHostState;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object v0

    .line 403
    iget-object v1, p0, Lcom/android/systemui/media/MediaViewController;->tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 400
    invoke-virtual {p2, p1, v0, p3, v1}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getGoneState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/DisappearParameters;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    goto :goto_1

    :cond_5
    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_6

    .line 405
    invoke-interface {v3}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result v3

    if-nez v3, :cond_6

    .line 408
    iget-object p1, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    invoke-interface {v0}, Lcom/android/systemui/media/MediaHostState;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object v0

    sub-float/2addr v4, p3

    .line 410
    iget-object p3, p0, Lcom/android/systemui/media/MediaViewController;->tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 408
    invoke-virtual {p1, p2, v0, v4, p3}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getGoneState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/DisappearParameters;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    :goto_1
    move-object v4, p1

    goto :goto_5

    :cond_6
    cmpg-float v0, p3, v4

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_2
    if-nez v0, :cond_b

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-nez v0, :cond_9

    goto :goto_3

    :cond_9
    move v1, v2

    :goto_3
    if-eqz v1, :cond_a

    goto :goto_1

    .line 418
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    .line 419
    iget-object v1, p0, Lcom/android/systemui/media/MediaViewController;->tmpState:Lcom/android/systemui/util/animation/TransitionViewState;

    .line 418
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/systemui/util/animation/TransitionLayoutController;->getInterpolatedState(Lcom/android/systemui/util/animation/TransitionViewState;Lcom/android/systemui/util/animation/TransitionViewState;FLcom/android/systemui/util/animation/TransitionViewState;)Lcom/android/systemui/util/animation/TransitionViewState;

    move-result-object p1

    goto :goto_1

    :cond_b
    :goto_4
    move-object v4, p2

    .line 421
    :goto_5
    iget-object v3, p0, Lcom/android/systemui/media/MediaViewController;->layoutController:Lcom/android/systemui/util/animation/TransitionLayoutController;

    iget-wide v7, p0, Lcom/android/systemui/media/MediaViewController;->animationDuration:J

    .line 422
    iget-wide v9, p0, Lcom/android/systemui/media/MediaViewController;->animationDelay:J

    move v5, p4

    .line 421
    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/util/animation/TransitionLayoutController;->setState(Lcom/android/systemui/util/animation/TransitionViewState;ZZJJ)V

    return-void
.end method

.method public final setCurrentWidth(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/android/systemui/media/MediaViewController;->currentWidth:I

    return-void
.end method

.method public final setSizeChangedListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/media/MediaViewController;->sizeChangedListener:Lkotlin/jvm/functions/Function0;

    return-void
.end method
