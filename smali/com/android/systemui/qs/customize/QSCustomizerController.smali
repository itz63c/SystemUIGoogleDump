.class public Lcom/android/systemui/qs/customize/QSCustomizerController;
.super Lcom/android/systemui/util/ViewController;
.source "QSCustomizerController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/qs/customize/QSCustomizer;",
        ">;"
    }
.end annotation


# instance fields
.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private final mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

.field private final mQsLabelsFlag:Z

.field private final mQsTileHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private final mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

.field private final mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

.field private final mToolbar:Landroid/widget/Toolbar;

.field private final mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static synthetic $r8$lambda$RZvIGkw5K4FX4bWXXGUAKKE01uc(Lcom/android/systemui/qs/customize/QSCustomizerController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizerController;->lambda$onViewAttached$0(Landroid/view/View;)V

    return-void
.end method

.method protected constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizer;Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/tuner/TunerService;Z)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 73
    new-instance p1, Lcom/android/systemui/qs/customize/QSCustomizerController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/QSCustomizerController$1;-><init>(Lcom/android/systemui/qs/customize/QSCustomizerController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    .line 89
    new-instance p1, Lcom/android/systemui/qs/customize/QSCustomizerController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/QSCustomizerController$2;-><init>(Lcom/android/systemui/qs/customize/QSCustomizerController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    .line 100
    new-instance p1, Lcom/android/systemui/qs/customize/QSCustomizerController$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/QSCustomizerController$3;-><init>(Lcom/android/systemui/qs/customize/QSCustomizerController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 114
    new-instance p1, Lcom/android/systemui/qs/customize/QSCustomizerController$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/customize/QSCustomizerController$4;-><init>(Lcom/android/systemui/qs/customize/QSCustomizerController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 129
    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    .line 130
    iput-object p3, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mQsTileHost:Lcom/android/systemui/qs/QSTileHost;

    .line 131
    iput-object p4, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 132
    iput-object p5, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 133
    iput-object p6, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 134
    iput-object p7, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 135
    iput-object p8, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 136
    iput-object p9, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 138
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/customize/QSCustomizer;

    const p2, 0x10201a5

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Toolbar;

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mToolbar:Landroid/widget/Toolbar;

    .line 139
    iput-boolean p11, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mQsLabelsFlag:Z

    .line 141
    iput-object p10, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/customize/QSCustomizerController;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/customize/QSCustomizerController;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->reset()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/customize/QSCustomizerController;)Landroid/view/View;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/customize/QSCustomizerController;)Landroid/widget/Toolbar;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mToolbar:Landroid/widget/Toolbar;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/customize/QSCustomizerController;)Landroid/view/View;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/customize/QSCustomizerController;)Lcom/android/systemui/tuner/TunerService;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/customize/QSCustomizerController;)Landroid/view/View;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/customize/QSCustomizerController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/customize/QSCustomizerController;)Landroid/view/View;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/customize/QSCustomizerController;)Lcom/android/systemui/statusbar/phone/LightBarController;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/customize/QSCustomizerController;)Landroid/view/View;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/customize/QSCustomizerController;)Landroid/view/View;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/customize/QSCustomizerController;)Lcom/android/systemui/qs/customize/TileAdapter;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    return-object p0
.end method

.method private synthetic lambda$onViewAttached$0(Landroid/view/View;)V
    .locals 0

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->hide()V

    return-void
.end method

.method private reset()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/qs/QSTileHost;->getDefaultSpecs(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter;->resetTileSpecs(Ljava/util/List;)V

    return-void
.end method

.method private save()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/TileQueryHelper;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mQsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/customize/TileAdapter;->saveSpecs(Lcom/android/systemui/qs/QSTileHost;)V

    :cond_0
    return-void
.end method

.method private setTileSpecs()V
    .locals 3

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mQsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/plugins/qs/QSTile;

    .line 282
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->setTileSpecs(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/ScreenLifecycle;->getScreenState()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 262
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_CLOSED:Lcom/android/systemui/qs/QSEditEvent;

    invoke-interface {v2, v3}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 264
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v2}, Landroid/widget/Toolbar;->dismissPopupMenus()V

    .line 265
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setCustomizing(Z)V

    .line 266
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->save()V

    .line 267
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->hide(Z)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors(Lcom/android/systemui/statusbar/phone/LightBarController;)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public isCustomizing()Z
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result p0

    return p0
.end method

.method public isShown()Z
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown()Z

    move-result p0

    return p0
.end method

.method protected onInit()V
    .locals 1

    .line 146
    invoke-super {p0}, Lcom/android/systemui/util/ViewController;->onInit()V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getRemoveItem()Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mQsLabelsFlag:Z

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method protected onViewAttached()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavBackDrop(Landroid/content/res/Configuration;Lcom/android/systemui/statusbar/phone/LightBarController;)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

    const-string v2, "sysui_remove_labels"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->setListener(Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->qs_tile_margin_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 160
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->changeHalfMargin(I)V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 164
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->getItemTouchHelper()Landroidx/recyclerview/widget/ItemTouchHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 165
    new-instance v1, Lcom/android/systemui/qs/customize/QSCustomizerController$5;

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/TileAdapter;->getNumColumns()I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/qs/customize/QSCustomizerController$5;-><init>(Lcom/android/systemui/qs/customize/QSCustomizerController;Landroid/content/Context;I)V

    .line 173
    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/TileAdapter;->getSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 174
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 175
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->getItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 176
    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->getMarginItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mToolbar:Landroid/widget/Toolbar;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mToolbar:Landroid/widget/Toolbar;

    new-instance v1, Lcom/android/systemui/qs/customize/QSCustomizerController-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/customize/QSCustomizerController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/customize/QSCustomizerController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/TileQueryHelper;->setListener(Lcom/android/systemui/qs/customize/TileQueryHelper$TileStateListener;)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mToolbar:Landroid/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "qs_customizing"

    .line 222
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/customize/QSCustomizer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/customize/QSCustomizer;

    new-instance v0, Lcom/android/systemui/qs/customize/QSCustomizerController$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/customize/QSCustomizerController$6;-><init>(Lcom/android/systemui/qs/customize/QSCustomizerController;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 242
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result p0

    const-string v0, "qs_customizing"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setContainer(Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;)V

    return-void
.end method

.method public setEditLocation(II)V
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/customize/QSCustomizer;->setEditLocation(II)V

    return-void
.end method

.method public setQs(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setQs(Lcom/android/systemui/plugins/qs/QS;)V

    return-void
.end method

.method public show(IIZ)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/android/systemui/qs/customize/QSCustomizerController;->setTileSpecs()V

    if-eqz p3, :cond_0

    .line 204
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->showImmediately()V

    goto :goto_0

    .line 206
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-virtual {p3, p1, p2, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->show(IILcom/android/systemui/qs/customize/TileAdapter;)V

    .line 207
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p2, Lcom/android/systemui/qs/QSEditEvent;->QS_EDIT_OPEN:Lcom/android/systemui/qs/QSEditEvent;

    invoke-interface {p1, p2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 209
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mTileQueryHelper:Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mQsTileHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/customize/TileQueryHelper;->queryTiles(Lcom/android/systemui/qs/QSTileHost;)V

    .line 210
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mKeyguardCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 211
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizerController;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateNavColors(Lcom/android/systemui/statusbar/phone/LightBarController;)V

    :cond_1
    return-void
.end method
