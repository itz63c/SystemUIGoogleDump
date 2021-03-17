.class public Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;
.super Ljava/lang/Object;
.source "NotificationStackScrollLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;,
        Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;,
        Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationPanelEvent;
    }
.end annotation


# instance fields
.field private final mAllowLongPress:Z

.field private mBarState:I

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

.field private final mDynamicPrivacyControllerListener:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;

.field private mFadeNotificationsOnDismiss:Z

.field private final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field private final mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

.field private final mFgFeatureController:Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;

.field private final mFgServicesSectionController:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

.field private mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

.field private final mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mLockscreenUserChangeListener:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mMenuEventListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

.field private final mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

.field private final mNotificationCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

.field private final mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field private final mNotificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

.field private final mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

.field private final mNotificationSwipeHelperBuilder:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;

.field final mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mResources:Landroid/content/res/Resources;

.field private final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mShowEmptyShadeView:Z

.field private final mSilentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

.field private final mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

.field private final mZenModeControllerCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;


# direct methods
.method public static synthetic $r8$lambda$6KoTSohz8Ntfb2W2GptojCP0UK8(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->lambda$attach$5(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C7P-sUNF88oFzMvF9x-m81nMivc(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->lambda$attach$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$FNx_J_jlHUB9a9bhutoN3QNJ6wo(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Ljava/util/List;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->onAnimationEnd(Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$GvH0X-LAqoIKQNCx5KytCw9DMGA(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$MY0XtHtq3BWATb1uiFhJ1LzVSCw(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->lambda$attach$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ru6DHxlqBNEqb13xFPYfkqsAh9o(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isInVisibleLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$U30yK22X8wQCMNDP7JKbnJNAjio(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$XFVQp1YUY8RBaX4Vnrg4XNkUY-A(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->lambda$attach$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$juQmZC5IqmSPNdW74GmUfFmSPdE(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->lambda$attach$6(Ljava/lang/Boolean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$trXBXk8MM_rpKwXsi3ZK7s2Vb1c(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->lambda$new$2(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    return-void
.end method

.method public constructor <init>(ZLcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/media/KeyguardMediaController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/classifier/FalsingCollector;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;Lcom/android/systemui/statusbar/phone/ShadeController;)V
    .locals 3

    move-object v0, p0

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$1;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    .line 181
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 201
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDynamicPrivacyControllerListener:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;

    .line 213
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$2;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 241
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$3;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 266
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$4;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLockscreenUserChangeListener:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;

    .line 273
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$5;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMenuEventListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    .line 336
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$6;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 502
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$7;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .line 529
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$8;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mZenModeControllerCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    move v1, p1

    .line 573
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mAllowLongPress:Z

    move-object v1, p2

    .line 574
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    move-object v1, p3

    .line 575
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    move-object v1, p4

    .line 576
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    move-object v1, p5

    .line 577
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    move-object v1, p6

    .line 578
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    move-object v1, p7

    .line 579
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v1, p8

    .line 580
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object v1, p9

    .line 581
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mKeyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

    move-object v1, p10

    .line 582
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object v1, p11

    .line 583
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-object/from16 v1, p13

    .line 584
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v1, p14

    .line 585
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v1, p15

    .line 586
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v1, p16

    .line 587
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mResources:Landroid/content/res/Resources;

    move-object/from16 v1, p17

    .line 588
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationSwipeHelperBuilder:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;

    move-object/from16 v1, p18

    .line 589
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object/from16 v1, p19

    .line 590
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 591
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    move-object/from16 v2, p21

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;->registerGroupExpansionChangeListener(Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager$OnGroupExpansionChangeListener;)V

    .line 593
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$9;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    move-object/from16 v2, p20

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->registerGroupChangeListener(Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy$OnGroupChangeListener;)V

    move-object/from16 v1, p22

    .line 604
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSilentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    move-object/from16 v1, p23

    .line 605
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    move-object/from16 v1, p24

    .line 606
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    move-object/from16 v1, p25

    .line 607
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    move-object/from16 v1, p26

    .line 608
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-object/from16 v1, p27

    .line 609
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v1, p28

    .line 610
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v1, p29

    .line 611
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mFgFeatureController:Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;

    move-object/from16 v1, p30

    .line 612
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mFgServicesSectionController:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    move-object/from16 v1, p31

    .line 613
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v1, p32

    .line 614
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object/from16 v1, p33

    .line 615
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    move-object/from16 v1, p34

    .line 616
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mAllowLongPress:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Lcom/android/internal/logging/MetricsLogger;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Lcom/android/systemui/classifier/FalsingCollector;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mFadeNotificationsOnDismiss:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isInVisibleLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mZenModeControllerCallback:Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Lcom/android/systemui/statusbar/policy/ZenModeController;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)I
    .locals 0

    .line 132
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mBarState:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;I)I
    .locals 0

    .line 132
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mBarState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method private getDismissedByUserStats(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;
    .locals 3

    .line 1248
    new-instance p0, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    .line 1252
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 1253
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v1

    .line 1256
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object p1

    const/4 v2, 0x1

    .line 1251
    invoke-static {v0, v1, p2, v2, p1}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p1

    const/4 p2, 0x3

    invoke-direct {p0, p2, v2, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(IILcom/android/internal/statusbar/NotificationVisibility;)V

    return-object p0
.end method

.method private isInVisibleLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 717
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    .line 718
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 723
    :cond_0
    iget p1, p1, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    and-int/lit8 p1, p1, 0x5

    if-nez p1, :cond_1

    return v0

    .line 726
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$attach$3(I)V
    .locals 0

    .line 625
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 626
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationPanelEvent;->fromSelection(I)Lcom/android/internal/logging/UiEventLogger$UiEventEnum;

    move-result-object p1

    .line 625
    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method private synthetic lambda$attach$4()V
    .locals 1

    .line 628
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x94

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    return-void
.end method

.method private synthetic lambda$attach$5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 681
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "notification_history_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v0, "high_priority"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v0, "notification_dismiss_rtl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const-string p1, "1"

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 686
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateFooter()V

    goto :goto_1

    .line 689
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHighPriorityBeforeSpeedBump(Z)V

    goto :goto_1

    .line 683
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateDismissRtlSetting(Z)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2c9dda1f -> :sswitch_2
        -0xd20fc5f -> :sswitch_1
        0x4dc5eb42 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$attach$6(Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 2

    .line 698
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setKeyguardMediaControllorVisible(Z)V

    .line 699
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 700
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mKeyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

    .line 701
    invoke-virtual {v0}, Lcom/android/systemui/media/KeyguardMediaController;->getView()Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    move-result-object v0

    const/4 v1, 0x0

    .line 700
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateAddAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V

    goto :goto_0

    .line 703
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mKeyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

    invoke-virtual {v0}, Lcom/android/systemui/media/KeyguardMediaController;->getView()Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateRemoveAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    .line 705
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->requestChildrenUpdate()V

    .line 706
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private synthetic lambda$attach$7(Landroid/view/View;)V
    .locals 0

    .line 713
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->clearSilentNotifications()V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateFooter()V

    const-string v0, "dynamic privacy changed"

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateSectionBoundaries(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setAnimateBottomOnLayout(Z)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$2(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V
    .locals 0

    .line 592
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onGroupExpandChanged(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    return-void
.end method

.method private onAnimationEnd(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;I)V"
        }
    .end annotation

    .line 1297
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewNotifPipelineRenderingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    .line 1299
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 1300
    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result p0

    .line 1299
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissAllNotifications(I)V

    goto/16 :goto_2

    .line 1303
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1304
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getShadeListCount()I

    move-result v0

    .line 1305
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1306
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v1

    .line 1307
    new-instance v2, Landroid/util/Pair;

    .line 1310
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getDismissedByUserStats(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1307
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1312
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotifCollection:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dismissNotifications(Ljava/util/List;)V

    goto :goto_2

    .line 1315
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1316
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1317
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 1318
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 1320
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 1321
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsCount()I

    move-result v3

    .line 1319
    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getDismissedByUserStats(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    move-result-object v0

    const/4 v3, 0x3

    .line 1317
    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;I)V

    goto :goto_1

    .line 1324
    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->resetTranslation()V

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    .line 1330
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mIStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 1331
    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result p0

    .line 1330
    invoke-interface {p1, p0}, Lcom/android/internal/statusbar/IStatusBarService;->onClearAllNotifications(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public addOnExpandedHeightChangedListener(Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 733
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->addOnExpandedHeightChangedListener(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    .line 741
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public attach(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 4

    .line 620
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 621
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setController(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    .line 622
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setTouchHandler(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$TouchHandler;)V

    .line 623
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 624
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDismissAllAnimationListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$DismissAllAnimationListener;)V

    .line 625
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDismissListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$DismissListener;)V

    .line 627
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setFooterDismissListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$FooterDismissListener;)V

    .line 629
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setRemoteInputManager(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V

    .line 630
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShadeController(Lcom/android/systemui/statusbar/phone/ShadeController;)V

    .line 632
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mFgFeatureController:Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;->isForegroundServiceDismissalEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 633
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mFgServicesSectionController:Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 634
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;->createView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ForegroundServiceDungeonView;

    .line 633
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->initializeForegroundServiceSection(Lcom/android/systemui/statusbar/notification/row/ForegroundServiceDungeonView;)V

    .line 638
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationSwipeHelperBuilder:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;

    const/4 v0, 0x0

    .line 639
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;->setSwipeDirection(I)Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationCallback:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;

    .line 640
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;->setNotificationCallback(Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$NotificationCallback;)Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMenuEventListener:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;

    .line 641
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;->setOnMenuEventListener(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$OnMenuEventListener;)Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;

    move-result-object p1

    .line 642
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper$Builder;->build()Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    .line 644
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewNotifPipelineRenderingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 645
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$10;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    goto :goto_0

    .line 652
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$11;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    .line 660
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->initView(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$KeyguardBypassEnabledProvider;Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;)V

    .line 663
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 664
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setAnimationStateHandler(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone$AnimationStateHandler;)V

    .line 665
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDynamicPrivacyControllerListener:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->addListener(Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;)V

    .line 667
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda11;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindChangeRunnable(Ljava/lang/Runnable;)V

    .line 669
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mLockscreenUserChangeListener:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->addUserChangedListener(Lcom/android/systemui/statusbar/NotificationLockscreenUserManager$UserChangedListener;)V

    .line 671
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$bool;->config_fadeNotificationsOnDismiss:I

    .line 672
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mFadeNotificationsOnDismiss:Z

    .line 674
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->setOnRoundingChangedCallback(Ljava/lang/Runnable;)V

    .line 675
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->addOnExpandedHeightChangedListener(Ljava/util/function/BiConsumer;)V

    .line 677
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->setVisibilityLocationProvider(Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;)V

    .line 679
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    const-string v1, "high_priority"

    const-string v2, "notification_dismiss_rtl"

    const-string v3, "notification_history_enabled"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 697
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mKeyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/media/KeyguardMediaController;->setVisibilityChangedListener(Lkotlin/jvm/functions/Function1;)V

    .line 709
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 710
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-interface {p1, v0}, Landroid/view/View$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 712
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 713
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSilentHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/render/SectionHeaderController;->setOnClearAllClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public calculateAppearFraction(F)F
    .locals 0

    .line 1012
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateAppearFraction(F)F

    move-result p0

    return p0
.end method

.method public calculateAppearFractionBypass()F
    .locals 0

    .line 960
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateAppearFractionBypass()F

    move-result p0

    return p0
.end method

.method public calculateGapHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)F
    .locals 0

    .line 1229
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->calculateGapHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)F

    move-result p0

    return p0
.end method

.method public cancelLongPress()V
    .locals 0

    .line 914
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelLongPress()V

    return-void
.end method

.method public checkSnoozeLeavebehind()V
    .locals 8

    .line 938
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCheckSnoozeLeaveBehind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 942
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setCheckForLeaveBehind(Z)V

    :cond_0
    return-void
.end method

.method public clearSilentNotifications()V
    .locals 2

    const/4 v0, 0x1

    .line 1291
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->hasActiveClearableNotifications(I)Z

    move-result v1

    xor-int/2addr v0, v1

    .line 1292
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->clearNotifications(IZ)V

    return-void
.end method

.method public closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1268
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->getExposedGuts()Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object v0

    .line 1269
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getCurrentMenuRow()Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;

    move-result-object v1

    .line 1270
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->getTranslatingParentView()Landroid/view/View;

    move-result-object v2

    if-eqz v0, :cond_0

    .line 1272
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->isLeavebehind()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 1275
    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin;->isMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1280
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->isTouchInView(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 1282
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationGutsManager:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 1285
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mSwipeHelper:Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSwipeHelper;->resetExposedMenuView(ZZ)V

    :cond_2
    return-void
.end method

.method public createDelegate()Lcom/android/systemui/statusbar/RemoteInputController$Delegate;
    .locals 1

    .line 1144
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$12;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    return-object v0
.end method

.method public forceNoOverlappingRendering(Z)V
    .locals 0

    .line 1083
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->forceNoOverlappingRendering(Z)V

    return-void
.end method

.method public generateHeadsUpAnimation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    .line 1201
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateHeadsUpAnimation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    return-void
.end method

.method public generateHeadsUpAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V
    .locals 0

    .line 1205
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->generateHeadsUpAnimation(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Z)V

    return-void
.end method

.method public getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .locals 0

    .line 1176
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p0

    return-object p0
.end method

.method public getBottomMostNotificationBottom()F
    .locals 0

    .line 934
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getBottomMostNotificationBottom()F

    move-result p0

    return p0
.end method

.method public getChildAt(I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 0

    .line 885
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    return-object p0
.end method

.method public getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 0

    .line 842
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    return-object p0
.end method

.method public getChildCount()I
    .locals 0

    .line 881
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method public getCurrentOverScrollAmount(Z)F
    .locals 0

    .line 1004
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result p0

    return p0
.end method

.method public getCurrentOverScrolledPixels(Z)F
    .locals 0

    .line 1008
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result p0

    return p0
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 0

    .line 758
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public getEmptyBottomMargin()I
    .locals 0

    .line 984
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result p0

    return p0
.end method

.method public getEmptyShadeViewHeight()F
    .locals 0

    .line 996
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getEmptyShadeViewHeight()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getFirstChildNotGone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 0

    .line 1197
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object p0

    return-object p0
.end method

.method public getFooterViewHeightWithPadding()I
    .locals 0

    .line 1054
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getFooterViewHeightWithPadding()I

    move-result p0

    return p0
.end method

.method public getHeadsUpCallback()Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;
    .locals 0

    .line 1079
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getHeadsUpCallback()Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    move-result-object p0

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    .line 877
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    return p0
.end method

.method public getIntrinsicContentHeight()I
    .locals 0

    .line 869
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getIntrinsicContentHeight()I

    move-result p0

    return p0
.end method

.method public getIntrinsicPadding()F
    .locals 0

    .line 976
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getLayoutMinHeight()F
    .locals 0

    .line 980
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 846
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getLeft()F
    .locals 0

    .line 774
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getLocationOnScreen([I)V
    .locals 0

    .line 838
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    return-void
.end method

.method public getNotGoneChildCount()I
    .locals 0

    .line 972
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result p0

    return p0
.end method

.method getNoticationRoundessManager()Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;
    .locals 0

    .line 1233
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    return-object p0
.end method

.method public getNotificationListContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;
    .locals 0

    .line 1237
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    return-object p0
.end method

.method public getOpeningHeight()F
    .locals 0

    .line 930
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getOpeningHeight()F

    move-result p0

    return p0
.end method

.method public getPeekHeight()F
    .locals 0

    .line 1042
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPeekHeight()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getPositionInLinearLayout(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I
    .locals 0

    .line 1221
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getRight()I
    .locals 0

    .line 766
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    move-result p0

    return p0
.end method

.method public getRootWindowInsets()Landroid/view/WindowInsets;
    .locals 0

    .line 762
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public getSpeedBumpIndex()I
    .locals 0

    .line 822
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getSpeedBumpIndex()I

    move-result p0

    return p0
.end method

.method public getTopPadding()I
    .locals 0

    .line 992
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result p0

    return p0
.end method

.method public getTopPaddingOverflow()F
    .locals 0

    .line 988
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getTopPaddingOverflow()F

    move-result p0

    return p0
.end method

.method public getTransientView(I)Landroid/view/View;
    .locals 0

    .line 1217
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getTransientView(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getTransientViewCount()I
    .locals 0

    .line 1213
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTransientViewCount()I

    move-result p0

    return p0
.end method

.method public getTranslationX()F
    .locals 0

    .line 778
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result p0

    return p0
.end method

.method public getView()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 0

    .line 1225
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-object p0
.end method

.method public getVisibleNotificationCount()I
    .locals 0

    .line 865
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getVisibleNotificationCount()I

    move-result p0

    return p0
.end method

.method public getWakeUpHeight()F
    .locals 0

    .line 818
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getWakeUpHeight()F

    move-result p0

    return p0
.end method

.method public getWidth()F
    .locals 0

    .line 926
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getX()F
    .locals 0

    .line 918
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getX()F

    move-result p0

    return p0
.end method

.method public goToFullShade(J)V
    .locals 0

    .line 889
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->goToFullShade(J)V

    return-void
.end method

.method public hasActiveClearableNotifications(I)Z
    .locals 5

    .line 1118
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1121
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 1123
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildAt(I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v3

    .line 1124
    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v4, :cond_1

    goto :goto_1

    .line 1127
    :cond_1
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1128
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1129
    invoke-static {v3, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->matchesSelection(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method hasActiveNotifications()Z
    .locals 1

    .line 1260
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/FeatureFlags;->isNewNotifPipelineRenderingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1261
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getShadeList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    .line 1263
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->hasActiveNotifications()Z

    move-result p0

    return p0
.end method

.method public isAddOrRemoveAnimationPending()Z
    .locals 0

    .line 861
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isAddOrRemoveAnimationPending()Z

    move-result p0

    return p0
.end method

.method public isBelowLastNotification(FF)Z
    .locals 0

    .line 922
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result p0

    return p0
.end method

.method public isFooterViewContentVisible()Z
    .locals 0

    .line 1050
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isFooterViewContentVisible()Z

    move-result p0

    return p0
.end method

.method public isFooterViewNotGone()Z
    .locals 0

    .line 1046
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isFooterViewNotGone()Z

    move-result p0

    return p0
.end method

.method public isInLockedDownShade()Z
    .locals 0

    .line 1339
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->isInLockedDownShade()Z

    move-result p0

    return p0
.end method

.method public isLayoutRtl()Z
    .locals 0

    .line 770
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isLayoutRtl()Z

    move-result p0

    return p0
.end method

.method public isPulseExpanding()Z
    .locals 0

    .line 806
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isPulseExpanding()Z

    move-result p0

    return p0
.end method

.method public isScrolledToBottom()Z
    .locals 0

    .line 968
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result p0

    return p0
.end method

.method public isShowingEmptyShadeView()Z
    .locals 0

    .line 1071
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mShowEmptyShadeView:Z

    return p0
.end method

.method public notifyHideAnimationStart(Z)V
    .locals 0

    .line 830
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->notifyHideAnimationStart(Z)V

    return-void
.end method

.method public onExpansionStarted()V
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onExpansionStarted()V

    .line 1017
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->checkSnoozeLeavebehind()V

    return-void
.end method

.method public onExpansionStopped()V
    .locals 2

    .line 1021
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setCheckForLeaveBehind(Z)V

    .line 1022
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onExpansionStopped()V

    return-void
.end method

.method public onPanelTrackingStarted()V
    .locals 0

    .line 1026
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onPanelTrackingStarted()V

    return-void
.end method

.method public onPanelTrackingStopped()V
    .locals 0

    .line 1030
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onPanelTrackingStopped()V

    return-void
.end method

.method public onUpdateRowStates()V
    .locals 0

    .line 1172
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->onUpdateRowStates()V

    return-void
.end method

.method public removeOnExpandedHeightChangedListener(Ljava/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 737
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->removeOnExpandedHeightChangedListener(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    .line 745
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 754
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public resetCheckSnoozeLeavebehind()V
    .locals 0

    .line 1241
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetCheckSnoozeLeavebehind()V

    return-void
.end method

.method public resetScrollPosition()V
    .locals 0

    .line 906
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->resetScrollPosition()V

    return-void
.end method

.method public runAfterAnimationFinished(Ljava/lang/Runnable;)V
    .locals 0

    .line 1184
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 0

    .line 1180
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 1000
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 0

    .line 1103
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    return-void
.end method

.method public setDozeAmount(F)V
    .locals 0

    .line 814
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDozeAmount(F)V

    return-void
.end method

.method public setDozing(ZZLandroid/graphics/PointF;)V
    .locals 0

    .line 1107
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setDozing(ZZLandroid/graphics/PointF;)V

    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 0

    .line 1095
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setExpandedHeight(F)V

    return-void
.end method

.method public setExpandingVelocity(F)V
    .locals 0

    .line 1091
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setExpandingVelocity(F)V

    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 0

    .line 1075
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHeadsUpAnimatingAway(Z)V

    return-void
.end method

.method public setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 0

    .line 749
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 750
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    return-void
.end method

.method public setHeadsUpBoundaries(II)V
    .locals 0

    .line 1034
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHeadsUpBoundaries(II)V

    return-void
.end method

.method public setHideAmount(FF)V
    .locals 0

    .line 826
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHideAmount(FF)V

    return-void
.end method

.method public setIntrinsicPadding(I)V
    .locals 0

    .line 873
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIntrinsicPadding(I)V

    return-void
.end method

.method public setIsFullWidth(Z)V
    .locals 0

    .line 857
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setIsFullWidth(Z)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 853
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMaxDisplayedNotifications(I)V
    .locals 0

    .line 1140
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController$NotificationListContainerImpl;->setMaxDisplayedNotifications(I)V

    return-void
.end method

.method public setMaxTopPadding(I)V
    .locals 0

    .line 1209
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setMaxTopPadding(I)V

    return-void
.end method

.method public setNotificationPanelController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 1189
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setNotificationPanelController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-void
.end method

.method public setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V
    .locals 0

    .line 793
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V

    return-void
.end method

.method public setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V
    .locals 0

    .line 783
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    return-void
.end method

.method public setOnPulseHeightChangedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 810
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOnPulseHeightChangedListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOverScrollAmount(FZZ)V
    .locals 0

    .line 898
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    return-void
.end method

.method public setOverScrollAmount(FZZZ)V
    .locals 0

    .line 894
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZZ)V

    return-void
.end method

.method public setOverScrolledPixels(FZZ)V
    .locals 0

    .line 902
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    return-void
.end method

.method public setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V
    .locals 0

    .line 788
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V

    return-void
.end method

.method public setPulseHeight(F)F
    .locals 0

    .line 834
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setPulseHeight(F)F

    move-result p0

    return p0
.end method

.method public setPulsing(ZZ)V
    .locals 0

    .line 1111
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setPulsing(ZZ)V

    return-void
.end method

.method public setQsContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1099
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setQsContainer(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1

    .line 947
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setQsExpanded(Z)V

    .line 948
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateShowEmptyShadeView()V

    return-void
.end method

.method public setQsExpansionFraction(F)V
    .locals 0

    .line 956
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setQsExpansionFraction(F)V

    return-void
.end method

.method public setScrollingEnabled(Z)V
    .locals 0

    .line 952
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    return-void
.end method

.method public setShelfController(Lcom/android/systemui/statusbar/NotificationShelfController;)V
    .locals 0

    .line 1193
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShelfController(Lcom/android/systemui/statusbar/NotificationShelfController;)V

    return-void
.end method

.method public setShouldShowShelfOnly(Z)V
    .locals 0

    .line 910
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setShouldShowShelfOnly(Z)V

    return-void
.end method

.method public setTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 798
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mNotificationRoundnessManager:Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;->setTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    .line 1087
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    return-void
.end method

.method public setUnlockHintRunning(Z)V
    .locals 0

    .line 1038
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setUnlockHintRunning(Z)V

    return-void
.end method

.method public updateFooter()V
    .locals 0

    .line 1168
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateFooter()V

    return-void
.end method

.method public updateSectionBoundaries(Ljava/lang/String;)V
    .locals 0

    .line 1164
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSectionBoundaries(Ljava/lang/String;)V

    return-void
.end method

.method public updateShowEmptyShadeView()V
    .locals 2

    .line 1062
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 1063
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->isQsExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 1064
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getVisibleNotificationCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mShowEmptyShadeView:Z

    .line 1065
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 1067
    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/ZenModeController;->areNotificationsHiddenInShade()Z

    move-result p0

    .line 1065
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateEmptyShadeView(ZZ)V

    return-void
.end method

.method public updateTopPadding(FZ)V
    .locals 0

    .line 964
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateTopPadding(FZ)V

    return-void
.end method

.method public wakeUpFromPulse()V
    .locals 0

    .line 802
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mView:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->wakeUpFromPulse()V

    return-void
.end method
