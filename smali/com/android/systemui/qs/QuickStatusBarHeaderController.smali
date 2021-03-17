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

.field private mAllIndicatorsEnabled:Z

.field private final mClockView:Lcom/android/systemui/statusbar/policy/Clock;

.field private mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

.field private final mDemoModeReceiver:Lcom/android/systemui/demomode/DemoMode;

.field private final mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

.field private final mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

.field private final mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

.field private final mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field private final mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private mListening:Z

.field private mLocationIndicatorsEnabled:Z

.field private mMicCameraIndicatorsEnabled:Z

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private final mNextAlarmChangeCallback:Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

.field private final mNextAlarmContainer:Landroid/view/View;

.field private final mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnColorsChangedListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

.field private mPICCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

.field private final mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

.field private mPrivacyChipLogged:Z

.field private final mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

.field private final mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

.field private final mPrivacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

.field private final mQSCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

.field private final mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mRingerContainer:Landroid/view/View;

.field private mRingerMode:I

.field private final mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

.field private final mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field private final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private final mZenModeControllerCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# direct methods
.method public static synthetic $r8$lambda$ZSVFU8-CQlHLozQlXSXUPXhiNdg(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->lambda$onViewAttached$1(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cFqUFu8nFqfUEvSWLdscueAdKd4(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->lambda$new$0(Lcom/android/internal/colorextraction/ColorExtractor;I)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeader;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/util/RingerModeTracker;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/QuickQSPanelController;Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;Lcom/android/systemui/privacy/logging/PrivacyLogger;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/privacy/PrivacyDialogController;)V
    .locals 6

    move-object v0, p0

    move-object/from16 v1, p10

    move-object/from16 v2, p16

    .line 222
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 v3, 0x2

    .line 107
    iput v3, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mRingerMode:I

    .line 109
    new-instance v3, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$1;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V

    iput-object v3, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mZenModeControllerCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .line 129
    new-instance v3, Lcom/android/systemui/qs/QuickStatusBarHeaderController$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$2;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V

    iput-object v3, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mNextAlarmChangeCallback:Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    .line 138
    new-instance v3, Lcom/android/systemui/qs/QuickStatusBarHeaderController$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$3;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V

    iput-object v3, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 146
    new-instance v4, Lcom/android/systemui/qs/QuickStatusBarHeaderController$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$4;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V

    iput-object v4, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPICCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    .line 184
    new-instance v4, Lcom/android/systemui/qs/QuickStatusBarHeaderController$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$5;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V

    iput-object v4, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mOnClickListener:Landroid/view/View$OnClickListener;

    move-object v4, p2

    .line 223
    iput-object v4, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object v4, p3

    .line 224
    iput-object v4, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    move-object v4, p4

    .line 225
    iput-object v4, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    move-object v4, p5

    .line 226
    iput-object v4, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

    move-object v4, p6

    .line 227
    iput-object v4, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object v4, p7

    .line 228
    iput-object v4, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object v4, p8

    .line 229
    iput-object v4, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mQSTileHost:Lcom/android/systemui/qs/QSTileHost;

    move-object v4, p9

    .line 230
    iput-object v4, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 231
    iput-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v4, p11

    .line 232
    iput-object v4, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    move-object/from16 v4, p12

    .line 233
    iput-object v4, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 234
    new-instance v4, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v4, v3}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v4, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    move-object/from16 v3, p13

    .line 235
    iput-object v3, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    move-object/from16 v3, p15

    .line 236
    iput-object v3, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    move-object/from16 v3, p17

    .line 237
    iput-object v3, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 239
    iget-object v3, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/qs/QuickStatusBarHeader;

    sget v4, Lcom/android/systemui/R$id;->carrier_group:I

    .line 240
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/carrier/QSCarrierGroup;

    move-object/from16 v4, p14

    invoke-virtual {v4, v3}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->setQSCarrierGroup(Lcom/android/systemui/qs/carrier/QSCarrierGroup;)Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;

    move-result-object v3

    .line 241
    invoke-virtual {v3}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController$Builder;->build()Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mQSCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    .line 244
    iget-object v3, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/qs/QuickStatusBarHeader;

    sget v4, Lcom/android/systemui/R$id;->privacy_chip:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/privacy/OngoingPrivacyChip;

    iput-object v3, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    .line 245
    iget-object v3, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/qs/QuickStatusBarHeader;

    sget v4, Lcom/android/systemui/R$id;->alarm_container:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mNextAlarmContainer:Landroid/view/View;

    .line 246
    iget-object v3, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/systemui/qs/QuickStatusBarHeader;

    sget v4, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/Clock;

    iput-object v3, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    .line 247
    iget-object v4, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/qs/QuickStatusBarHeader;

    sget v5, Lcom/android/systemui/R$id;->ringer_container:I

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mRingerContainer:Landroid/view/View;

    .line 248
    iget-object v4, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/systemui/qs/QuickStatusBarHeader;

    sget v5, Lcom/android/systemui/R$id;->statusIcons:I

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iput-object v4, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    .line 250
    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-direct {v5, v4, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;-><init>(Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/CommandQueue;)V

    iput-object v5, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    .line 251
    new-instance v1, Lcom/android/systemui/qs/QuickStatusBarHeaderController$ClockDemoModeReceiver;

    invoke-direct {v1, v3}, Lcom/android/systemui/qs/QuickStatusBarHeaderController$ClockDemoModeReceiver;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mDemoModeReceiver:Lcom/android/systemui/demomode/DemoMode;

    .line 252
    iput-object v2, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 253
    new-instance v1, Lcom/android/systemui/qs/QuickStatusBarHeaderController-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V

    iput-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mOnColorsChangedListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    .line 257
    invoke-virtual {v2, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mRingerMode:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mAllIndicatorsEnabled:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mAllIndicatorsEnabled:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Landroid/app/AlarmManager$AlarmClockInfo;)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Z)Z
    .locals 0

    .line 71
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/view/View;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Ljava/util/List;
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->getIgnoredIconSlots()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/statusbar/policy/Clock;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/plugins/ActivityStarter;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/view/View;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mNextAlarmContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/content/Context;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Z
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->isZenOverridingRinger()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/privacy/PrivacyDialogController;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/view/View;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mRingerContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Z
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->use24HourFormat()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/view/View;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/view/View;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroid/view/View;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Landroidx/lifecycle/LifecycleRegistry;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)Lcom/android/systemui/privacy/OngoingPrivacyChip;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QuickStatusBarHeaderController;Z)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->setChipVisibility(Z)V

    return-void
.end method

.method private getChipEnabled()Z
    .locals 1

    .line 371
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mAllIndicatorsEnabled:Z

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

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 355
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->getChipEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 356
    iget-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mAllIndicatorsEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    if-eqz v1, :cond_1

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10407c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10407cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mAllIndicatorsEnabled:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    if-eqz v1, :cond_3

    .line 363
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x10407ca

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method private isZenOverridingRinger()Z
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getZen()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 376
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->getConsolidatedPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0

    .line 375
    invoke-static {v0, p0}, Landroid/service/notification/ZenModeConfig;->isZenOverridingRinger(ILandroid/app/NotificationManager$Policy;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$new$0(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 0

    .line 254
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {p1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result p1

    .line 255
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/Clock;->onColorsChanged(Z)V

    return-void
.end method

.method private synthetic lambda$onViewAttached$1(Ljava/lang/Integer;)V
    .locals 3

    .line 263
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mRingerMode:I

    .line 264
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->isZenOverridingRinger()Z

    move-result v2

    .line 265
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->use24HourFormat()Z

    move-result p0

    .line 264
    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateStatusText(ILandroid/app/AlarmManager$AlarmClockInfo;ZZ)V

    return-void
.end method

.method private setChipVisibility(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->getChipEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 339
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 340
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logChipVisible(Z)V

    .line 343
    iget-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChipLogged:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mListening:Z

    if-eqz p1, :cond_1

    .line 344
    iput-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChipLogged:Z

    .line 345
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p1, Lcom/android/systemui/privacy/PrivacyChipEvent;->ONGOING_INDICATORS_CHIP_VIEW:Lcom/android/systemui/privacy/PrivacyChipEvent;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_0

    .line 348
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyLogger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    invoke-virtual {p1, v0}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logChipVisible(Z)V

    .line 349
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private use24HourFormat()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    .line 125
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-interface {p0}, Lcom/android/systemui/settings/UserTracker;->getUserId()I

    move-result p0

    .line 124
    invoke-static {v0, p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected onViewAttached()V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

    invoke-interface {v0}, Lcom/android/systemui/util/RingerModeTracker;->getRingerModeInternal()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    new-instance v2, Lcom/android/systemui/qs/QuickStatusBarHeaderController-$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/QuickStatusBarHeaderController;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mNextAlarmContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mRingerContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyItemController;->getAllIndicatorsAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mAllIndicatorsEnabled:Z

    .line 274
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyItemController;->getMicCameraAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    .line 275
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {v0}, Lcom/android/systemui/privacy/PrivacyItemController;->getLocationAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    .line 278
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    invoke-direct {p0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->getIgnoredIconSlots()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setIgnoredSlots(Ljava/util/List;)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->setShouldRestrictIcons(Z)V

    .line 280
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->addIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->setChipVisibility(Z)V

    .line 284
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->onAttach(Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;)V

    .line 286
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mDemoModeReceiver:Lcom/android/systemui/demomode/DemoMode;

    invoke-virtual {v0, p0}, Lcom/android/systemui/demomode/DemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

    invoke-interface {v0}, Lcom/android/systemui/util/RingerModeTracker;->getRingerModeInternal()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mClockView:Lcom/android/systemui/statusbar/policy/Clock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object v2, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mOnColorsChangedListener:Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;

    invoke-virtual {v0, v2}, Lcom/android/internal/colorextraction/ColorExtractor;->removeOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 294
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mNextAlarmContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mRingerContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mIconManager:Lcom/android/systemui/statusbar/phone/StatusBarIconController$TintedIconManager;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeIconGroup(Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    iget-object v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mDemoModeReceiver:Lcom/android/systemui/demomode/DemoMode;

    invoke-virtual {v0, v1}, Lcom/android/systemui/demomode/DemoModeController;->removeCallback(Lcom/android/systemui/demomode/DemoMode;)V

    const/4 v0, 0x0

    .line 299
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->setListening(Z)V

    return-void
.end method

.method public setContentMargins(II)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setContentMargins(IILcom/android/systemui/qs/QuickQSPanelController;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mQSCarrierGroupController:Lcom/android/systemui/qs/carrier/QSCarrierGroupController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/carrier/QSCarrierGroupController;->setListening(Z)V

    .line 305
    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 308
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mListening:Z

    .line 310
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->setListening(Z)V

    .line 311
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickQSPanelController;->isListening()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->refreshAllTiles()V

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mHeaderQsPanelController:Lcom/android/systemui/qs/QuickQSPanelController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanelControllerBase;->switchTileLayout(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickStatusBarHeader;->updateResources()V

    :cond_2
    if-eqz p1, :cond_3

    .line 320
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mZenModeControllerCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 321
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mNextAlarmChangeCallback:Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 322
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 324
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyItemController;->getAllIndicatorsAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mAllIndicatorsEnabled:Z

    .line 325
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyItemController;->getMicCameraAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mMicCameraIndicatorsEnabled:Z

    .line 326
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    invoke-virtual {p1}, Lcom/android/systemui/privacy/PrivacyItemController;->getLocationAvailable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLocationIndicatorsEnabled:Z

    .line 327
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPICCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    invoke-virtual {p1, p0}, Lcom/android/systemui/privacy/PrivacyItemController;->addCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    goto :goto_0

    .line 329
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mZenModeControllerCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 330
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mNextAlarmChangeCallback:Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 331
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 332
    iget-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyItemController:Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPICCallback:Lcom/android/systemui/privacy/PrivacyItemController$Callback;

    invoke-virtual {p1, v0}, Lcom/android/systemui/privacy/PrivacyItemController;->removeCallback(Lcom/android/systemui/privacy/PrivacyItemController$Callback;)V

    .line 333
    iput-boolean v1, p0, Lcom/android/systemui/qs/QuickStatusBarHeaderController;->mPrivacyChipLogged:Z

    :goto_0
    return-void
.end method
