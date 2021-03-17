.class public Lcom/android/systemui/qs/QSFooterViewController;
.super Lcom/android/systemui/util/ViewController;
.source "QSFooterViewController.java"

# interfaces
.implements Lcom/android/systemui/qs/QSFooter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/qs/QSFooterView;",
        ">;",
        "Lcom/android/systemui/qs/QSFooter;"
    }
.end annotation


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mBuildText:Landroid/widget/TextView;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private final mEdit:Landroid/view/View;

.field private mExpanded:Z

.field private mListening:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private final mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

.field private final mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field private final mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

.field private final mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

.field private final mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

.field private final mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

.field private final mSettingsOnClickListener:Landroid/view/View$OnClickListener;

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field private final mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static synthetic $r8$lambda$9A4T_43SBWj_Liw2YVUUP-Jl3ds(Lcom/android/systemui/qs/QSFooterViewController;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSFooterViewController;->lambda$onViewAttached$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$NASq1B-6K5EFvckIHNgjIM4jWOM(Lcom/android/systemui/qs/QSFooterViewController;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/QSFooterViewController;->lambda$onViewAttached$0(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic $r8$lambda$WTPr0DEA84vT7wWIdmTFKQRtb34(Lcom/android/systemui/qs/QSFooterViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSFooterViewController;->lambda$onViewAttached$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gmQThCeZ9m0rTjJbW2_7W0E4uOk(Lcom/android/systemui/qs/QSFooterViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSFooterViewController;->lambda$onViewAttached$2(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/QSFooterView;Landroid/os/UserManager;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/QSDetailDisplayer;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/tuner/TunerService;Lcom/android/internal/logging/MetricsLogger;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 67
    new-instance p1, Lcom/android/systemui/qs/QSFooterViewController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSFooterViewController$1;-><init>(Lcom/android/systemui/qs/QSFooterViewController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    .line 76
    new-instance p1, Lcom/android/systemui/qs/QSFooterViewController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSFooterViewController$2;-><init>(Lcom/android/systemui/qs/QSFooterViewController;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mSettingsOnClickListener:Landroid/view/View$OnClickListener;

    .line 129
    iput-object p2, p0, Lcom/android/systemui/qs/QSFooterViewController;->mUserManager:Landroid/os/UserManager;

    .line 130
    iput-object p3, p0, Lcom/android/systemui/qs/QSFooterViewController;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 131
    iput-object p4, p0, Lcom/android/systemui/qs/QSFooterViewController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 132
    iput-object p5, p0, Lcom/android/systemui/qs/QSFooterViewController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 133
    iput-object p6, p0, Lcom/android/systemui/qs/QSFooterViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 134
    iput-object p7, p0, Lcom/android/systemui/qs/QSFooterViewController;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    .line 135
    iput-object p8, p0, Lcom/android/systemui/qs/QSFooterViewController;->mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    .line 136
    iput-object p9, p0, Lcom/android/systemui/qs/QSFooterViewController;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    .line 137
    iput-object p10, p0, Lcom/android/systemui/qs/QSFooterViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 138
    iput-object p11, p0, Lcom/android/systemui/qs/QSFooterViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 140
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QSFooterView;

    sget p2, Lcom/android/systemui/R$id;->settings_button:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/SettingsButton;

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    .line 141
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QSFooterView;

    sget p2, Lcom/android/systemui/R$id;->build:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mBuildText:Landroid/widget/TextView;

    .line 142
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QSFooterView;

    const p2, 0x1020003

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mEdit:Landroid/view/View;

    .line 143
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QSFooterView;

    sget p2, Lcom/android/systemui/R$id;->multi_user_switch:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    .line 144
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QSFooterView;

    sget p2, Lcom/android/systemui/R$id;->footer_page_indicator:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/PageIndicator;

    iput-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSFooterViewController;)Landroid/os/UserManager;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QSFooterViewController;)Landroid/view/View;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/systemui/tuner/TunerService;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/QSFooterViewController;)Landroid/content/Context;
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSFooterViewController;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mExpanded:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/systemui/statusbar/phone/SettingsButton;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/internal/logging/MetricsLogger;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSFooterViewController;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterViewController;->startSettingsActivity()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSFooterViewController;)Z
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterViewController;->isTunerEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSFooterViewController;)Lcom/android/systemui/settings/UserTracker;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    return-object p0
.end method

.method private isTunerEnabled()Z
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {p0}, Lcom/android/systemui/settings/UserTracker;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->isTunerEnabled(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onViewAttached$0(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 151
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QSFooterView;

    sub-int/2addr p4, p2

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mQuickQSPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/qs/QuickQSPanelController;->getNumQuickTiles()I

    move-result p0

    .line 151
    invoke-virtual {p1, p4, p0}, Lcom/android/systemui/qs/QSFooterView;->updateAnimator(II)V

    return-void
.end method

.method private synthetic lambda$onViewAttached$1(Landroid/view/View;)Z
    .locals 4

    .line 155
    iget-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mBuildText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 158
    invoke-interface {v0}, Lcom/android/systemui/settings/UserContextProvider;->getUserContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/content/ClipboardManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->build_number_clip_data_label:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-static {v2, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$string;->build_number_copy_toast:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 162
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private synthetic lambda$onViewAttached$2(Landroid/view/View;)V
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanelController;->showEdit(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onViewAttached$3(Landroid/view/View;)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/QSFooterViewController-$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/QSFooterViewController-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/qs/QSFooterViewController;Landroid/view/View;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startSettingsActivity()V
    .locals 2

    .line 236
    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method


# virtual methods
.method public disable(IIZ)V
    .locals 0

    .line 231
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/qs/QSFooterView;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterViewController;->isTunerEnabled()Z

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/qs/QSFooterView;->disable(IZ)V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSFooterView;

    new-instance v1, Lcom/android/systemui/qs/QSFooterViewController-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFooterViewController-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QSFooterViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mSettingsOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mBuildText:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/qs/QSFooterViewController-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFooterViewController-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/QSFooterViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mEdit:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/qs/QSFooterViewController-$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSFooterViewController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QSFooterViewController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mQsDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQSDetailDisplayer(Lcom/android/systemui/qs/QSDetailDisplayer;)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mQsPanelController:Lcom/android/systemui/qs/QSPanelController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mPageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanelController;->setFooterPageIndicator(Lcom/android/systemui/qs/PageIndicator;)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSFooterView;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterViewController;->isTunerEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSFooterView;->updateEverything(Z)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 1

    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSFooterViewController;->setListening(Z)V

    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 226
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSFooterView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSFooterView;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 189
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mExpanded:Z

    .line 190
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QSFooterView;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooterViewController;->isTunerEnabled()Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/qs/QSFooterView;->setExpanded(ZZ)V

    return-void
.end method

.method public setExpansion(F)V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSFooterView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSFooterView;->setExpansion(F)V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSFooterView;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFooterView;->setKeyguardShowing()V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 210
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mListening:Z

    if-eqz p1, :cond_1

    .line 212
    iget-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/QSFooterViewController;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFooterViewController;->mOnUserInfoChangedListener:Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QSFooterView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
