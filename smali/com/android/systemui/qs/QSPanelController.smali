.class public Lcom/android/systemui/qs/QSPanelController;
.super Lcom/android/systemui/qs/QSPanelControllerBase;
.source "QSPanelController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSPanelControllerBase<",
        "Lcom/android/systemui/qs/QSPanel;",
        ">;"
    }
.end annotation


# instance fields
.field private final mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

.field private mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private final mBrightnessMirrorListener:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

.field private final mBrightnessSlider:Lcom/android/systemui/settings/brightness/BrightnessSlider;

.field private final mBrightnessSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mGridContentVisible:Z

.field private final mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

.field private final mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

.field private final mQsSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

.field private final mQsTileRevealControllerFactory:Lcom/android/systemui/qs/QSTileRevealController$Factory;

.field private mTileLayoutTouchListener:Landroid/view/View$OnTouchListener;

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method public static synthetic $r8$lambda$2ReEqaFn2L-4Ssi2HELzDJIE-IQ(Lcom/android/systemui/qs/QSPanelController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanelController;->lambda$showEdit$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b7o1hV7DIioJIhjRTbriVPLS_2Q(Lcom/android/systemui/qs/QSPanelController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanelController;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSSecurityFooter;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizerController;ZLcom/android/systemui/media/MediaHost;Lcom/android/systemui/qs/QSTileRevealController$Factory;Lcom/android/systemui/dump/DumpManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/settings/brightness/BrightnessController$Factory;Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/FeatureFlags;)V
    .locals 14

    move-object v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p9

    move-object/from16 v10, p16

    .line 108
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/qs/QSPanelControllerBase;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizerController;ZLcom/android/systemui/media/MediaHost;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/FeatureFlags;)V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, v11, Lcom/android/systemui/qs/QSPanelController;->mGridContentVisible:Z

    .line 72
    new-instance v0, Lcom/android/systemui/qs/QSPanelController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSPanelController$1;-><init>(Lcom/android/systemui/qs/QSPanelController;)V

    iput-object v0, v11, Lcom/android/systemui/qs/QSPanelController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    .line 85
    new-instance v0, Lcom/android/systemui/qs/QSPanelController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSPanelController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSPanelController;)V

    iput-object v0, v11, Lcom/android/systemui/qs/QSPanelController;->mBrightnessMirrorListener:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    .line 88
    new-instance v0, Lcom/android/systemui/qs/QSPanelController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSPanelController$2;-><init>(Lcom/android/systemui/qs/QSPanelController;)V

    iput-object v0, v11, Lcom/android/systemui/qs/QSPanelController;->mTileLayoutTouchListener:Landroid/view/View$OnTouchListener;

    .line 110
    iput-object v12, v11, Lcom/android/systemui/qs/QSPanelController;->mQsSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    move-object/from16 v0, p3

    .line 111
    iput-object v0, v11, Lcom/android/systemui/qs/QSPanelController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    move-object/from16 v0, p5

    .line 112
    iput-object v0, v11, Lcom/android/systemui/qs/QSPanelController;->mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    move-object/from16 v0, p8

    .line 113
    iput-object v0, v11, Lcom/android/systemui/qs/QSPanelController;->mQsTileRevealControllerFactory:Lcom/android/systemui/qs/QSTileRevealController$Factory;

    move-object/from16 v0, p15

    .line 114
    iput-object v0, v11, Lcom/android/systemui/qs/QSPanelController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v0, p4

    .line 115
    invoke-virtual {v12, v0}, Lcom/android/systemui/qs/QSSecurityFooter;->setHostEnvironment(Lcom/android/systemui/qs/QSTileHost;)V

    .line 116
    iput-object v13, v11, Lcom/android/systemui/qs/QSPanelController;->mBrightnessSliderFactory:Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v11, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v13, v0, v1}, Lcom/android/systemui/settings/brightness/BrightnessSlider$Factory;->create(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/android/systemui/settings/brightness/BrightnessSlider;

    move-result-object v0

    iput-object v0, v11, Lcom/android/systemui/qs/QSPanelController;->mBrightnessSlider:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    .line 119
    iget-object v1, v11, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSPanel;->setBrightnessView(Landroid/view/View;)V

    move-object/from16 v1, p13

    .line 121
    invoke-virtual {v1, v0}, Lcom/android/systemui/settings/brightness/BrightnessController$Factory;->create(Lcom/android/systemui/settings/brightness/ToggleSlider;)Lcom/android/systemui/settings/brightness/BrightnessController;

    move-result-object v0

    iput-object v0, v11, Lcom/android/systemui/qs/QSPanelController;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSPanelController;)Landroid/view/View;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSPanelController;)Lcom/android/systemui/qs/QSSecurityFooter;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSPanelController;)Landroid/view/View;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSPanelController;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanelController;->updateBrightnessMirror()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSPanelController;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanelController;->updateBrightnessMirror()V

    return-void
.end method

.method private synthetic lambda$showEdit$1(Landroid/view/View;)V
    .locals 4

    .line 255
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->isCustomizing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 257
    aget v2, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    const/4 v3, 0x1

    .line 258
    aget v0, v0, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    .line 259
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizerController;->show(IIZ)V

    :cond_0
    return-void
.end method

.method private updateBrightnessMirror()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 217
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessSlider:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-virtual {p0, v0}, Lcom/android/systemui/settings/brightness/BrightnessSlider;->setMirrorControllerAndMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createTileRevealController()Lcom/android/systemui/qs/QSTileRevealController;
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsTileRevealControllerFactory:Lcom/android/systemui/qs/QSTileRevealController$Factory;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/QSPanel;

    .line 159
    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->createRegularTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/PagedTileLayout;

    .line 158
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/qs/QSTileRevealController$Factory;->create(Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/PagedTileLayout;)Lcom/android/systemui/qs/QSTileRevealController;

    move-result-object p0

    return-object p0
.end method

.method public getBrightnessView()Landroid/view/View;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getBrightnessView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getHost()Lcom/android/systemui/qs/QSTileHost;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object p0
.end method

.method public isExpanded()Z
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isExpanded()Z

    move-result p0

    return p0
.end method

.method public isShown()Z
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p0

    return p0
.end method

.method public onInit()V
    .locals 2

    .line 126
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->onInit()V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->setExpansion(F)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->setShowsOnlyActiveMedia(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaHost;->init(I)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsCustomizerController:Lcom/android/systemui/qs/customize/QSCustomizerController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 131
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessSlider:Lcom/android/systemui/settings/brightness/BrightnessSlider;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 3

    .line 136
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->onViewAttached()V

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->updateMediaDisappearParameters()V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/tuner/TunerService$Tunable;

    const-string v2, "qs_show_brightness"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelController;->refreshAllTiles()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->addOnConfigurationChangedListener(Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelController;->mQsSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSSecurityFooter;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setSecurityFooter(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->switchTileLayout(Z)Z

    .line 148
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_1

    .line 149
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessMirrorListener:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->createRegularTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/PagedTileLayout;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mTileLayoutTouchListener:Landroid/view/View$OnTouchListener;

    .line 153
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/tuner/TunerService$Tunable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelController;->mOnConfigurationChangedListener:Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->removeOnConfigurationChangedListener(Lcom/android/systemui/qs/QSPanel$OnConfigurationChangedListener;)V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessMirrorListener:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 169
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->onViewDetached()V

    return-void
.end method

.method public openDetails(Ljava/lang/String;)V
    .locals 0

    .line 229
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->getTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 231
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->openDetails(Lcom/android/systemui/plugins/qs/QSTile;)V

    :cond_0
    return-void
.end method

.method public refreshAllTiles()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/brightness/BrightnessController;->checkRestrictionAndSetEnabled()V

    .line 248
    invoke-super {p0}, Lcom/android/systemui/qs/QSPanelControllerBase;->refreshAllTiles()V

    .line 249
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->refreshState()V

    return-void
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 1

    .line 204
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessMirrorListener:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 208
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz p1, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessMirrorListener:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    .line 212
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanelController;->updateBrightnessMirror()V

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setCallback(Lcom/android/systemui/qs/QSDetail$Callback;)V

    return-void
.end method

.method public setContentMargins(II)V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMediaHost:Lcom/android/systemui/media/MediaHost;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/systemui/qs/QSPanel;->setContentMargins(IILandroid/view/ViewGroup;)V

    return-void
.end method

.method public setFooterPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setFooterPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    return-void
.end method

.method public setGridContentVisibility(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 272
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanelController;->setVisibility(I)V

    .line 273
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSPanelController;->mGridContentVisible:Z

    if-eq v1, p1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanelControllerBase;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->visibility(II)V

    .line 276
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanelController;->mGridContentVisible:Z

    return-void
.end method

.method public setHeaderContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setHeaderContainer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setListening(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 186
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSPanelControllerBase;->setListening(Z)V

    .line 187
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p2}, Lcom/android/systemui/qs/QSPanel;->isListening()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanelController;->refreshAllTiles()V

    .line 191
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/qs/QSPanelController;->mQsSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/QSSecurityFooter;->setListening(Z)V

    if-eqz p1, :cond_2

    .line 196
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessController;->registerCallbacks()V

    goto :goto_1

    .line 198
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mBrightnessController:Lcom/android/systemui/settings/brightness/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/brightness/BrightnessController;->unregisterCallbacks()V

    :goto_1
    return-void
.end method

.method public setMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 294
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setPageListener(Lcom/android/systemui/qs/PagedTileLayout$PageListener;)V

    return-void
.end method

.method setPageMargin(I)V
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setPageMargin(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public showDetailAdapter(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V
    .locals 2

    .line 308
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V

    return-void
.end method

.method public showDeviceMonitoringDialog()V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanelController;->mQsSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSecurityFooter;->showDeviceMonitoringDialog()V

    return-void
.end method

.method public showEdit(Landroid/view/View;)V
    .locals 1

    .line 254
    new-instance v0, Lcom/android/systemui/qs/QSPanelController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/QSPanelController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSPanelController;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateResources()V
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    return-void
.end method
