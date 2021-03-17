.class public final Lcom/android/systemui/media/MediaCarouselController;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaCarouselController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaCarouselController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,571:1\n1819#2,2:572\n1819#2,2:574\n1819#2,2:576\n*E\n*S KotlinDebug\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaCarouselController\n*L\n257#1,2:572\n317#1,2:574\n498#1,2:576\n*E\n"
.end annotation


# instance fields
.field private final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private bgColor:I

.field private carouselMeasureHeight:I

.field private carouselMeasureWidth:I

.field private final configListener:Lcom/android/systemui/media/MediaCarouselController$configListener$1;

.field private final context:Landroid/content/Context;

.field private currentCarouselHeight:I

.field private currentCarouselWidth:I

.field private currentEndLocation:I

.field private currentStartLocation:I

.field private currentTransitionProgress:F

.field private currentlyExpanded:Z

.field private currentlyShowingOnlyActive:Z

.field private desiredHostState:Lcom/android/systemui/media/MediaHostState;

.field private desiredLocation:I

.field private fgColor:I

.field private isRtl:Z

.field private keysNeedRemoval:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

.field private final mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

.field private final mediaContent:Landroid/view/ViewGroup;

.field private final mediaControlPanelFactory:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaControlPanel;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaFrame:Landroid/view/ViewGroup;

.field private final mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

.field private final mediaManager:Lcom/android/systemui/media/MediaDataManager;

.field private needsReordering:Z

.field private final pageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private playersVisible:Z

.field private settingsButton:Landroid/view/View;

.field private final visualStabilityCallback:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$Callback;

.field private final visualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;Lcom/android/systemui/media/MediaHostStatesManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/media/MediaControlPanel;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;",
            "Lcom/android/systemui/media/MediaHostStatesManager;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Lcom/android/systemui/media/MediaDataManager;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    const-string v8, "context"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "mediaControlPanelFactory"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v8, "visualStabilityManager"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "mediaHostStatesManager"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "activityStarter"

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "executor"

    move-object/from16 v12, p6

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "mediaManager"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "configurationController"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "falsingCollector"

    move-object/from16 v15, p9

    invoke-static {v15, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "falsingManager"

    move-object/from16 v14, p10

    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    .line 43
    iput-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaControlPanelFactory:Ljavax/inject/Provider;

    .line 44
    iput-object v3, v0, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    .line 45
    iput-object v4, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    .line 46
    iput-object v5, v0, Lcom/android/systemui/media/MediaCarouselController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 48
    iput-object v6, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/MediaDataManager;

    const/4 v2, -0x1

    .line 77
    iput v2, v0, Lcom/android/systemui/media/MediaCarouselController;->desiredLocation:I

    .line 84
    iput v2, v0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    .line 91
    iput v2, v0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 96
    iput v2, v0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    .line 116
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/media/MediaCarouselController;->keysNeedRemoval:Ljava/util/Set;

    .line 117
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaCarouselController;->getBackgroundColor()I

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/MediaCarouselController;->bgColor:I

    const v2, 0x1010036

    .line 118
    invoke-static {v1, v2}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    iput v2, v0, Lcom/android/systemui/media/MediaCarouselController;->fgColor:I

    const/4 v2, 0x1

    .line 129
    iput-boolean v2, v0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    .line 138
    new-instance v5, Lcom/android/systemui/media/MediaCarouselController$configListener$1;

    invoke-direct {v5, v0}, Lcom/android/systemui/media/MediaCarouselController$configListener$1;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    iput-object v5, v0, Lcom/android/systemui/media/MediaCarouselController;->configListener:Lcom/android/systemui/media/MediaCarouselController$configListener$1;

    .line 161
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaCarouselController;->inflateMediaCarousel()Landroid/view/ViewGroup;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    .line 162
    sget v9, Lcom/android/systemui/R$id;->media_carousel_scroller:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    const-string v10, "mediaFrame.requireViewById(R.id.media_carousel_scroller)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v9

    check-cast v13, Lcom/android/systemui/media/MediaScrollView;

    iput-object v13, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    .line 163
    sget v9, Lcom/android/systemui/R$id;->media_page_indicator:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    const-string v10, "mediaFrame.requireViewById(R.id.media_page_indicator)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v9

    check-cast v11, Lcom/android/systemui/qs/PageIndicator;

    iput-object v11, v0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 164
    new-instance v10, Lcom/android/systemui/media/MediaCarouselScrollHandler;

    .line 165
    new-instance v9, Lcom/android/systemui/media/MediaCarouselController$1;

    invoke-direct {v9, v6}, Lcom/android/systemui/media/MediaCarouselController$1;-><init>(Lcom/android/systemui/media/MediaDataManager;)V

    new-instance v2, Lcom/android/systemui/media/MediaCarouselController$2;

    invoke-direct {v2, v0}, Lcom/android/systemui/media/MediaCarouselController$2;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    .line 166
    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$3;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaCarouselController$3;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    move-object/from16 v16, v9

    move-object v9, v10

    move-object v4, v10

    move-object v10, v13

    move-object/from16 p5, v8

    move-object v8, v13

    move-object/from16 v13, v16

    move-object v14, v2

    move-object v15, v1

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    .line 164
    invoke-direct/range {v9 .. v17}, Lcom/android/systemui/media/MediaCarouselScrollHandler;-><init>(Lcom/android/systemui/media/MediaScrollView;Lcom/android/systemui/qs/PageIndicator;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;)V

    iput-object v4, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v2}, Lcom/android/systemui/media/MediaCarouselController;->setRtl(Z)V

    .line 168
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaCarouselController;->inflateSettingsButton()V

    .line 169
    sget v1, Lcom/android/systemui/R$id;->media_carousel:I

    invoke-virtual {v8, v1}, Landroid/widget/HorizontalScrollView;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "mediaCarousel.requireViewById(R.id.media_carousel)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    .line 170
    invoke-interface {v7, v5}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 172
    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$4;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaCarouselController$4;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    iput-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityCallback:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$Callback;

    const/4 v2, 0x1

    .line 184
    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$Callback;Z)V

    .line 186
    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$5;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaCarouselController$5;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-virtual {v6, v1}, Lcom/android/systemui/media/MediaDataManager;->addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)V

    .line 208
    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$6;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaCarouselController$6;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 213
    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$7;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaCarouselController$7;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHostStatesManager;->addCallback(Lcom/android/systemui/media/MediaHostStatesManager$Callback;)V

    return-void
.end method

.method public static final synthetic access$addOrUpdatePlayer(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/MediaCarouselController;->addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    return-void
.end method

.method public static final synthetic access$getActivityStarter$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/media/MediaCarouselController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getDesiredLocation$p(Lcom/android/systemui/media/MediaCarouselController;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredLocation:I

    return p0
.end method

.method public static final synthetic access$getKeysNeedRemoval$p(Lcom/android/systemui/media/MediaCarouselController;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->keysNeedRemoval:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getMediaCarouselScrollHandler$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/media/MediaCarouselScrollHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    return-object p0
.end method

.method public static final synthetic access$getNeedsReordering$p(Lcom/android/systemui/media/MediaCarouselController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/media/MediaCarouselController;->needsReordering:Z

    return p0
.end method

.method public static final synthetic access$getVisualStabilityManager$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    return-object p0
.end method

.method public static final synthetic access$inflateSettingsButton(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->inflateSettingsButton()V

    return-void
.end method

.method public static final synthetic access$recreatePlayers(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->recreatePlayers()V

    return-void
.end method

.method public static final synthetic access$reorderAllPlayers(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->reorderAllPlayers()V

    return-void
.end method

.method public static final synthetic access$setNeedsReordering$p(Lcom/android/systemui/media/MediaCarouselController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->needsReordering:Z

    return-void
.end method

.method public static final synthetic access$setRtl(Lcom/android/systemui/media/MediaCarouselController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaCarouselController;->setRtl(Z)V

    return-void
.end method

.method public static final synthetic access$updateCarouselDimensions(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updateCarouselDimensions()V

    return-void
.end method

.method public static final synthetic access$updatePageIndicatorLocation(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorLocation()V

    return-void
.end method

.method private final addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 257
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/media/MediaData;->getActions()Ljava/util/List;

    move-result-object v2

    .line 1819
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaAction;

    .line 258
    invoke-virtual {v3}, Lcom/android/systemui/media/MediaAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget v4, v0, Lcom/android/systemui/media/MediaCarouselController;->fgColor:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/media/MediaData;->getAppIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget v3, v0, Lcom/android/systemui/media/MediaCarouselController;->fgColor:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 261
    iget v7, v0, Lcom/android/systemui/media/MediaCarouselController;->bgColor:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const v27, 0x3ffffb

    const/16 v28, 0x0

    move-object/from16 v4, p3

    invoke-static/range {v4 .. v28}, Lcom/android/systemui/media/MediaData;->copy$default(Lcom/android/systemui/media/MediaData;IZILjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/MediaDeviceData;ZLjava/lang/Runnable;ZZLjava/lang/String;ZLjava/lang/Boolean;ZILjava/lang/Object;)Lcom/android/systemui/media/MediaData;

    move-result-object v2

    .line 262
    sget-object v3, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    move-object/from16 v4, p2

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayer(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_5

    .line 264
    iget-object v4, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaControlPanelFactory:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/MediaControlPanel;

    .line 265
    sget-object v6, Lcom/android/systemui/media/PlayerViewHolder;->Companion:Lcom/android/systemui/media/PlayerViewHolder$Companion;

    iget-object v7, v0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const-string v8, "from(context)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/media/PlayerViewHolder$Companion;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/media/MediaControlPanel;->attach(Lcom/android/systemui/media/PlayerViewHolder;)V

    .line 266
    invoke-virtual {v4}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/media/MediaCarouselController$addOrUpdatePlayer$2;

    invoke-direct {v7, v0}, Lcom/android/systemui/media/MediaCarouselController$addOrUpdatePlayer$2;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/media/MediaViewController;->setSizeChangedListener(Lkotlin/jvm/functions/Function0;)V

    .line 267
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 269
    invoke-virtual {v4}, Lcom/android/systemui/media/MediaControlPanel;->getView()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    :goto_2
    invoke-virtual {v4, v2, v1}, Lcom/android/systemui/media/MediaControlPanel;->bind(Lcom/android/systemui/media/MediaData;Ljava/lang/String;)V

    .line 271
    iget-boolean v6, v0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    invoke-virtual {v4, v6}, Lcom/android/systemui/media/MediaControlPanel;->setListening(Z)V

    const-string v6, "newPlayer"

    .line 272
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/systemui/media/MediaPlayerData;->addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/MediaData;Lcom/android/systemui/media/MediaControlPanel;)V

    .line 273
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4, v5}, Lcom/android/systemui/media/MediaCarouselController;->updatePlayerToState(Lcom/android/systemui/media/MediaControlPanel;Z)V

    .line 274
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaCarouselController;->reorderAllPlayers()V

    goto :goto_3

    .line 276
    :cond_5
    invoke-virtual {v4, v2, v1}, Lcom/android/systemui/media/MediaControlPanel;->bind(Lcom/android/systemui/media/MediaData;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v3, v1, v2, v4}, Lcom/android/systemui/media/MediaPlayerData;->addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/MediaData;Lcom/android/systemui/media/MediaControlPanel;)V

    .line 278
    iget-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->isReorderingAllowed()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 279
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaCarouselController;->reorderAllPlayers()V

    goto :goto_3

    .line 281
    :cond_6
    iput-boolean v5, v0, Lcom/android/systemui/media/MediaCarouselController;->needsReordering:Z

    .line 284
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicator()V

    .line 285
    iget-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onPlayersChanged()V

    .line 286
    iget-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    invoke-static {v1, v5}, Lcom/android/systemui/util/animation/UniqueObjectHostViewKt;->setRequiresRemeasuring(Landroid/view/View;Z)V

    .line 289
    invoke-virtual {v3}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v0, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eq v1, v0, :cond_7

    const-string v0, "MediaCarouselController"

    const-string v1, "Size of players list and number of views in carousel are out of sync"

    .line 290
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method private final getBackgroundColor()I
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    const v1, 0x1010435

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 326
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    const v1, 0x1010031

    invoke-static {p0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 327
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    .line 329
    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-virtual {v1, v2, p0, v0}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private final inflateMediaCarousel()Landroid/view/ViewGroup;
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->media_carousel:I

    .line 238
    new-instance v2, Lcom/android/systemui/util/animation/UniqueObjectHostView;

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-direct {v2, p0}, Lcom/android/systemui/util/animation/UniqueObjectHostView;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 237
    invoke-virtual {v0, v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x3

    .line 242
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-object p0
.end method

.method private final inflateSettingsButton()V
    .locals 5

    .line 223
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->media_carousel_settings_button:I

    .line 224
    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 223
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 225
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->settingsButton:Landroid/view/View;

    const/4 v2, 0x0

    const-string v3, "settingsButton"

    if-eqz v1, :cond_1

    .line 226
    iget-object v4, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 228
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->settingsButton:Landroid/view/View;

    .line 229
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 230
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onSettingsButtonUpdated(Landroid/view/View;)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->settingsButton:Landroid/view/View;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$inflateSettingsButton$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/media/MediaCarouselController$inflateSettingsButton$2;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final maybeResetSettingsCog()V
    .locals 6

    .line 431
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHostStatesManager;->getMediaHostStates()Ljava/util/Map;

    move-result-object v0

    .line 432
    iget v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaHostState;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/android/systemui/media/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result v1

    .line 434
    :goto_0
    iget v3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaHostState;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/media/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result v0

    .line 436
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyShowingOnlyActive:Z

    if-ne v3, v1, :cond_4

    .line 437
    iget v3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v4

    const/4 v5, 0x0

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v5

    :goto_2
    if-nez v4, :cond_5

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-nez v3, :cond_3

    move v5, v2

    :cond_3
    if-nez v5, :cond_5

    if-eq v0, v1, :cond_5

    .line 441
    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyShowingOnlyActive:Z

    .line 442
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0, v2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->resetTranslation(Z)V

    :cond_5
    return-void
.end method

.method public static synthetic onDesiredLocationChanged$default(Lcom/android/systemui/media/MediaCarouselController;ILcom/android/systemui/media/MediaHostState;ZJJILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    const-wide/16 v0, 0xc8

    move-wide v6, v0

    goto :goto_0

    :cond_0
    move-wide v6, p4

    :goto_0
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    move-wide v8, v0

    goto :goto_1

    :cond_1
    move-wide/from16 v8, p6

    :goto_1
    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    .line 464
    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/media/MediaCarouselController;->onDesiredLocationChanged(ILcom/android/systemui/media/MediaHostState;ZJJ)V

    return-void
.end method

.method private final recreatePlayers()V
    .locals 4

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/MediaCarouselController;->bgColor:I

    .line 313
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    const v1, 0x1010036

    invoke-static {v0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 313
    iput v0, p0, Lcom/android/systemui/media/MediaCarouselController;->fgColor:I

    .line 315
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/PageIndicator;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 317
    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaPlayerData;->mediaData()Ljava/util/List;

    move-result-object v0

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    .line 317
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaData;

    const/4 v3, 0x0

    .line 318
    invoke-direct {p0, v2, v3}, Lcom/android/systemui/media/MediaCarouselController;->removePlayer(Ljava/lang/String;Z)V

    const/4 v3, 0x0

    .line 319
    invoke-direct {p0, v2, v3, v1}, Lcom/android/systemui/media/MediaCarouselController;->addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final removePlayer(Ljava/lang/String;Z)V
    .locals 3

    .line 295
    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/MediaPlayerData;->removeMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onPrePlayerRemoved(Lcom/android/systemui/media/MediaControlPanel;)V

    .line 298
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaControlPanel;->getView()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 299
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaControlPanel;->onDestroy()V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onPlayersChanged()V

    .line 301
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicator()V

    if-eqz p2, :cond_2

    .line 305
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/MediaDataManager;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/media/MediaDataManager;->dismissMediaData(Ljava/lang/String;J)V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic removePlayer$default(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 294
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaCarouselController;->removePlayer(Ljava/lang/String;Z)V

    return-void
.end method

.method private final reorderAllPlayers()V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 248
    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaControlPanel;

    .line 249
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaControlPanel;->getView()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onPlayersChanged()V

    return-void
.end method

.method private final setCurrentlyExpanded(Z)V
    .locals 2

    .line 131
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    if-eq v0, p1, :cond_0

    .line 132
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    .line 133
    sget-object p1, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaControlPanel;

    .line 134
    iget-boolean v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaControlPanel;->setListening(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setRtl(Z)V
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselController;->isRtl:Z

    if-eq p1, v0, :cond_0

    .line 123
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->isRtl:Z

    .line 124
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 126
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollToStart()V

    :cond_0
    return-void
.end method

.method private final updateCarouselDimensions()V
    .locals 6

    .line 414
    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaControlPanel;

    .line 415
    invoke-virtual {v3}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v3

    const-string v4, "mediaPlayer.mediaViewController"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    invoke-virtual {v3}, Lcom/android/systemui/media/MediaViewController;->getCurrentWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaViewController;->getTranslationX()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 419
    invoke-virtual {v3}, Lcom/android/systemui/media/MediaViewController;->getCurrentHeight()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaViewController;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 421
    :cond_0
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselHeight:I

    if-eq v2, v0, :cond_2

    .line 422
    :cond_1
    iput v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    .line 423
    iput v2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselHeight:I

    .line 424
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setCarouselBounds(II)V

    .line 426
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorLocation()V

    :cond_2
    return-void
.end method

.method private final updateCarouselSize()V
    .locals 6

    .line 507
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/MeasurementInput;->getWidth()I

    move-result v0

    .line 508
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    if-nez v3, :cond_2

    move-object v3, v1

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v3

    :goto_2
    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/android/systemui/util/animation/MeasurementInput;->getHeight()I

    move-result v3

    .line 509
    :goto_3
    iget v4, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureWidth:I

    if-eq v0, v4, :cond_4

    if-nez v0, :cond_5

    .line 510
    :cond_4
    iget v4, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureHeight:I

    if-eq v3, v4, :cond_a

    if-eqz v3, :cond_a

    .line 511
    :cond_5
    iput v0, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureWidth:I

    .line 512
    iput v3, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureHeight:I

    .line 514
    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->qs_media_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v0

    .line 516
    iget-object v4, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    if-nez v4, :cond_6

    move-object v4, v1

    goto :goto_4

    :cond_6
    invoke-interface {v4}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v4

    :goto_4
    if-nez v4, :cond_7

    move v4, v2

    goto :goto_5

    :cond_7
    invoke-virtual {v4}, Lcom/android/systemui/util/animation/MeasurementInput;->getWidthMeasureSpec()I

    move-result v4

    .line 517
    :goto_5
    iget-object v5, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    if-nez v5, :cond_8

    goto :goto_6

    :cond_8
    invoke-interface {v5}, Lcom/android/systemui/media/MediaHostState;->getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;

    move-result-object v1

    :goto_6
    if-nez v1, :cond_9

    move v1, v2

    goto :goto_7

    :cond_9
    invoke-virtual {v1}, Lcom/android/systemui/util/animation/MeasurementInput;->getHeightMeasureSpec()I

    move-result v1

    .line 518
    :goto_7
    iget-object v5, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v5, v4, v1}, Landroid/widget/HorizontalScrollView;->measure(II)V

    .line 519
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v2, v2, v0, v4}, Landroid/widget/HorizontalScrollView;->layout(IIII)V

    .line 521
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0, v3}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setPlayerWidthPlusPadding(I)V

    :cond_a
    return-void
.end method

.method private final updatePageIndicator()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 334
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    .line 338
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorAlpha()V

    return-void
.end method

.method private final updatePageIndicatorAlpha()V
    .locals 6

    .line 374
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHostStatesManager;->getMediaHostStates()Ljava/util/Map;

    move-result-object v0

    .line 375
    iget v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaHostState;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result v1

    .line 376
    :goto_0
    iget v3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaHostState;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result v2

    :goto_1
    const/4 v0, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v0

    :goto_2
    if-eqz v1, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v0

    :goto_3
    if-eqz v1, :cond_4

    if-nez v2, :cond_6

    .line 381
    :cond_4
    iget v2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    if-nez v1, :cond_5

    sub-float v2, v3, v2

    :cond_5
    const v1, 0x3f733333    # 0.95f

    .line 387
    invoke-static {v1, v3, v0, v3, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v1

    .line 386
    invoke-static {v1, v0, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 390
    invoke-static {v4, v5, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    .line 392
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method private final updatePageIndicatorLocation()V
    .locals 3

    .line 397
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselController;->isRtl:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    goto :goto_0

    .line 400
    :cond_0
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    :goto_0
    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 402
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getContentTranslation()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 403
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 404
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget p0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselHeight:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr p0, v2

    .line 405
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p0, v0

    int-to-float p0, p0

    .line 404
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method private final updatePlayerToState(Lcom/android/systemui/media/MediaControlPanel;Z)V
    .locals 2

    .line 447
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object p1

    .line 448
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    .line 449
    iget v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    .line 450
    iget p0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    .line 447
    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V

    return-void
.end method


# virtual methods
.method public final closeGuts()V
    .locals 2

    .line 498
    sget-object p0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object p0

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaControlPanel;

    const/4 v1, 0x1

    .line 499
    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getMediaFrame()Landroid/view/ViewGroup;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final onDesiredLocationChanged(ILcom/android/systemui/media/MediaHostState;ZJJ)V
    .locals 5

    if-nez p2, :cond_0

    goto :goto_2

    .line 473
    :cond_0
    iput p1, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredLocation:I

    .line 474
    iput-object p2, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    .line 475
    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getExpansion()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/media/MediaCarouselController;->setCurrentlyExpanded(Z)V

    .line 476
    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/media/MediaControlPanel;

    if-eqz p3, :cond_2

    .line 478
    invoke-virtual {v3}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v4

    invoke-virtual {v4, p4, p5, p6, p7}, Lcom/android/systemui/media/MediaViewController;->animatePendingStateChange(JJ)V

    .line 482
    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/systemui/media/MediaViewController;->onLocationPreChange(I)V

    goto :goto_1

    .line 484
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result p3

    xor-int/2addr p3, v2

    invoke-virtual {p1, p3}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setShowsSettingsButton(Z)V

    .line 485
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getFalsingProtectionNeeded()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setFalsingProtectionNeeded(Z)V

    .line 486
    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result p1

    .line 487
    iget-boolean p2, p0, Lcom/android/systemui/media/MediaCarouselController;->playersVisible:Z

    if-eq p1, p2, :cond_4

    .line 488
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->playersVisible:Z

    if-eqz p1, :cond_4

    .line 490
    iget-object p1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    const/4 p2, 0x0

    invoke-static {p1, v1, v2, p2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->resetTranslation$default(Lcom/android/systemui/media/MediaCarouselScrollHandler;ZILjava/lang/Object;)V

    .line 493
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updateCarouselSize()V

    :goto_2
    return-void
.end method

.method public final setCurrentState(IIFZ)V
    .locals 1

    .line 357
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    if-ne p1, v0, :cond_1

    .line 358
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    if-ne p2, v0, :cond_1

    .line 359
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    cmpg-float v0, p3, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz p4, :cond_3

    .line 362
    :cond_1
    iput p1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    .line 363
    iput p2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    .line 364
    iput p3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    .line 365
    sget-object p1, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {p1}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/media/MediaControlPanel;

    const-string p3, "mediaPlayer"

    .line 366
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lcom/android/systemui/media/MediaCarouselController;->updatePlayerToState(Lcom/android/systemui/media/MediaControlPanel;Z)V

    goto :goto_1

    .line 368
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->maybeResetSettingsCog()V

    .line 369
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorAlpha()V

    :cond_3
    return-void
.end method
