.class public abstract Lcom/android/systemui/qs/QSPanelControllerBase;
.super Lcom/android/systemui/util/ViewController;
.source "QSPanelControllerBase.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/systemui/qs/QSPanel;",
        ">",
        "Lcom/android/systemui/util/ViewController<",
        "TT;>;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation


# instance fields
.field private mCachedSpecs:Ljava/lang/String;

.field private final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field private final mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

.field protected final mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mLastOrientation:I

.field protected final mMediaHost:Lcom/android/systemui/media/MediaHost;

.field private final mMediaHostVisibilityListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field protected final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

.field private final mQSHostCallback:Lcom/android/systemui/qs/QSHost$Callback;

.field private final mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

.field private final mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

.field private mQsTileRevealController:Lcom/android/systemui/qs/QSTileRevealController;

.field protected final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRevealExpansion:F

.field private mShouldUseSplitNotificationShade:Z

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mUsingHorizontalLayout:Z

.field private final mUsingMediaPlayer:Z


# direct methods
.method public static synthetic $r8$lambda$b-SAS4OwGLYW8QzhsBcLvTgt2pQ(Lcom/android/systemui/qs/QSPanelControllerBase;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->lambda$new$0(Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yucgqQQ1leBGXgslWx18KV4BlMA(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->lambda$getTilesSpecs$1(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected constructor <init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizerController;ZLcom/android/systemui/media/MediaHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/FeatureFlags;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/systemui/qs/QSTileHost;",
            "Lcom/android/systemui/qs/customize/QSCustomizerController;",
            "Z",
            "Lcom/android/systemui/media/MediaHost;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/qs/logging/QSLogger;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ")V"
        }
    .end annotation

    .line 111
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    const-string p1, ""

    .line 72
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mCachedSpecs:Ljava/lang/String;

    .line 76
    new-instance p1, Lcom/android/systemui/qs/QSPanelControllerBase$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSPanelControllerBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSPanelControllerBase;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQSHostCallback:Lcom/android/systemui/qs/QSHost$Callback;

    .line 78
    new-instance p1, Lcom/android/systemui/qs/QSPanelControllerBase$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSPanelControllerBase$1;-><init>(Lcom/android/systemui/qs/QSPanelControllerBase;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    .line 91
    new-instance p1, Lcom/android/systemui/qs/QSPanelControllerBase$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSPanelControllerBase$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSPanelControllerBase;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHostVisibilityListener:Lkotlin/jvm/functions/Function1;

    .line 112
    iput-object p2, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSTileHost;

    .line 113
    iput-object p3, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    .line 114
    iput-boolean p4, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUsingMediaPlayer:Z

    .line 115
    iput-object p5, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    .line 116
    iput-object p6, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 117
    iput-object p7, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 118
    iput-object p8, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    .line 119
    iput-object p9, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 120
    iput-object p10, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p10, p1}, Lcom/android/systemui/util/Utils;->shouldUseSplitNotificationShade(Lcom/android/systemui/statusbar/FeatureFlags;Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mShouldUseSplitNotificationShade:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/qs/QSPanelControllerBase;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mShouldUseSplitNotificationShade:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSPanelControllerBase;)Lcom/android/systemui/statusbar/FeatureFlags;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSPanelControllerBase;)Landroid/content/res/Resources;
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSPanelControllerBase;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mLastOrientation:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/QSPanelControllerBase;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mLastOrientation:I

    return p1
.end method

.method private addTile(Lcom/android/systemui/plugins/qs/QSTile;Z)V
    .locals 3

    .line 199
    new-instance v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;-><init>()V

    .line 200
    iput-object p1, v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 201
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/systemui/qs/QSTileHost;->createTileView(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object p1

    iput-object p1, v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    .line 202
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    .line 203
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTilesSpecs()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mCachedSpecs:Ljava/lang/String;

    return-void
.end method

.method private getTilesSpecs()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/qs/QSPanelControllerBase$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/qs/QSPanelControllerBase$$ExternalSyntheticLambda1;

    .line 241
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ","

    .line 242
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$getTilesSpecs$1(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)Ljava/lang/String;
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->onMediaVisibilityChanged(Ljava/lang/Boolean;)V

    const/4 p1, 0x0

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->switchTileLayout(Z)Z

    const/4 p0, 0x0

    return-object p0
.end method

.method private logTiles()V
    .locals 5

    const/4 v0, 0x0

    .line 353
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    .line 355
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v3, Landroid/metrics/LogMaker;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getMetricsCategory()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v4, 0x1

    .line 356
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 355
    invoke-interface {v1, v3}, Lcom/android/systemui/plugins/qs/QSTile;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method areThereTiles()Z
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 2

    .line 209
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    .line 210
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 211
    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    iget-object p0, v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QSTile;->click(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public closeDetail()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->hide()V

    return-void

    .line 269
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    return-void
.end method

.method protected createTileRevealController()Lcom/android/systemui/qs/QSTileRevealController;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Tile records:"

    .line 371
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 373
    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    instance-of v1, v1, Lcom/android/systemui/Dumpable;

    if-eqz v1, :cond_0

    const-string v1, "    "

    .line 374
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    check-cast v2, Lcom/android/systemui/Dumpable;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected getTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 2

    const/4 v0, 0x0

    .line 218
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object p0

    return-object p0
.end method

.method public getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p0

    return-object p0
.end method

.method getTileView(Lcom/android/systemui/plugins/qs/QSTile;)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 2

    .line 231
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 232
    iget-object v1, v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    if-ne v1, p1, :cond_0

    .line 233
    iget-object p0, v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tileView:Lcom/android/systemui/plugins/qs/QSTileView;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected onInit()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->initialize()V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->isListening()Z

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/systemui/qs/logging/QSLogger;->logAllTilesChangeListening(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->createTileRevealController()Lcom/android/systemui/qs/QSTileRevealController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQsTileRevealController:Lcom/android/systemui/qs/QSTileRevealController;

    if-eqz v0, :cond_0

    .line 135
    iget v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRevealExpansion:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTileRevealController;->setExpansion(F)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHostVisibilityListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->addVisibilityChangeListener(Lkotlin/jvm/functions/Function1;)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->onMediaVisibilityChanged(Ljava/lang/Boolean;)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->addOnConfigurationChangedListener(Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQSHostCallback:Lcom/android/systemui/qs/QSHost$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTileHost;->addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->setTiles()V

    const/4 v0, 0x1

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->switchTileLayout(Z)Z

    .line 145
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->removeOnConfigurationChangedListener(Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQSHostCallback:Lcom/android/systemui/qs/QSHost$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTileHost;->removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHostVisibilityListener:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->removeVisibilityChangeListener(Lkotlin/jvm/functions/Function1;)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 158
    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacks()V

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    return-void
.end method

.method public refreshAllTiles()V
    .locals 1

    .line 193
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 194
    iget-object v0, v0, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isExpanded()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/logging/QSLogger;->logPanelExpanded(ZLjava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->setExpanded(Z)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->visibility(IZ)V

    if-nez p1, :cond_1

    .line 255
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->closePanelEvent()Lcom/android/systemui/qs/QSEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->closeDetail()V

    goto :goto_0

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->openPanelEvent()Lcom/android/systemui/qs/QSEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 259
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->logTiles()V

    :goto_0
    return-void
.end method

.method setListening(Z)V
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQSLogger:Lcom/android/systemui/qs/logging/QSLogger;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getDumpableTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mCachedSpecs:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/qs/logging/QSLogger;->logAllTilesChangeListening(ZLjava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {v0, p1, p0}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setListening(ZLcom/android/internal/logging/UiEventLogger;)V

    :cond_0
    return-void
.end method

.method public setRevealExpansion(F)V
    .locals 0

    .line 362
    iput p1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRevealExpansion:F

    .line 363
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQsTileRevealController:Lcom/android/systemui/qs/QSTileRevealController;

    if-eqz p0, :cond_0

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileRevealController;->setExpansion(F)V

    :cond_0
    return-void
.end method

.method public setTiles()V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->setTiles(Ljava/util/Collection;Z)V

    return-void
.end method

.method public setTiles(Ljava/util/Collection;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;Z)V"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mQsTileRevealController:Lcom/android/systemui/qs/QSTileRevealController;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileRevealController;->updateRevealedTiles(Ljava/util/Collection;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 181
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/QSPanel;->removeTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    .line 182
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->callback:Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, ""

    .line 185
    iput-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mCachedSpecs:Ljava/lang/String;

    .line 186
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    .line 187
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/qs/QSPanelControllerBase;->addTile(Lcom/android/systemui/plugins/qs/QSTile;Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method shouldUseHorizontalLayout()Z
    .locals 2

    .line 344
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mShouldUseSplitNotificationShade:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 347
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUsingMediaPlayer:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method switchTileLayout(Z)Z
    .locals 4

    .line 295
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->shouldUseHorizontalLayout()Z

    move-result v0

    .line 296
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUsingHorizontalLayout:Z

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 297
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUsingHorizontalLayout:Z

    .line 298
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;

    .line 299
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/QSPanel;->removeTile(Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;)V

    .line 300
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->tile:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanelControllerBase$TileRecord;->callback:Lcom/android/systemui/plugins/qs/QSTile$Callback;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallback(Lcom/android/systemui/plugins/qs/QSTile$Callback;)V

    goto :goto_1

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUsingHorizontalLayout:Z

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/systemui/qs/QSPanel;->setUsingHorizontalLayout(ZLandroid/view/ViewGroup;ZLcom/android/internal/logging/UiEventLogger;)V

    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->updateMediaDisappearParameters()V

    .line 306
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->setTiles()V

    const/4 p0, 0x1

    return p0
.end method

.method updateMediaDisappearParameters()V
    .locals 6

    .line 317
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUsingMediaPlayer:Z

    if-nez v0, :cond_0

    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v0}, Lcom/android/systemui/media/MediaHost;->getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;

    move-result-object v0

    .line 321
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mUsingHorizontalLayout:Z

    const v2, 0x3f733333    # 0.95f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    .line 323
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getDisappearSize()Landroid/graphics/PointF;

    move-result-object v1

    const v5, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v3, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 325
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getGonePivot()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 327
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getContentTranslationFraction()Landroid/graphics/PointF;

    move-result-object v1

    const/high16 v5, 0x3e800000    # 0.25f

    invoke-virtual {v1, v5, v4}, Landroid/graphics/PointF;->set(FF)V

    const v1, 0x3f19999a    # 0.6f

    .line 328
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/animation/DisappearParameters;->setDisappearEnd(F)V

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getDisappearSize()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 333
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getGonePivot()Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 335
    invoke-virtual {v0}, Lcom/android/systemui/util/animation/DisappearParameters;->getContentTranslationFraction()Landroid/graphics/PointF;

    move-result-object v1

    const v4, 0x3f866666    # 1.05f

    invoke-virtual {v1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 336
    invoke-virtual {v0, v2}, Lcom/android/systemui/util/animation/DisappearParameters;->setDisappearEnd(F)V

    .line 338
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/systemui/util/animation/DisappearParameters;->setFadeStartPosition(F)V

    .line 339
    invoke-virtual {v0, v3}, Lcom/android/systemui/util/animation/DisappearParameters;->setDisappearStart(F)V

    .line 340
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaHost;->setDisappearParameters(Lcom/android/systemui/util/animation/DisappearParameters;)V

    return-void
.end method
