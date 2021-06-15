.class Lcom/android/systemui/qs/QuickStatusBarHeaderController;
.super Lcom/android/systemui/util/ViewController;
.source "QuickStatusBarHeaderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QuickStatusBarHeaderController$ClockDemoModeReceiver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/qs/QuickStatusBarHeader;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mClockView:Lcom/android/systemui/statusbar/policy/Clock;

.field private mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field private final mDemoModeReceiver:Lcom/android/systemui/demomode/DemoMode;

.field private final mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

.field private final mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

.field private final mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

.field private mListening:Z

.field private mLocationIndicatorsEnabled:Z

.field private mMicCameraIndicatorsEnabled:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnColorsChangedListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

.field private mPICCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

.field private final mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

.field private mPrivacyChipLogged:Z

.field private final mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

.field private final mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

.field private final mPrivacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

.field private final mQSCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

.field private final mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

.field private final mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static synthetic $r8$lambda$cFqUFu8nFqfUEvSWLdscueAdKd4(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->lambda$new$0(Lcom/android/internal/colorextraction/ColorExtractor;I)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeader;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/privacy/PrivacyDialogController;Lcom/android/systemui/qs/QSExpansionPathInterpolator;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 83
    new-instance p1, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPICCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    .line 113
    new-instance p1, Lcom/android/systemui/qs/QuickStatusBarHeaderController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$2;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 140
    iput-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 141
    iput-object p3, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 142
    iput-object p4, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 143
    iput-object p5, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 144
    iput-object p6, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    .line 145
    iput-object p7, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    .line 146
    iput-object p9, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 147
    iput-object p11, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 148
    iput-object p12, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    .line 150
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QuickStatusBarHeader;

    sget p2, Lcom/android/systemui/R$id;->carrier_group:I

    .line 151
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/carrier/QSCarrierGroup;

    invoke-virtual {p8, p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->setQSCarrierGroup(Lcom/android/systemui/qs/carrier/QSCarrierGroup;)Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->build()Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mQSCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    .line 154
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QuickStatusBarHeader;

    sget p2, Lcom/android/systemui/R$id;->privacy_chip:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/privacy/OngoingPrivacyChip;

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    .line 155
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QuickStatusBarHeader;

    sget p2, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    .line 156
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/systemui/qs/QuickStatusBarHeader;

    sget p3, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iput-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 158
    new-instance p3, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-direct {p3, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;-><init>(Landroid/view/ViewGroup;)V

    iput-object p3, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    .line 159
    new-instance p2, Lcom/android/systemui/qs/QuickStatusBarHeaderController$ClockDemoModeReceiver;

    invoke-direct {p2, p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$ClockDemoModeReceiver;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object p2, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mDemoModeReceiver:Lcom/android/systemui/demomode/DemoMode;

    .line 160
    iput-object p10, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 161
    new-instance p1, Lcom/android/systemui/qs/QuickStatusBarHeaderController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mOnColorsChangedListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    .line 165
    invoke-virtual {p10, p1}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/privacy/OngoingPrivacyChip;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->setChipVisibility(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/privacy/PrivacyDialogController;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/view/View;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Ljava/util/List;
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->getIgnoredIconSlots()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/statusbar/policy/Clock;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/content/Context;
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private getChipEnabled()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

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

.method private getIgnoredIconSlots()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->getChipEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    iget-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104080f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104081b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    if-eqz v1, :cond_1

    .line 252
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1040819

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private synthetic lambda$new$0(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 0

    .line 162
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {p1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result p1

    .line 163
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/Clock;->onColorsChanged(Z)V

    return-void
.end method

.method private setChipVisibility(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->getChipEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logChipVisible(Z)V

    .line 232
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChipLogged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mListening:Z

    if-eqz v0, :cond_1

    .line 233
    iput-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChipLogged:Z

    .line 234
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/privacy/PrivacyChipEvent;->ONGOING_INDICATORS_CHIP_VIEW:Lcom/android/systemui/privacy/PrivacyChipEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logChipVisible(Z)V

    .line 239
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setChipVisibility(Z)V

    return-void
.end method


# virtual methods
.method protected onViewAttached()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyItemController;->getMicCameraAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    .line 174
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyItemController;->getLocationAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->getIgnoredIconSlots()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setIgnoredSlots(Ljava/util/List;)V

    .line 178
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setShouldRestrictIcons(Z)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->setChipVisibility(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    iget-object v3, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mQSExpansionPathInterpolator:Lcom/android/systemui/qs/QSExpansionPathInterpolator;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/qs/QuickStatusBarHeader;->onAttach(Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;Lcom/android/systemui/qs/QSExpansionPathInterpolator;)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mDemoModeReceiver:Lcom/android/systemui/demomode/DemoMode;

    invoke-virtual {v0, v2}, Lcom/android/systemui/demomode/DemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    .line 186
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/qs/QuickQSPanelController;->setContentMargins(II)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mOnColorsChangedListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    invoke-virtual {v0, v2}, Lcom/android/internal/colorextraction/ColorExtractor;->removeOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mDemoModeReceiver:Lcom/android/systemui/demomode/DemoMode;

    invoke-virtual {v0, v1}, Lcom/android/systemui/demomode/DemoModeController;->removeCallback(Lcom/android/systemui/demomode/DemoMode;)V

    const/4 v0, 0x0

    .line 196
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->setListening(Z)V

    return-void
.end method

.method public setListening(Z)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mQSCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->setListening(Z)V

    .line 202
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 205
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mListening:Z

    .line 207
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->setListening(Z)V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickQSPanelController;->isListening()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->refreshAllTiles()V

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->switchTileLayout(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    :cond_2
    if-eqz p1, :cond_3

    .line 218
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyItemController;->getMicCameraAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    .line 219
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyItemController;->getLocationAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    .line 220
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPICCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    invoke-virtual {p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    goto :goto_0

    .line 222
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPICCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    invoke-virtual {p1, v0}, Lcom/android/systemui/privacy/PrivacyItemController;->removeCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    .line 223
    iput-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChipLogged:Z

    :goto_0
    return-void
.end method
