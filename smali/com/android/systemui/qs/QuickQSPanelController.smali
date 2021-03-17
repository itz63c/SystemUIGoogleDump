.class public Lcom/android/systemui/qs/QuickQSPanelController;
.super Lcom/android/systemui/qs/QSPanelControllerBase;
.source "QuickQSPanelController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSPanelControllerBase<",
        "Lcom/android/systemui/qs/QuickQSPanel;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

.field private mUseSideLabels:Z


# direct methods
.method public static synthetic $r8$lambda$vEqOQOv7ObL-HObzDRHb8bwXQpQ(Lcom/android/systemui/qs/QuickQSPanelController;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QuickQSPanelController;->lambda$new$0(Landroid/content/res/Configuration;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizerController;ZLcom/android/systemui/media/MediaHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;ZLcom/android/systemui/statusbar/FeatureFlags;)V
    .locals 12

    move-object v11, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p11

    .line 64
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/qs/QSPanelControllerBase;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizerController;ZLcom/android/systemui/media/MediaHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/FeatureFlags;)V

    .line 47
    new-instance v0, Lcom/android/systemui/qs/QuickQSPanelController-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QuickQSPanelController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QuickQSPanelController;)V

    iput-object v0, v11, Lcom/android/systemui/qs/QuickQSPanelController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    move/from16 v0, p10

    .line 66
    iput-boolean v0, v11, Lcom/android/systemui/qs/QuickQSPanelController;->mUseSideLabels:Z

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/content/res/Configuration;)V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$integer;->quick_qs_panel_max_columns:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 50
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QuickQSPanelController;->setMaxTiles(I)V

    :cond_0
    return-void
.end method

.method private setMaxTiles(I)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setMaxTiles(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanelController;->setTiles()V

    return-void
.end method


# virtual methods
.method public getNumQuickTiles()I
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles()I

    move-result p0

    return p0
.end method

.method public isListening()Z
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isListening()Z

    move-result p0

    return p0
.end method

.method protected onInit()V
    .locals 2

    .line 71
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->onInit()V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->setExpansion(F)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->setShowsOnlyActiveMedia(Z)V

    .line 74
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/MediaHost;->init(I)V

    return-void
.end method

.method protected onViewAttached()V
    .locals 1

    .line 79
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->onViewAttached()V

    .line 80
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSPanel;->addOnConfigurationChangedListener(Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->onViewDetached()V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSPanel;->removeOnConfigurationChangedListener(Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V

    return-void
.end method

.method public setContentMargins(II)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/systemui/qs/QSPanel;->setContentMargins(IILandroid/view/ViewGroup;)V

    return-void
.end method

.method public setTiles()V
    .locals 5

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile;

    .line 102
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QuickQSPanel;->getNumQuickTiles()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 107
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/QuickQSPanelController;->mUseSideLabels:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 109
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 110
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_2
    move v3, v2

    .line 112
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 113
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 115
    :cond_3
    invoke-super {p0, v1, v2}, Lcom/android/systemui/qs/QSPanelControllerBase;->setTiles(Ljava/util/Collection;Z)V

    goto :goto_2

    .line 118
    :cond_4
    invoke-super {p0, v0, v2}, Lcom/android/systemui/qs/QSPanelControllerBase;->setTiles(Ljava/util/Collection;Z)V

    :goto_2
    return-void
.end method
