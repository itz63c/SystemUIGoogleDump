.class public final Lcom/android/systemui/media/MediaCarouselController;
.super Ljava/lang/Object;
.source "MediaCarouselController.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaCarouselController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaCarouselController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,735:1\n1819#2,2:736\n1819#2,2:738\n734#2:740\n825#2,2:741\n*E\n*S KotlinDebug\n*F\n+ 1 MediaCarouselController.kt\ncom/android/systemui/media/MediaCarouselController\n*L\n384#1,2:736\n568#1,2:738\n639#1:740\n639#1,2:741\n*E\n"
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

.field private shouldScrollToActivePlayer:Z

.field private final visualStabilityCallback:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$Callback;

.field private final visualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;Lcom/android/systemui/media/MediaHostStatesManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 19
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

    const/4 v2, 0x1

    .line 128
    iput-boolean v2, v0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    .line 137
    new-instance v5, Lcom/android/systemui/media/MediaCarouselController$configListener$1;

    invoke-direct {v5, v0}, Lcom/android/systemui/media/MediaCarouselController$configListener$1;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    iput-object v5, v0, Lcom/android/systemui/media/MediaCarouselController;->configListener:Lcom/android/systemui/media/MediaCarouselController$configListener$1;

    .line 160
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaCarouselController;->inflateMediaCarousel()Landroid/view/ViewGroup;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    .line 161
    sget v9, Lcom/android/systemui/R$id;->media_carousel_scroller:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    const-string v10, "mediaFrame.requireViewById(R.id.media_carousel_scroller)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v13, v9

    check-cast v13, Lcom/android/systemui/media/MediaScrollView;

    iput-object v13, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    .line 162
    sget v9, Lcom/android/systemui/R$id;->media_page_indicator:I

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v9

    const-string v10, "mediaFrame.requireViewById(R.id.media_page_indicator)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v9

    check-cast v11, Lcom/android/systemui/qs/PageIndicator;

    iput-object v11, v0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 163
    new-instance v10, Lcom/android/systemui/media/MediaCarouselScrollHandler;

    .line 164
    new-instance v9, Lcom/android/systemui/media/MediaCarouselController$1;

    invoke-direct {v9, v0}, Lcom/android/systemui/media/MediaCarouselController$1;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    new-instance v2, Lcom/android/systemui/media/MediaCarouselController$2;

    invoke-direct {v2, v0}, Lcom/android/systemui/media/MediaCarouselController$2;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    .line 165
    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$3;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaCarouselController$3;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    new-instance v4, Lcom/android/systemui/media/MediaCarouselController$4;

    invoke-direct {v4, v0}, Lcom/android/systemui/media/MediaCarouselController$4;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    move-object/from16 v16, v9

    move-object v9, v10

    move-object/from16 p5, v8

    move-object v8, v10

    move-object v10, v13

    move-object v6, v13

    move-object/from16 v13, v16

    move-object v14, v2

    move-object v15, v1

    move-object/from16 v16, p9

    move-object/from16 v17, p10

    move-object/from16 v18, v4

    .line 163
    invoke-direct/range {v9 .. v18}, Lcom/android/systemui/media/MediaCarouselScrollHandler;-><init>(Lcom/android/systemui/media/MediaScrollView;Lcom/android/systemui/qs/PageIndicator;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lkotlin/jvm/functions/Function0;)V

    iput-object v8, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    .line 166
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

    .line 167
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaCarouselController;->inflateSettingsButton()V

    .line 168
    sget v1, Lcom/android/systemui/R$id;->media_carousel:I

    invoke-virtual {v6, v1}, Landroid/widget/HorizontalScrollView;->requireViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "mediaCarousel.requireViewById(R.id.media_carousel)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    .line 169
    invoke-interface {v7, v5}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 171
    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$5;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaCarouselController$5;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    iput-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityCallback:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$Callback;

    const/4 v2, 0x1

    .line 183
    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$Callback;Z)V

    .line 185
    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$6;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaCarouselController$6;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    move-object/from16 v2, p7

    invoke-virtual {v2, v1}, Lcom/android/systemui/media/MediaDataManager;->addListener(Lcom/android/systemui/media/MediaDataManager$Listener;)V

    .line 233
    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$7;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaCarouselController$7;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 238
    new-instance v1, Lcom/android/systemui/media/MediaCarouselController$8;

    invoke-direct {v1, v0}, Lcom/android/systemui/media/MediaCarouselController$8;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHostStatesManager;->addCallback(Lcom/android/systemui/media/MediaHostStatesManager$Callback;)V

    return-void
.end method

.method public static final synthetic access$addOrUpdatePlayer(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)Z
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/MediaCarouselController;->addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$addSmartspaceMediaRecommendations(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/MediaCarouselController;->addSmartspaceMediaRecommendations(Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V

    return-void
.end method

.method public static final synthetic access$getActivityStarter$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/media/MediaCarouselController;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getDesiredLocation$p(Lcom/android/systemui/media/MediaCarouselController;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredLocation:I

    return p0
.end method

.method public static final synthetic access$getKeysNeedRemoval$p(Lcom/android/systemui/media/MediaCarouselController;)Ljava/util/Set;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->keysNeedRemoval:Ljava/util/Set;

    return-object p0
.end method

.method public static final synthetic access$getNeedsReordering$p(Lcom/android/systemui/media/MediaCarouselController;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/android/systemui/media/MediaCarouselController;->needsReordering:Z

    return p0
.end method

.method public static final synthetic access$getVisualStabilityManager$p(Lcom/android/systemui/media/MediaCarouselController;)Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    return-object p0
.end method

.method public static final synthetic access$inflateSettingsButton(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->inflateSettingsButton()V

    return-void
.end method

.method public static final synthetic access$onSwipeToDismiss(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->onSwipeToDismiss()V

    return-void
.end method

.method public static final synthetic access$recreatePlayers(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->recreatePlayers()V

    return-void
.end method

.method public static final synthetic access$reorderAllPlayers(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->reorderAllPlayers()V

    return-void
.end method

.method public static final synthetic access$setNeedsReordering$p(Lcom/android/systemui/media/MediaCarouselController;Z)V
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->needsReordering:Z

    return-void
.end method

.method public static final synthetic access$setRtl(Lcom/android/systemui/media/MediaCarouselController;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/media/MediaCarouselController;->setRtl(Z)V

    return-void
.end method

.method public static final synthetic access$updateCarouselDimensions(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updateCarouselDimensions()V

    return-void
.end method

.method public static final synthetic access$updatePageIndicatorLocation(Lcom/android/systemui/media/MediaCarouselController;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorLocation()V

    return-void
.end method

.method private final addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)Z
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 294
    iget v5, v0, Lcom/android/systemui/media/MediaCarouselController;->bgColor:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

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

    const-wide/16 v25, 0x0

    const v27, 0x7ffffb

    const/16 v28, 0x0

    invoke-static/range {v2 .. v28}, Lcom/android/systemui/media/MediaData;->copy$default(Lcom/android/systemui/media/MediaData;IZILjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/MediaDeviceData;ZLjava/lang/Runnable;ZZLjava/lang/String;ZLjava/lang/Boolean;ZJILjava/lang/Object;)Lcom/android/systemui/media/MediaData;

    move-result-object v2

    .line 295
    sget-object v3, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    move-object/from16 v4, p2

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayer(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    .line 297
    iget-object v6, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaControlPanelFactory:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/media/MediaControlPanel;

    .line 299
    sget-object v7, Lcom/android/systemui/media/PlayerViewHolder;->Companion:Lcom/android/systemui/media/PlayerViewHolder$Companion;

    iget-object v8, v0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const-string v9, "from(context)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/media/PlayerViewHolder$Companion;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object v7

    .line 298
    invoke-virtual {v6, v7}, Lcom/android/systemui/media/MediaControlPanel;->attachPlayer(Lcom/android/systemui/media/PlayerViewHolder;)V

    .line 300
    invoke-virtual {v6}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/media/MediaCarouselController$addOrUpdatePlayer$1;

    invoke-direct {v8, v0}, Lcom/android/systemui/media/MediaCarouselController$addOrUpdatePlayer$1;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-virtual {v7, v8}, Lcom/android/systemui/media/MediaViewController;->setSizeChangedListener(Lkotlin/jvm/functions/Function0;)V

    .line 301
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 303
    invoke-virtual {v6}, Lcom/android/systemui/media/MediaControlPanel;->getPlayerViewHolder()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object v8

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    :goto_0
    invoke-virtual {v6, v2, v1}, Lcom/android/systemui/media/MediaControlPanel;->bindPlayer(Lcom/android/systemui/media/MediaData;Ljava/lang/String;)V

    .line 305
    iget-boolean v7, v0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    invoke-virtual {v6, v7}, Lcom/android/systemui/media/MediaControlPanel;->setListening(Z)V

    const-string v7, "newPlayer"

    .line 306
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2, v6}, Lcom/android/systemui/media/MediaPlayerData;->addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/MediaData;Lcom/android/systemui/media/MediaControlPanel;)V

    .line 307
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v6, v5}, Lcom/android/systemui/media/MediaCarouselController;->updatePlayerToState(Lcom/android/systemui/media/MediaControlPanel;Z)V

    .line 308
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaCarouselController;->reorderAllPlayers()V

    goto :goto_2

    .line 310
    :cond_2
    invoke-virtual {v4, v2, v1}, Lcom/android/systemui/media/MediaControlPanel;->bindPlayer(Lcom/android/systemui/media/MediaData;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v3, v1, v2, v4}, Lcom/android/systemui/media/MediaPlayerData;->addMediaPlayer(Ljava/lang/String;Lcom/android/systemui/media/MediaData;Lcom/android/systemui/media/MediaControlPanel;)V

    .line 312
    iget-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->visualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->isReorderingAllowed()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lcom/android/systemui/media/MediaCarouselController;->shouldScrollToActivePlayer:Z

    if-eqz v1, :cond_3

    goto :goto_1

    .line 315
    :cond_3
    iput-boolean v5, v0, Lcom/android/systemui/media/MediaCarouselController;->needsReordering:Z

    goto :goto_2

    .line 313
    :cond_4
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaCarouselController;->reorderAllPlayers()V

    .line 318
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicator()V

    .line 319
    iget-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onPlayersChanged()V

    .line 320
    iget-object v1, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    invoke-static {v1, v5}, Lcom/android/systemui/util/animation/UniqueObjectHostViewKt;->setRequiresRemeasuring(Landroid/view/View;Z)V

    .line 323
    invoke-virtual {v3}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v0, v0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eq v1, v0, :cond_5

    const-string v0, "MediaCarouselController"

    const-string v1, "Size of players list and number of views in carousel are out of sync"

    .line 324
    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    return v5
.end method

.method private final addSmartspaceMediaRecommendations(Ljava/lang/String;Landroid/app/smartspace/SmartspaceTarget;)V
    .locals 6

    const-string v0, "MediaCarouselController"

    const-string v1, "Updating smartspace target in carousel"

    .line 330
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sget-object v1, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/media/MediaPlayerData;->getMediaPlayer(Ljava/lang/String;Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string p0, "Skip adding smartspace target in carousel"

    .line 332
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 336
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaControlPanelFactory:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/MediaControlPanel;

    .line 338
    sget-object v3, Lcom/android/systemui/media/RecommendationViewHolder;->Companion:Lcom/android/systemui/media/RecommendationViewHolder$Companion;

    iget-object v4, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const-string v5, "from(context)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/media/RecommendationViewHolder$Companion;->create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/android/systemui/media/RecommendationViewHolder;

    move-result-object v3

    .line 337
    invoke-virtual {v2, v3}, Lcom/android/systemui/media/MediaControlPanel;->attachRecommendation(Lcom/android/systemui/media/RecommendationViewHolder;)V

    .line 339
    invoke-virtual {v2}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/media/MediaCarouselController$addSmartspaceMediaRecommendations$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/media/MediaCarouselController$addSmartspaceMediaRecommendations$1;-><init>(Lcom/android/systemui/media/MediaCarouselController;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/media/MediaViewController;->setSizeChangedListener(Lkotlin/jvm/functions/Function0;)V

    .line 340
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 342
    invoke-virtual {v2}, Lcom/android/systemui/media/MediaControlPanel;->getRecommendationViewHolder()Lcom/android/systemui/media/RecommendationViewHolder;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/android/systemui/media/RecommendationViewHolder;->getRecommendations()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    :goto_0
    iget v3, p0, Lcom/android/systemui/media/MediaCarouselController;->bgColor:I

    invoke-virtual {v2, p2, v3}, Lcom/android/systemui/media/MediaControlPanel;->bindRecommendation(Landroid/app/smartspace/SmartspaceTarget;I)V

    const-string p2, "newRecs"

    .line 344
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/media/MediaPlayerData;->addMediaRecommendation(Ljava/lang/String;Lcom/android/systemui/media/MediaControlPanel;)V

    .line 345
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, v2, p1}, Lcom/android/systemui/media/MediaCarouselController;->updatePlayerToState(Lcom/android/systemui/media/MediaControlPanel;Z)V

    .line 346
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->reorderAllPlayers()V

    .line 347
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicator()V

    .line 348
    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    invoke-static {p2, p1}, Lcom/android/systemui/util/animation/UniqueObjectHostViewKt;->setRequiresRemeasuring(Landroid/view/View;Z)V

    .line 351
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    if-eq p1, p0, :cond_3

    const-string p0, "Size of players list and number of views in carousel are out of sync"

    .line 352
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public static synthetic closeGuts$default(Lcom/android/systemui/media/MediaCarouselController;ZILjava/lang/Object;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 567
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/MediaCarouselController;->closeGuts(Z)V

    return-void
.end method

.method private final getBackgroundColor()I
    .locals 1

    .line 391
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    sget v0, Landroid/R$color;->system_accent2_50:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method private final inflateMediaCarousel()Landroid/view/ViewGroup;
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->media_carousel:I

    .line 263
    new-instance v2, Lcom/android/systemui/util/animation/UniqueObjectHostView;

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-direct {v2, p0}, Lcom/android/systemui/util/animation/UniqueObjectHostView;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    .line 262
    invoke-virtual {v0, v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x3

    .line 267
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-object p0
.end method

.method private final inflateSettingsButton()V
    .locals 5

    .line 248
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->media_carousel_settings_button:I

    .line 249
    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    .line 248
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 250
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->settingsButton:Landroid/view/View;

    const/4 v2, 0x0

    const-string v3, "settingsButton"

    if-eqz v1, :cond_1

    .line 251
    iget-object v4, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 253
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->settingsButton:Landroid/view/View;

    .line 254
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 255
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onSettingsButtonUpdated(Landroid/view/View;)V

    .line 256
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

.method public static synthetic logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;IIZIIILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    .line 617
    iget-object p5, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    .line 622
    invoke-virtual {p5}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getVisibleMediaIndex()I

    move-result p5

    :cond_0
    move v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 617
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported(IIZII)V

    return-void
.end method

.method private final maybeResetSettingsCog()V
    .locals 6

    .line 493
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHostStatesManager;->getMediaHostStates()Ljava/util/Map;

    move-result-object v0

    .line 494
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

    .line 496
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

    .line 498
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyShowingOnlyActive:Z

    if-ne v3, v1, :cond_4

    .line 499
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

    .line 503
    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyShowingOnlyActive:Z

    .line 504
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

    .line 526
    invoke-virtual/range {v2 .. v9}, Lcom/android/systemui/media/MediaCarouselController;->onDesiredLocationChanged(ILcom/android/systemui/media/MediaHostState;ZJJ)V

    return-void
.end method

.method private final onSwipeToDismiss()V
    .locals 10

    .line 639
    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v0

    .line 734
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 825
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/android/systemui/media/MediaControlPanel;

    .line 640
    invoke-virtual {v4}, Lcom/android/systemui/media/MediaControlPanel;->getRecommendationViewHolder()Lcom/android/systemui/media/RecommendationViewHolder;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 643
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v5, 0x2f9

    .line 645
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaControlPanel;

    iget v6, v0, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    const/4 v7, 0x1

    .line 647
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaControlPanel;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaControlPanel;->getSurfaceForSmartspaceLogging()I

    move-result v8

    const/4 v9, -0x1

    move-object v4, p0

    .line 644
    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported(IIZII)V

    goto :goto_1

    .line 650
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getVisibleMediaIndex()I

    move-result v0

    .line 651
    sget-object v1, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-le v2, v0, :cond_4

    .line 652
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "MediaPlayerData.players().elementAt(visibleMediaIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/systemui/media/MediaControlPanel;

    const/16 v2, 0x2f9

    .line 654
    iget v3, v0, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    const/4 v4, 0x0

    .line 656
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaControlPanel;->getSurfaceForSmartspaceLogging()I

    move-result v5

    const/4 v6, -0x1

    move-object v1, p0

    .line 653
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported(IIZII)V

    .line 660
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaDataManager;->onSwipeToDismiss()V

    return-void
.end method

.method private final recreatePlayers()V
    .locals 9

    .line 382
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->getBackgroundColor()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/media/MediaCarouselController;->bgColor:I

    .line 384
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

    .line 384
    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaData;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v2

    .line 385
    invoke-static/range {v3 .. v8}, Lcom/android/systemui/media/MediaCarouselController;->removePlayer$default(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;ZZILjava/lang/Object;)V

    const/4 v3, 0x0

    .line 386
    invoke-direct {p0, v2, v3, v1}, Lcom/android/systemui/media/MediaCarouselController;->addOrUpdatePlayer(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final removePlayer(Ljava/lang/String;ZZ)V
    .locals 4

    .line 361
    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/media/MediaPlayerData;->removeMediaPlayer(Ljava/lang/String;)Lcom/android/systemui/media/MediaControlPanel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 363
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onPrePlayerRemoved(Lcom/android/systemui/media/MediaControlPanel;)V

    .line 364
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaControlPanel;->getPlayerViewHolder()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 365
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaControlPanel;->getRecommendationViewHolder()Lcom/android/systemui/media/RecommendationViewHolder;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/android/systemui/media/RecommendationViewHolder;->getRecommendations()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 366
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaControlPanel;->onDestroy()V

    .line 367
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onPlayersChanged()V

    .line 368
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicator()V

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_3

    .line 372
    iget-object p2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/media/MediaDataManager;->dismissMediaData(Ljava/lang/String;J)V

    :cond_3
    if-eqz p3, :cond_4

    .line 376
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/media/MediaDataManager;->dismissSmartspaceRecommendation(J)V

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic removePlayer$default(Lcom/android/systemui/media/MediaCarouselController;Ljava/lang/String;ZZILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x1

    if-eqz p5, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v0

    .line 356
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/media/MediaCarouselController;->removePlayer(Ljava/lang/String;ZZ)V

    return-void
.end method

.method private final reorderAllPlayers()V
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 273
    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/media/MediaControlPanel;

    .line 274
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaControlPanel;->getPlayerViewHolder()Lcom/android/systemui/media/PlayerViewHolder;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 275
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Lcom/android/systemui/media/PlayerViewHolder;->getPlayer()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 274
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    if-nez v2, :cond_0

    .line 276
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaControlPanel;->getRecommendationViewHolder()Lcom/android/systemui/media/RecommendationViewHolder;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 277
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/android/systemui/media/RecommendationViewHolder;->getRecommendations()Lcom/android/systemui/util/animation/TransitionLayout;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->onPlayersChanged()V

    .line 283
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselController;->shouldScrollToActivePlayer:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 284
    iput-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselController;->shouldScrollToActivePlayer:Z

    .line 285
    sget-object v0, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaPlayerData;->getActiveMediaIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 287
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollToActivePlayer(I)V

    :cond_4
    return-void
.end method

.method private final setCurrentlyExpanded(Z)V
    .locals 2

    .line 130
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    if-eq v0, p1, :cond_0

    .line 131
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    .line 132
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

    .line 133
    iget-boolean v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaControlPanel;->setListening(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final setRtl(Z)V
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselController;->isRtl:Z

    if-eq p1, v0, :cond_0

    .line 122
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->isRtl:Z

    .line 123
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 125
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->scrollToStart()V

    :cond_0
    return-void
.end method

.method private final updateCarouselDimensions()V
    .locals 6

    .line 476
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

    .line 477
    invoke-virtual {v3}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v3

    const-string v4, "mediaPlayer.mediaViewController"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 480
    invoke-virtual {v3}, Lcom/android/systemui/media/MediaViewController;->getCurrentWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaViewController;->getTranslationX()F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 481
    invoke-virtual {v3}, Lcom/android/systemui/media/MediaViewController;->getCurrentHeight()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaViewController;->getTranslationY()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 483
    :cond_0
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    if-ne v1, v0, :cond_1

    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselHeight:I

    if-eq v2, v0, :cond_2

    .line 484
    :cond_1
    iput v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    .line 485
    iput v2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselHeight:I

    .line 486
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setCarouselBounds(II)V

    .line 488
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorLocation()V

    :cond_2
    return-void
.end method

.method private final updateCarouselSize()V
    .locals 6

    .line 577
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

    .line 578
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

    .line 579
    :goto_3
    iget v4, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureWidth:I

    if-eq v0, v4, :cond_4

    if-nez v0, :cond_5

    .line 580
    :cond_4
    iget v4, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureHeight:I

    if-eq v3, v4, :cond_a

    if-eqz v3, :cond_a

    .line 581
    :cond_5
    iput v0, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureWidth:I

    .line 582
    iput v3, p0, Lcom/android/systemui/media/MediaCarouselController;->carouselMeasureHeight:I

    .line 584
    iget-object v3, p0, Lcom/android/systemui/media/MediaCarouselController;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->qs_media_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v0

    .line 586
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

    .line 587
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

    .line 588
    :goto_7
    iget-object v5, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v5, v4, v1}, Landroid/widget/HorizontalScrollView;->measure(II)V

    .line 589
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarousel:Lcom/android/systemui/media/MediaScrollView;

    invoke-virtual {v1}, Landroid/widget/HorizontalScrollView;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v2, v2, v0, v4}, Landroid/widget/HorizontalScrollView;->layout(IIII)V

    .line 591
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {p0, v3}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setPlayerWidthPlusPadding(I)V

    :cond_a
    return-void
.end method

.method private final updatePageIndicator()V
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 396
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/PageIndicator;->setNumPages(I)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorAlpha()V

    return-void
.end method

.method private final updatePageIndicatorAlpha()V
    .locals 6

    .line 436
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHostStatesManager;->getMediaHostStates()Ljava/util/Map;

    move-result-object v0

    .line 437
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

    .line 438
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

    .line 443
    :cond_4
    iget v2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    if-nez v1, :cond_5

    sub-float v2, v3, v2

    :cond_5
    const v1, 0x3f733333    # 0.95f

    .line 449
    invoke-static {v1, v3, v0, v3, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v1

    .line 448
    invoke-static {v1, v0, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 452
    invoke-static {v4, v5, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    .line 454
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method private final updatePageIndicatorLocation()V
    .locals 3

    .line 459
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselController;->isRtl:Z

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    goto :goto_0

    .line 462
    :cond_0
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselWidth:I

    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    :goto_0
    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 464
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget-object v2, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getContentTranslation()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 465
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 466
    iget-object v1, p0, Lcom/android/systemui/media/MediaCarouselController;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    iget p0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentCarouselHeight:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr p0, v2

    .line 467
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p0, v0

    int-to-float p0, p0

    .line 466
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method private final updatePlayerToState(Lcom/android/systemui/media/MediaControlPanel;Z)V
    .locals 2

    .line 509
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object p1

    .line 510
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    .line 511
    iget v1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    .line 512
    iget p0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    .line 509
    invoke-virtual {p1, v0, v1, p0, p2}, Lcom/android/systemui/media/MediaViewController;->setCurrentState(IIFZ)V

    return-void
.end method


# virtual methods
.method public final closeGuts(Z)V
    .locals 1

    .line 568
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

    .line 569
    invoke-virtual {v0, p1}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    return-object p0
.end method

.method public final getMediaFrame()Landroid/view/ViewGroup;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public final logSmartspaceCardReported(IIZI)V
    .locals 8

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;IIZIIILjava/lang/Object;)V

    return-void
.end method

.method public final logSmartspaceCardReported(IIZII)V
    .locals 7

    if-eqz p3, :cond_0

    const/16 p3, 0x9

    goto :goto_0

    :cond_0
    const/16 p3, 0x8

    :goto_0
    move v3, p3

    .line 634
    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/16 v0, 0x160

    move v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    .line 625
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIIIIII)V

    return-void
.end method

.method public final logSmartspaceImpression()V
    .locals 11

    .line 599
    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/media/MediaCarouselScrollHandler;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->getVisibleMediaIndex()I

    move-result v0

    .line 600
    sget-object v1, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-le v2, v0, :cond_3

    .line 601
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/collections/CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "MediaPlayerData.players().elementAt(visibleMediaIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/systemui/media/MediaControlPanel;

    .line 603
    invoke-virtual {v1}, Lcom/android/systemui/media/MediaPlayerData;->playerKeys()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/collections/CollectionsKt;->elementAt(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaPlayerData$MediaSortKey;->getData()Lcom/android/systemui/media/MediaData;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/media/MediaData;->getActive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 604
    invoke-virtual {v2}, Lcom/android/systemui/media/MediaControlPanel;->getRecommendationViewHolder()Lcom/android/systemui/media/RecommendationViewHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v6, v1

    if-nez v6, :cond_2

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/16 v4, 0x320

    .line 610
    iget v5, v2, Lcom/android/systemui/media/MediaControlPanel;->mInstanceId:I

    .line 612
    invoke-virtual {v2}, Lcom/android/systemui/media/MediaControlPanel;->getSurfaceForSmartspaceLogging()I

    move-result v7

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    move-object v3, p0

    .line 609
    invoke-static/range {v3 .. v10}, Lcom/android/systemui/media/MediaCarouselController;->logSmartspaceCardReported$default(Lcom/android/systemui/media/MediaCarouselController;IIZIIILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final onDesiredLocationChanged(ILcom/android/systemui/media/MediaHostState;ZJJ)V
    .locals 6

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 535
    :cond_0
    iput p1, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredLocation:I

    .line 536
    iput-object p2, p0, Lcom/android/systemui/media/MediaCarouselController;->desiredHostState:Lcom/android/systemui/media/MediaHostState;

    .line 537
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

    .line 539
    iget-boolean v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentlyExpanded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/media/MediaCarouselController;->mediaManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaDataManager;->hasActiveMedia()Z

    move-result v0

    if-nez v0, :cond_2

    .line 540
    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 542
    :goto_1
    sget-object v3, Lcom/android/systemui/media/MediaPlayerData;->INSTANCE:Lcom/android/systemui/media/MediaPlayerData;

    invoke-virtual {v3}, Lcom/android/systemui/media/MediaPlayerData;->players()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/media/MediaControlPanel;

    if-eqz p3, :cond_3

    .line 544
    invoke-virtual {v4}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v5

    invoke-virtual {v5, p4, p5, p6, p7}, Lcom/android/systemui/media/MediaViewController;->animatePendingStateChange(JJ)V

    :cond_3
    if-eqz v0, :cond_4

    .line 548
    invoke-virtual {v4}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/media/MediaViewController;->isGutsVisible()Z

    move-result v5

    if-eqz v5, :cond_4

    xor-int/lit8 v5, p3, 0x1

    .line 549
    invoke-virtual {v4, v5}, Lcom/android/systemui/media/MediaControlPanel;->closeGuts(Z)V

    .line 552
    :cond_4
    invoke-virtual {v4}, Lcom/android/systemui/media/MediaControlPanel;->getMediaViewController()Lcom/android/systemui/media/MediaViewController;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/systemui/media/MediaViewController;->onLocationPreChange(I)V

    goto :goto_2

    .line 554
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getShowsOnlyActiveMedia()Z

    move-result p3

    xor-int/2addr p3, v2

    invoke-virtual {p1, p3}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setShowsSettingsButton(Z)V

    .line 555
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object p1

    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getFalsingProtectionNeeded()Z

    move-result p3

    invoke-virtual {p1, p3}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->setFalsingProtectionNeeded(Z)V

    .line 556
    invoke-interface {p2}, Lcom/android/systemui/media/MediaHostState;->getVisible()Z

    move-result p1

    .line 557
    iget-boolean p2, p0, Lcom/android/systemui/media/MediaCarouselController;->playersVisible:Z

    if-eq p1, p2, :cond_6

    .line 558
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->playersVisible:Z

    if-eqz p1, :cond_6

    .line 560
    invoke-virtual {p0}, Lcom/android/systemui/media/MediaCarouselController;->getMediaCarouselScrollHandler()Lcom/android/systemui/media/MediaCarouselScrollHandler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, v1, v2, p2}, Lcom/android/systemui/media/MediaCarouselScrollHandler;->resetTranslation$default(Lcom/android/systemui/media/MediaCarouselScrollHandler;ZILjava/lang/Object;)V

    .line 563
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updateCarouselSize()V

    :goto_3
    return-void
.end method

.method public final setCurrentState(IIFZ)V
    .locals 1

    .line 419
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    if-ne p1, v0, :cond_1

    .line 420
    iget v0, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    if-ne p2, v0, :cond_1

    .line 421
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

    .line 424
    :cond_1
    iput p1, p0, Lcom/android/systemui/media/MediaCarouselController;->currentStartLocation:I

    .line 425
    iput p2, p0, Lcom/android/systemui/media/MediaCarouselController;->currentEndLocation:I

    .line 426
    iput p3, p0, Lcom/android/systemui/media/MediaCarouselController;->currentTransitionProgress:F

    .line 427
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

    .line 428
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p4}, Lcom/android/systemui/media/MediaCarouselController;->updatePlayerToState(Lcom/android/systemui/media/MediaControlPanel;Z)V

    goto :goto_1

    .line 430
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->maybeResetSettingsCog()V

    .line 431
    invoke-direct {p0}, Lcom/android/systemui/media/MediaCarouselController;->updatePageIndicatorAlpha()V

    :cond_3
    return-void
.end method

.method protected final setShouldScrollToActivePlayer(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/android/systemui/media/MediaCarouselController;->shouldScrollToActivePlayer:Z

    return-void
.end method
