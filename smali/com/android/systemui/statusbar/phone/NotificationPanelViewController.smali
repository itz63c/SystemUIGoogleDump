.class public Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.super Lcom/android/systemui/statusbar/phone/PanelViewController;
.source "NotificationPanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnAttachStateChangeListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$DynamicPrivacyControlListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;
    }
.end annotation


# static fields
.field private static final EMPTY_RECT:Landroid/graphics/Rect;

.field private static final KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;


# instance fields
.field private final KEYGUARD_HEADS_UP_SHOWING_AMOUNT:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private mAffordanceHasPreview:Z

.field private mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

.field private mAffordanceLaunchListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowExpandForSmallExpansion:Z

.field private mAmbientIndicationBottomPadding:I

.field private final mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

.field private mAnimateNextPositionUpdate:Z

.field private mAnimatingQS:Z

.field private final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field private mBarState:I

.field private mBigClockContainer:Landroid/view/ViewGroup;

.field private final mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private mBlockTouches:Z

.field private mBlockingExpansionForCurrentTouch:Z

.field private mBottomAreaShadeAlpha:F

.field private final mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

.field private final mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

.field private mClosingWithAlphaFadeOut:Z

.field private mCollapsedOnDown:Z

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;

.field private mConflictingQsExpansionGesture:Z

.field private final mControlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

.field private final mConversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

.field private mDarkIconSize:I

.field private mDelayShowingKeyguardStatusBar:Z

.field private mDisabledUdfpsController:Lcom/android/keyguard/DisabledUdfpsController;

.field private mDisplayCutoutTopInset:I

.field private mDisplayId:I

.field private mDownX:F

.field private mDownY:F

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDozing:Z

.field private mDozingOnDown:Z

.field private mEmptyDragAmount:F

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

.field private mExpandOffset:F

.field private mExpandingFromHeadsUp:Z

.field private final mExpansionCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;

.field private mExpectingSynthesizedDown:Z

.field private final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

.field private mFirstBypassAttempt:Z

.field private mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field private final mFlingAnimationUtilsBuilder:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

.field private mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

.field private mHeadsUpAnimatingAway:Z

.field private mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

.field private mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

.field private mHeadsUpInset:I

.field private mHeadsUpPinnedMode:Z

.field private mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

.field private final mHeightListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;

.field private mHideIconsDuringNotificationLaunch:Z

.field private mIndicationBottomPadding:I

.field private mInitialHeightOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInterpolatedDarkAmount:F

.field private mIsExpanding:Z

.field private mIsFullWidth:Z

.field private mIsLaunchTransitionFinished:Z

.field private mIsLaunchTransitionRunning:Z

.field private mIsPanelCollapseOnQQS:Z

.field private final mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mKeyguardHeadsUpShowingAmount:F

.field private mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private final mKeyguardQsUserSwitchComponentFactory:Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;

.field private mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

.field private mKeyguardQsUserSwitchEnabled:Z

.field private mKeyguardShowing:Z

.field private mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mKeyguardStatusBarAnimateAlpha:F

.field private final mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

.field private mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

.field final mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mKeyguardUserSwitcherComponentFactory:Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;

.field private mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

.field private mKeyguardUserSwitcherEnabled:Z

.field private mKeyguardUserSwitcherIsShowing:Z

.field final mKeyguardUserSwitcherListener:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserSwitcherListener;

.field private mLastCameraLaunchSource:Ljava/lang/String;

.field private mLastEventSynthesizedDown:Z

.field private mLastOrientation:I

.field private mLastOverscroll:F

.field private mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

.field private mLaunchingAffordance:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLinearDarkAmount:F

.field private mListenForHeadsUp:Z

.field private mLockScreenMode:I

.field private mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private mMaxAllowedKeyguardNotifications:I

.field private final mMaxKeyguardNotifications:I

.field private final mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

.field private final mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNavigationBarBottomHeight:I

.field private mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field private final mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

.field private final mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field private mNotificationsHeaderCollideDistance:I

.field private mOldLayoutDirection:I

.field private final mOnClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;

.field private final mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;

.field private final mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;

.field private final mOnHeightChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;

.field private final mOnOverscrollTopChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;

.field private mOnlyAffordanceInThisMotion:Z

.field private mPanelAlpha:I

.field private final mPanelAlphaAnimator:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private mPanelAlphaEndAction:Ljava/lang/Runnable;

.field private final mPanelAlphaInPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private final mPanelAlphaOutPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private mPanelExpanded:Z

.field private mPositionMinSideMargin:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

.field private mPulsing:Z

.field private final mQSDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mQsAnimatorExpand:Z

.field private mQsExpandImmediate:Z

.field private mQsExpanded:Z

.field private mQsExpandedWhenExpandingStarted:Z

.field private mQsExpansionAnimator:Landroid/animation/ValueAnimator;

.field private mQsExpansionEnabled:Z

.field private mQsExpansionFromOverscroll:Z

.field private mQsExpansionHeight:F

.field private mQsFalsingThreshold:I

.field private mQsFrame:Landroid/widget/FrameLayout;

.field private mQsFullyExpanded:Z

.field private mQsMaxExpansionHeight:I

.field private mQsMinExpansionHeight:I

.field private mQsNotificationTopPadding:I

.field private mQsPeekHeight:I

.field private mQsScrimEnabled:Z

.field private mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

.field private mQsTouchAboveFalsingThreshold:Z

.field private mQsTracking:Z

.field private mQsVelocityTracker:Landroid/view/VelocityTracker;

.field private final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mShelfHeight:I

.field private mShowIconsWhenExpanded:Z

.field private mShowingKeyguardHeadsUp:Z

.field private mStackScrollerMeasuringPass:I

.field private mStackScrollerOverscrolling:Z

.field private final mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarMinHeight:I

.field private final mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;

.field private mThemeResId:I

.field private mTrackingHeadsUpListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTrackingPointer:I

.field private mTwoFingerQsExpandPossible:Z

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mUserManager:Landroid/os/UserManager;

.field private mUserSetupComplete:Z

.field private mVerticalTranslationListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;


# direct methods
.method public static synthetic $r8$lambda$4YGMilNfskTpGgutzBiuCaqTjx8(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CIEHUoihUaG327M4TeUiEVfl2EM(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$0(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PP1NiV-v3CJOB3b1-nxQGZI4aTM(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$onFinishInflate$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uct-XdykZ119SJmNRmDzcBiZ1Rs(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$XCDDR6ArlUzy08pCx0r2y365uFg(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Float;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$1(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$h8mGD0lpH1u4OnYEj3iMUkAmVWk(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$flingSettings$7(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kayjlS5TR2QzlIDsaKEBvE-8UQs(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/util/Property;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$3(Landroid/util/Property;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zo98q1KVSzi_TN9IAUt1lARnBWw(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$4()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 225
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    .line 226
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 236
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x168

    .line 237
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;ILcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/logging/MetricsLogger;Landroid/app/ActivityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;Lcom/android/systemui/qs/QSDetailDisplayer;Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/os/UserManager;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/controls/dagger/ControlsComponent;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/NotificationPanelView;",
            "Landroid/content/res/Resources;",
            "Landroid/view/LayoutInflater;",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/doze/DozeLog;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Lcom/android/internal/util/LatencyTracker;",
            "Landroid/os/PowerManager;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "I",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Landroid/app/ActivityManager;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            "Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;",
            "Lcom/android/systemui/media/MediaHierarchyManager;",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            "Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;",
            "Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;",
            "Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;",
            "Lcom/android/systemui/qs/QSDetailDisplayer;",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            "Landroid/os/UserManager;",
            "Lcom/android/systemui/media/MediaDataManager;",
            "Lcom/android/systemui/statusbar/notification/stack/AmbientState;",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            "Lcom/android/systemui/controls/dagger/ControlsComponent;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ")V"
        }
    .end annotation

    move-object v11, p0

    move-object v12, p1

    move-object/from16 v13, p5

    .line 607
    move-object/from16 v5, p14

    check-cast v5, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 609
    invoke-interface/range {p27 .. p27}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p8

    move-object/from16 v3, p15

    move-object/from16 v4, p13

    move-object/from16 v6, p18

    move-object/from16 v7, p19

    move-object/from16 v9, p28

    move-object/from16 v10, p44

    .line 607
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/phone/PanelViewController;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 183
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;

    .line 184
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;

    .line 185
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnOverscrollTopChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;

    .line 188
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 191
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;

    .line 194
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;

    .line 197
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeightListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;

    .line 198
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;

    .line 199
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;

    .line 200
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;

    .line 228
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    sget v5, Lcom/android/systemui/R$id;->keyguard_hun_animator_tag:I

    sget v6, Lcom/android/systemui/R$id;->keyguard_hun_animator_end_tag:I

    sget v7, Lcom/android/systemui/R$id;->keyguard_hun_animator_start_tag:I

    const-string v2, "KEYGUARD_HEADS_UP_SHOWING_AMOUNT"

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v0

    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->KEYGUARD_HEADS_UP_SHOWING_AMOUNT:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 238
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 299
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherListener:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserSwitcherListener;

    const/4 v0, 0x1

    .line 382
    iput-boolean v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabled:Z

    const/4 v2, 0x0

    .line 390
    iput v2, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayCutoutTopInset:I

    .line 392
    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;-><init>()V

    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 395
    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;-><init>()V

    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .line 417
    iput-boolean v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsScrimEnabled:Z

    const/high16 v3, 0x3f800000    # 1.0f

    .line 421
    iput v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBarAnimateAlpha:F

    const/4 v3, -0x1

    .line 428
    iput v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOrientation:I

    const-string v3, "lockscreen_affordance"

    .line 435
    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 437
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    .line 467
    new-instance v3, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 471
    iput-boolean v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHideIconsDuringNotificationLaunch:Z

    .line 473
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    .line 476
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mVerticalTranslationListener:Ljava/util/ArrayList;

    .line 483
    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda6;

    sget-object v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda10;

    sget v7, Lcom/android/systemui/R$id;->panel_alpha_animator_tag:I

    sget v8, Lcom/android/systemui/R$id;->panel_alpha_animator_start_tag:I

    sget v9, Lcom/android/systemui/R$id;->panel_alpha_animator_end_tag:I

    const-string v4, "panelAlpha"

    invoke-static/range {v4 .. v9}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v3

    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaAnimator:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 488
    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v5, 0x96

    .line 489
    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v4

    .line 490
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getProperty()Landroid/util/Property;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 489
    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v4

    iput-object v4, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaOutPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 491
    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v7, 0xc8

    .line 492
    invoke-virtual {v4, v7, v8}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda8;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setAnimationEndAction(Ljava/util/function/Consumer;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v4

    .line 497
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getProperty()Landroid/util/Property;

    move-result-object v3

    sget-object v5, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 496
    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v3

    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaInPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    const/4 v3, 0x0

    .line 520
    iput v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardHeadsUpShowingAmount:F

    .line 545
    iput v2, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockScreenMode:I

    .line 548
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 1877
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$8;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1910
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$10;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$10;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1930
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$11;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$11;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 3110
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    .line 611
    iput-object v12, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v3, p24

    .line 612
    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v3, p25

    .line 613
    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v3, p26

    .line 614
    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v3, p27

    .line 615
    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFlingAnimationUtilsBuilder:Ljavax/inject/Provider;

    move-object/from16 v3, p30

    .line 616
    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    move-object/from16 v3, p32

    .line 617
    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v3, p33

    .line 618
    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-object/from16 v3, p38

    .line 619
    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    move-object/from16 v3, p39

    .line 620
    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-object/from16 v3, p34

    .line 621
    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

    move-object/from16 v3, p45

    .line 622
    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    move-object/from16 v3, p35

    .line 623
    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchComponentFactory:Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;

    move-object/from16 v3, p36

    .line 624
    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherComponentFactory:Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;

    move-object/from16 v3, p37

    .line 625
    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQSDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    .line 626
    iget-object v3, v11, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    const v4, 0x11100a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherEnabled:Z

    if-eqz v3, :cond_0

    .line 628
    iget-object v3, v11, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$bool;->config_keyguard_user_switch_opens_qs_details:I

    .line 629
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchEnabled:Z

    .line 631
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    move-object/from16 v0, p3

    .line 632
    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p8

    .line 633
    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v0, p9

    .line 634
    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v0, p20

    .line 635
    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v0, p4

    .line 636
    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-object/from16 v0, p21

    .line 637
    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 638
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    const/16 v0, 0xff

    .line 639
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setPanelAlpha(IZ)V

    move-object/from16 v0, p17

    .line 640
    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move/from16 v0, p22

    .line 641
    iput v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayId:I

    .line 642
    iput-object v13, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-object/from16 v0, p16

    .line 643
    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v0, p31

    .line 644
    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-object/from16 v0, p41

    .line 645
    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v0, p42

    .line 646
    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p43

    .line 647
    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    move-object/from16 v0, p46

    .line 648
    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mControlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 649
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setPulseExpandAbortListener(Ljava/lang/Runnable;)V

    .line 654
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    iput v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mThemeResId:I

    move-object/from16 v0, p7

    .line 655
    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v3, p23

    .line 656
    iput-object v3, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 657
    invoke-virtual/range {p7 .. p7}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    iput-boolean v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFirstBypassAttempt:Z

    .line 659
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$4;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 669
    iget-object v3, v11, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 671
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$DynamicPrivacyControlListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$DynamicPrivacyControlListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    move-object/from16 v3, p6

    .line 673
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->addListener(Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 675
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 676
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v3, 0xa0

    .line 680
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 681
    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p10

    .line 682
    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v0, p11

    .line 683
    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v0, p12

    .line 684
    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-object/from16 v0, p29

    .line 685
    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    move-object/from16 v0, p40

    .line 686
    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    move-object/from16 v0, p47

    .line 687
    iput-object v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 689
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 690
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnAttachStateChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnAttachStateChangeListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    .line 691
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 692
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 693
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 696
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 702
    sget v0, Lcom/android/systemui/R$integer;->keyguard_max_notification_count:I

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMaxKeyguardNotifications:I

    .line 703
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onFinishInflate()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$10000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 164
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockScreenMode:I

    return p1
.end method

.method static synthetic access$10100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    return-object p0
.end method

.method static synthetic access$10200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusViewController;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    return-object p0
.end method

.method static synthetic access$10300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;IZ)V
    .locals 0

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setKeyguardBottomAreaVisibility(IZ)V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 164
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$10402(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$10500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateKeyguardStatusBarOut()V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateDozingVisibilities(Z)V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateMaxDisplayedNotifications(Z)V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->maybeAnimateBottomAreaAlpha()V

    return-void
.end method

.method static synthetic access$10900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->resetHorizontalPanelPosition()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    return-object p0
.end method

.method static synthetic access$11000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->positionClockAndNotifications()V

    return-void
.end method

.method static synthetic access$11102(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 164
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mEmptyDragAmount:F

    return p1
.end method

.method static synthetic access$11200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    return-object p0
.end method

.method static synthetic access$11300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;

    return-object p0
.end method

.method static synthetic access$11400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;

    return-object p0
.end method

.method static synthetic access$11500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    return-object p0
.end method

.method static synthetic access$11600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setIsFullWidth(Z)V

    return-void
.end method

.method static synthetic access$11700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;II)V
    .locals 0

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->startQsSizeChangeAnimation(II)V

    return-void
.end method

.method static synthetic access$11800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeader()V

    return-void
.end method

.method static synthetic access$11900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateMaxHeadsUpTranslation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 164
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFirstBypassAttempt:Z

    return p0
.end method

.method static synthetic access$12000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Runnable;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$12002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFirstBypassAttempt:Z

    return p1
.end method

.method static synthetic access$12500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 164
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOrientation:I

    return p0
.end method

.method static synthetic access$12502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 164
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$12602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 164
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayCutoutTopInset:I

    return p1
.end method

.method static synthetic access$12702(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 164
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 164
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDelayShowingKeyguardStatusBar:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDelayShowingKeyguardStatusBar:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 164
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    return p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 164
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 164
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;J)V
    .locals 0

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateKeyguardStatusBarIn(J)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/DisabledUdfpsController;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisabledUdfpsController:Lcom/android/keyguard/DisabledUdfpsController;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/keyguard/DisabledUdfpsController;)Lcom/android/keyguard/DisabledUdfpsController;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisabledUdfpsController:Lcom/android/keyguard/DisabledUdfpsController;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/biometrics/AuthController;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Landroid/view/LayoutInflater;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateUserSwitcherVisibility(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateKeyguardStatusBarForHeadsUp()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQSPulseExpansion()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$3202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/plugins/qs/QS;)Lcom/android/systemui/plugins/qs/QS;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 164
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBarAnimateAlpha:F

    return p1
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Runnable;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeaderKeyguardAlpha()V

    return-void
.end method

.method static synthetic access$3802(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimatingQS:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    return-object p0
.end method

.method static synthetic access$4002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;ZZ)V
    .locals 0

    .line 164
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setListening(Z)V

    return-void
.end method

.method static synthetic access$4300()Landroid/graphics/Rect;
    .locals 1

    .line 164
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeightListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;

    return-object p0
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;

    return-object p0
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 164
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabled:Z

    return p0
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 164
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerOverscrolling:Z

    return p0
.end method

.method static synthetic access$4702(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerOverscrolling:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 164
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockTouches:Z

    return p0
.end method

.method static synthetic access$4902(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockTouches:Z

    return p1
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 164
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    return p0
.end method

.method static synthetic access$5100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initDownStates(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/internal/logging/MetricsLogger;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method static synthetic access$5400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 164
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownX:F

    return p0
.end method

.method static synthetic access$5500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 164
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownY:F

    return p0
.end method

.method static synthetic access$5600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;FFF)Z
    .locals 0

    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->shouldQuickSettingsIntercept(FFF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/PulseExpansionHandler;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    return-object p0
.end method

.method static synthetic access$5800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsIntercept(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5902(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    return p1
.end method

.method static synthetic access$6000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 164
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    return p0
.end method

.method static synthetic access$6100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 164
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    return p0
.end method

.method static synthetic access$6200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 164
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mListenForHeadsUp:Z

    return p0
.end method

.method static synthetic access$6300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 164
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    return p0
.end method

.method static synthetic access$6400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 164
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnlyAffordanceInThisMotion:Z

    return p0
.end method

.method static synthetic access$6502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnlyAffordanceInThisMotion:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->handleQsTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 164
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulsing:Z

    return p0
.end method

.method static synthetic access$6900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 164
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    return p0
.end method

.method static synthetic access$6902(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 164
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    return p1
.end method

.method static synthetic access$7002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    return-object p0
.end method

.method static synthetic access$7300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->cancelQsAnimation()V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setOverScrolling(Z)V

    return-void
.end method

.method static synthetic access$7502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionFromOverscroll:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 164
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOverscroll:F

    return p0
.end method

.method static synthetic access$7602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 164
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOverscroll:F

    return p1
.end method

.method static synthetic access$7700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsState()V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 164
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    return p0
.end method

.method static synthetic access$7802(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 164
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    return p1
.end method

.method static synthetic access$7900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 164
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    return p0
.end method

.method static synthetic access$8002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 164
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    return p1
.end method

.method static synthetic access$8100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 164
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLinearDarkAmount:F

    return p0
.end method

.method static synthetic access$8102(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 164
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLinearDarkAmount:F

    return p1
.end method

.method static synthetic access$8202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionRunning:Z

    return p1
.end method

.method static synthetic access$8300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Runnable;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$8302(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$8400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/classifier/FalsingCollector;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    return-object p0
.end method

.method static synthetic access$8500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/String;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$8602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionFinished:Z

    return p1
.end method

.method static synthetic access$8702(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    return p1
.end method

.method static synthetic access$8800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Runnable;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$8900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateNotificationTranslucency()V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateGestureExclusionRect()V

    return-void
.end method

.method static synthetic access$9102(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 164
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpPinnedMode:Z

    return p1
.end method

.method static synthetic access$9200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeadsUpVisibility()V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$9400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 164
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    return p0
.end method

.method static synthetic access$9402(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 164
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    return p1
.end method

.method static synthetic access$9500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$9600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/String;
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 164
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNotificationTopPadding:I

    return p0
.end method

.method static synthetic access$9800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 164
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mThemeResId:I

    return p0
.end method

.method static synthetic access$9802(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 164
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mThemeResId:I

    return p1
.end method

.method static synthetic access$9900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->reInflateViews()V

    return-void
.end method

.method private animateKeyguardStatusBarIn(J)V
    .locals 2

    .line 1921
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 1922
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1923
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1924
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1925
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1926
    sget-object p0, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1927
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateKeyguardStatusBarOut()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1887
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1888
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1889
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1890
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getKeyguardFadingAwayDelay()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 1889
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1893
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1894
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getShortenedFadingAwayDuration()J

    move-result-wide v1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x168

    .line 1898
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1900
    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1901
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1907
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private calculateGestureExclusionRect()Landroid/graphics/Rect;
    .locals 1

    .line 1034
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->calculateTouchableRegion()Landroid/graphics/Region;

    move-result-object v0

    .line 1035
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 1037
    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    .line 1039
    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->EMPTY_RECT:Landroid/graphics/Rect;

    :goto_1
    return-object p0
.end method

.method private calculatePanelHeightQsExpanded()I
    .locals 4

    .line 2375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2376
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2377
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getEmptyBottomMargin()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2378
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getTopPadding()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2383
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getNotGoneChildCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2384
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isShowingEmptyShadeView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2385
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getEmptyShadeViewHeight()F

    move-result v0

    .line 2387
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    .line 2389
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v2, :cond_1

    .line 2390
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNotificationTopPadding:I

    add-int/2addr v1, v2

    .line 2394
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    .line 2395
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2398
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 2397
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2400
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getTopPaddingOverflow()F

    move-result v0

    add-float/2addr v2, v0

    .line 2401
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4

    int-to-float v0, v1

    .line 2403
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2404
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getLayoutMinHeight()F

    move-result v1

    add-float/2addr v0, v1

    .line 2405
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2406
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    move-result p0

    int-to-float p0, p0

    .line 2405
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_4
    float-to-int p0, v2

    return p0
.end method

.method private calculatePanelHeightShade()I
    .locals 3

    .line 2357
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getEmptyBottomMargin()I

    move-result v0

    .line 2358
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    .line 2359
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getTopPaddingOverflow()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 2361
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2363
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 2364
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getExpandedClockPosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 2365
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardStatusViewController;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2366
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getIntrinsicContentHeight()I

    move-result p0

    add-int/2addr v1, p0

    .line 2367
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private calculateQsTopPadding()F
    .locals 4

    .line 2030
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    invoke-static {v0, v1}, Lcom/android/systemui/util/Utils;->shouldUseSplitNotificationShade(Lcom/android/systemui/statusbar/FeatureFlags;Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2033
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v1, :cond_3

    .line 2041
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardNotificationStaticPadding()I

    move-result v0

    .line 2042
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNotificationTopPadding:I

    add-int/2addr v1, v2

    .line 2043
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2045
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    int-to-float v1, v1

    .line 2046
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result p0

    .line 2045
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    int-to-float p0, p0

    return p0

    .line 2047
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    .line 2049
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2050
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardNotificationStaticPadding()I

    move-result p0

    .line 2048
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_4
    if-eqz v0, :cond_5

    .line 2054
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardNotificationStaticPadding()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNotificationTopPadding:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 2056
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result p0

    .line 2054
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0

    .line 2058
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNotificationTopPadding:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method private canPanelCollapseOnQQS(FF)Z
    .locals 3

    .line 1530
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCollapsedOnDown:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1533
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v0

    .line 1534
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v2, p0

    cmpg-float p0, p1, v2

    if-gtz p0, :cond_2

    .line 1535
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    return v1
.end method

.method private canShowRowOnLockscreen(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 4

    .line 1250
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1252
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 1251
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return v2

    .line 1256
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    .line 1259
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private canShowViewOnLockscreen(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 2

    .line 1228
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->hasNoContentHeight()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1231
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1232
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->canShowRowOnLockscreen(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    .line 1234
    :cond_1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private cancelQsAnimation()V
    .locals 0

    .line 2121
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 2122
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private computeMaxKeyguardNotifications()I
    .locals 13

    .line 1152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getMinStackScrollerPadding()F

    move-result v0

    .line 1153
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->notification_divider_height:I

    .line 1154
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x1

    .line 1153
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1156
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelfController;->getVisibility()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-ne v3, v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 1158
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelfController;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v3, v3

    .line 1159
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 1160
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    sub-float/2addr v5, v3

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIndicationBottomPadding:I

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAmbientIndicationBottomPadding:I

    .line 1161
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 1162
    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardStatusViewController;->getLogoutButtonHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 1164
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsEnrolled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1165
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    sub-float/2addr v5, v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 1167
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusViewController;->getOwnerInfoHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v5, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 1168
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusViewController;->getLogoutButtonHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v5, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1169
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayHeight()F

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v6}, Lcom/android/systemui/biometrics/AuthController;->getUdfpsRegion()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v6

    sub-float/2addr v5, v0

    :cond_1
    const/4 v0, 0x0

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    .line 1174
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildCount()I

    move-result v9

    if-ge v7, v9, :cond_c

    .line 1175
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v9, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildAt(I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v9

    .line 1176
    instance-of v10, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v10, :cond_2

    goto :goto_4

    .line 1179
    :cond_2
    move-object v10, v9

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1181
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    if-eqz v11, :cond_3

    .line 1183
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v12

    .line 1182
    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    if-eqz v11, :cond_3

    move v11, v2

    goto :goto_2

    :cond_3
    move v11, v6

    :goto_2
    if-eqz v11, :cond_4

    goto :goto_4

    .line 1187
    :cond_4
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->canShowViewOnLockscreen(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_4

    .line 1190
    :cond_5
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_4

    .line 1193
    :cond_6
    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight(Z)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v5, v10

    if-nez v8, :cond_7

    move v10, v4

    goto :goto_3

    :cond_7
    int-to-float v10, v1

    :goto_3
    sub-float/2addr v5, v10

    .line 1195
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 1196
    invoke-virtual {v10, v0, v9, v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->calculateGapHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)F

    move-result v0

    sub-float/2addr v5, v0

    cmpl-float v0, v5, v4

    if-ltz v0, :cond_9

    .line 1198
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMaxKeyguardNotifications:I

    const/4 v10, -0x1

    if-eq v0, v10, :cond_8

    if-ge v8, v0, :cond_9

    :cond_8
    add-int/lit8 v8, v8, 0x1

    move-object v0, v9

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_9
    neg-float v0, v3

    cmpl-float v0, v5, v0

    if-lez v0, :cond_c

    .line 1203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildCount()I

    move-result v0

    add-int/2addr v7, v2

    :goto_5
    if-ge v7, v0, :cond_b

    .line 1205
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildAt(I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v1

    .line 1206
    instance-of v3, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_a

    .line 1207
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->canShowViewOnLockscreen(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v1

    if-eqz v1, :cond_a

    return v8

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_b
    add-int/2addr v8, v2

    :cond_c
    return v8
.end method

.method private createVisibleEntriesList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;"
        }
    .end annotation

    .line 3334
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 3335
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 3336
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3337
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildAt(I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v2

    .line 3338
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    .line 3339
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private determineAccessibilityPaneTitle()Ljava/lang/String;
    .locals 2

    .line 2015
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2016
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_quick_settings_edit:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2017
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-eqz v0, :cond_1

    .line 2020
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_quick_settings:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2021
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2022
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_lock_screen:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2024
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_notification_shade:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static ensureAllViewsHaveIds(Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v0, 0x0

    .line 900
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 901
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 902
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 903
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private flingExpandsQs(F)Z
    .locals 3

    .line 1560
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isFalseTouch(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1563
    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {v2}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v2

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-gez v0, :cond_2

    .line 1564
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_3

    move v1, v2

    :cond_3
    :goto_0
    return v1
.end method

.method private flingQsWithCurrentVelocity(FZ)V
    .locals 2

    .line 1540
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getCurrentQSVelocity()F

    move-result v0

    .line 1541
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingExpandsQs(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1543
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->logQsSwipeDown(F)V

    :cond_0
    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 1545
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FI)V

    return-void
.end method

.method private getCurrentQSVelocity()F
    .locals 2

    .line 2113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0x3e8

    .line 2116
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2117
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0
.end method

.method private getFadeoutAlpha()F
    .locals 4

    .line 2426
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 2429
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/4 p0, 0x0

    .line 2430
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 2431
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private getFalsingThreshold()I
    .locals 1

    .line 1823
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1824
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFalsingThreshold:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private getKeyguardContentsAlpha()F
    .locals 4

    .line 2493
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2498
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationsHeaderCollideDistance:I

    add-int/2addr v1, p0

    int-to-float p0, v1

    goto :goto_0

    .line 2504
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    :goto_0
    div-float/2addr v0, p0

    .line 2506
    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 2507
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private getKeyguardHeadsUpShowingAmount()F
    .locals 0

    .line 2881
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardHeadsUpShowingAmount:F

    return p0
.end method

.method private getKeyguardNotificationStaticPadding()I
    .locals 2

    .line 2067
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2070
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2071
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    return p0

    .line 2073
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpInset:I

    .line 2074
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isPulseExpanding()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 2077
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    int-to-float v0, v0

    int-to-float v1, v1

    .line 2078
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2079
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->calculateAppearFractionBypass()F

    move-result p0

    .line 2078
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private getMaxPanelHeightBypass()I
    .locals 3

    .line 2282
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 2283
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getExpandedClockPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 2284
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardStatusViewController;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 2285
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getVisibleNotificationCount()I

    move-result v1

    if-eqz v1, :cond_0

    int-to-float v0, v0

    .line 2286
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShelfHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDarkIconSize:I

    int-to-float p0, p0

    div-float/2addr p0, v2

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    :cond_0
    return v0
.end method

.method private getMaxPanelHeightNonBypass()I
    .locals 4

    .line 2257
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarMinHeight:I

    .line 2258
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2259
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getNotGoneChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 2260
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getOverExpansionAmount()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 2261
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2264
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandedWhenExpandingStarted:Z

    if-nez v1, :cond_3

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulsing:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 2268
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculatePanelHeightShade()I

    move-result v1

    goto :goto_1

    .line 2266
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculatePanelHeightQsExpanded()I

    move-result v1

    .line 2270
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v0, :cond_4

    int-to-float v1, v0

    .line 2271
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2272
    :cond_4
    sget-object v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxPanelHeight is invalid. getOverExpansionAmount(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2273
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getOverExpansionAmount()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", calculatePanelHeightQsExpanded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2274
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculatePanelHeightQsExpanded()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", calculatePanelHeightShade: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2275
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculatePanelHeightShade()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mStatusBarMinHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarMinHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mQsMinExpansionHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2272
    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0
.end method

.method private getQsExpansionFraction()F
    .locals 3

    .line 1581
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v2, v1

    sub-float/2addr v0, v2

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    sub-int/2addr p0, v1

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private getUnlockedStackScrollerPadding()I
    .locals 2

    .line 1144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsPeekHeight:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNotificationTopPadding:I

    add-int/2addr v0, p0

    return v0
.end method

.method private handleQsDown(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1678
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 1679
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    .line 1678
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1680
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v0}, Lcom/android/systemui/classifier/FalsingCollector;->onQsDown()V

    const/4 v0, 0x1

    .line 1681
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    .line 1682
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 1683
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 1684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 1685
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 1688
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    :cond_0
    return-void
.end method

.method private handleQsTouch(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1607
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1608
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eq v3, v2, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabled:Z

    if-eqz v3, :cond_0

    .line 1611
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    .line 1612
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    .line 1613
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConflictingQsExpansionGesture:Z

    .line 1614
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 1615
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 1616
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 1617
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 1619
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1620
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->handleQsDown(Landroid/view/MotionEvent;)V

    .line 1622
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    if-eqz v3, :cond_2

    .line 1623
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsTouch(Landroid/view/MotionEvent;)V

    .line 1624
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConflictingQsExpansionGesture:Z

    if-nez v3, :cond_2

    return v2

    :cond_2
    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_4

    .line 1629
    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConflictingQsExpansionGesture:Z

    :cond_4
    if-nez v0, :cond_5

    .line 1631
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_5

    .line 1632
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTwoFingerQsExpandPossible:Z

    .line 1634
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTwoFingerQsExpandPossible:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOpenQsEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarMinHeight:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_6

    .line 1636
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v0, "panel_open_qs"

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 1637
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    .line 1638
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setShouldShowShelfOnly(Z)V

    .line 1639
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    .line 1643
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setListening(Z)V

    :cond_6
    return v1
.end method

.method private initBottomArea()V
    .locals 4

    .line 999
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 1000
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;Lcom/android/systemui/plugins/FalsingManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .line 1001
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAffordanceHelper(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    .line 1002
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1003
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUserSetupComplete:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUserSetupComplete(Z)V

    .line 1004
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mControlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setupControls(Lcom/android/systemui/controls/dagger/ControlsComponent;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-void
.end method

.method private initDownStates(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1498
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1499
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnlyAffordanceInThisMotion:Z

    .line 1500
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTouchAboveFalsingThreshold:Z

    .line 1501
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isDozing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozingOnDown:Z

    .line 1502
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownX:F

    .line 1503
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownY:F

    .line 1504
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCollapsedOnDown:Z

    .line 1505
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownX:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownY:F

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->canPanelCollapseOnQQS(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsPanelCollapseOnQQS:Z

    .line 1506
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCollapsedOnDown:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mListenForHeadsUp:Z

    .line 1507
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAllowExpandForSmallExpansion:Z

    .line 1508
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlopExceededBeforeDown:Z

    if-eqz p1, :cond_1

    .line 1510
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    goto :goto_1

    .line 1513
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    goto :goto_1

    .line 1517
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    :goto_1
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .line 2106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2107
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2109
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private isFalseTouch(I)Z
    .locals 1

    .line 1571
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->needsAntiFalsing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1574
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isClassifierEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1575
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    move-result p0

    return p0

    .line 1577
    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTouchAboveFalsingThreshold:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isForegroundApp(Ljava/lang/String;)Z
    .locals 3

    .line 3095
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    .line 3096
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0
.end method

.method private isInQsArea(FF)Z
    .locals 2

    .line 1649
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 1650
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getBottomMostNotificationBottom()F

    move-result p1

    cmpg-float p1, p2, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 1651
    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    cmpg-float p0, p2, p1

    if-gtz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOnKeyguard()Z
    .locals 1

    .line 3003
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOpenQsEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1655
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    .line 1656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    if-ne p0, v1, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_0
    if-nez v0, :cond_2

    const/16 v4, 0x20

    .line 1664
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x40

    .line 1665
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    if-nez v0, :cond_4

    .line 1670
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 1671
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move p1, v2

    goto :goto_2

    :cond_4
    move p1, v3

    :goto_2
    if-nez p0, :cond_6

    if-nez v4, :cond_6

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :cond_6
    :goto_3
    return v2
.end method

.method private synthetic lambda$flingSettings$7(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 2182
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Float;)V
    .locals 0

    .line 230
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setKeyguardHeadsUpShowingAmount(F)V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Float;
    .locals 0

    .line 232
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardHeadsUpShowingAmount()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    const/4 v0, 0x0

    .line 438
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setHeadsUpAnimatingAway(Z)V

    .line 439
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/util/Property;)V
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaEndAction:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 494
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 0

    .line 650
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p0, :cond_0

    .line 651
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingOut()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 677
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    .line 678
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateKeyguardBottomAreaAlpha()V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$6(I)V
    .locals 1

    .line 763
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOldLayoutDirection:I

    if-eq p1, v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->onRtlPropertiesChanged()V

    .line 765
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOldLayoutDirection:I

    :cond_0
    return-void
.end method

.method private logQsSwipeDown(F)V
    .locals 4

    .line 1549
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getCurrentQSVelocity()F

    move-result v0

    .line 1552
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0xc1

    goto :goto_0

    :cond_0
    const/16 v1, 0xc2

    .line 1554
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    sub-float/2addr p1, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1555
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result v3

    div-float/2addr p1, v3

    float-to-int p1, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1556
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result p0

    div-float/2addr v0, p0

    float-to-int p0, v0

    .line 1554
    invoke-virtual {v2, v1, p1, p0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    return-void
.end method

.method private maybeAnimateBottomAreaAlpha()V
    .locals 2

    .line 1869
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1870
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1871
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1873
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    :goto_0
    return-void
.end method

.method private notifyListenersTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    const/4 v0, 0x0

    .line 2619
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2620
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    .line 2621
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onFinishInflate()V
    .locals 5

    .line 707
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->loadDimens()V

    .line 708
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_header:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 709
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->big_clock_container:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBigClockContainer:Landroid/view/ViewGroup;

    .line 714
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchEnabled:Z

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v2, Lcom/android/systemui/R$id;->keyguard_qs_user_switch_stub:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 717
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v2, Lcom/android/systemui/R$id;->keyguard_user_switcher_stub:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 720
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 724
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v3, Lcom/android/systemui/R$id;->keyguard_status_view:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardStatusView;

    invoke-direct {p0, v2, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateViewControllers(Lcom/android/keyguard/KeyguardStatusView;Lcom/android/systemui/statusbar/phone/UserAvatarView;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)V

    .line 726
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->notification_container_parent:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    .line 727
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 729
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->attach(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    .line 730
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    .line 732
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnOverscrollTopChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V

    .line 734
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V

    .line 736
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->addTrackingHeadsUpListener(Ljava/util/function/Consumer;)V

    .line 737
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_bottom_area:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 738
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOrientation:I

    .line 740
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initBottomArea()V

    .line 742
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setStackScroller(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    .line 743
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->qs_frame:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    .line 744
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setUp(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;Lcom/android/systemui/statusbar/phone/ShadeController;)V

    .line 746
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$5;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->addListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    .line 762
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setRtlChangeListener(Lcom/android/systemui/statusbar/phone/NotificationPanelView$RtlChangeListener;)V

    .line 769
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 771
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    invoke-static {v0, v1}, Lcom/android/systemui/util/Utils;->shouldUseSplitNotificationShade(Lcom/android/systemui/statusbar/FeatureFlags;Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 772
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateResources()V

    :cond_2
    return-void
.end method

.method private onQsExpansionStarted()V
    .locals 1

    const/4 v0, 0x0

    .line 1834
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted(I)V

    return-void
.end method

.method private onQsIntercept(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1394
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1397
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    move v0, v1

    .line 1399
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1400
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    const/4 v5, 0x3

    if-eq v3, v4, :cond_6

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3

    if-eq v3, v5, :cond_6

    const/4 v0, 0x6

    if-eq v3, v0, :cond_1

    goto/16 :goto_1

    .line 1424
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1425
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    if-ne v2, v0, :cond_a

    .line 1427
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_2

    move v4, v1

    .line 1428
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    .line 1429
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 1430
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    goto/16 :goto_1

    .line 1435
    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    sub-float v3, v0, v3

    .line 1436
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1437
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    if-eqz v5, :cond_4

    .line 1442
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    add-float/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    .line 1443
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    return v4

    .line 1446
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getTouchSlop(Landroid/view/MotionEvent;)F

    move-result v5

    cmpl-float v5, v3, v5

    if-gtz v5, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getTouchSlop(Landroid/view/MotionEvent;)F

    move-result p1

    neg-float p1, p1

    cmpg-float p1, v3, p1

    if-gez p1, :cond_a

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz p1, :cond_a

    .line 1447
    :cond_5
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float p1, p1, v5

    if-lez p1, :cond_a

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 1448
    invoke-direct {p0, p1, v5, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->shouldQuickSettingsIntercept(FFF)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1449
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1450
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    .line 1451
    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    .line 1452
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 1453
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    .line 1454
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 1455
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 1456
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 1457
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->cancelLongPress()V

    return v4

    .line 1464
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1465
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    if-eqz v2, :cond_a

    .line 1467
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v5, :cond_7

    goto :goto_0

    :cond_7
    move v4, v1

    .line 1466
    :goto_0
    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingQsWithCurrentVelocity(FZ)V

    .line 1468
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    goto :goto_1

    .line 1404
    :cond_8
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 1405
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 1406
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initVelocityTracker()V

    .line 1407
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1408
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    const/4 v2, 0x0

    .line 1409
    invoke-direct {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->shouldQuickSettingsIntercept(FFF)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1413
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1415
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_a

    .line 1416
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 1417
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 1418
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    .line 1419
    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    .line 1420
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->cancelLongPress()V

    :cond_a
    :goto_1
    return v1
.end method

.method private onQsTouch(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1758
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1761
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    move v0, v1

    .line 1763
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 1764
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1765
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    sub-float v3, v2, v3

    .line 1767
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_a

    const/4 v0, 0x3

    if-eq v4, v5, :cond_5

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    if-eq v4, v0, :cond_5

    const/4 v0, 0x6

    if-eq v4, v0, :cond_1

    goto/16 :goto_4

    .line 1780
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1781
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    if-ne v2, v0, :cond_b

    .line 1783
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v5

    .line 1784
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1785
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1786
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    .line 1787
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 1788
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 1789
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    goto :goto_4

    .line 1794
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    add-float/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    .line 1795
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getFalsingThreshold()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_4

    .line 1796
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTouchAboveFalsingThreshold:Z

    .line 1798
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_4

    .line 1803
    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    const/4 v3, -0x1

    .line 1804
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    .line 1805
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1806
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_8

    .line 1807
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_6

    goto :goto_2

    .line 1812
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v0, :cond_7

    goto :goto_1

    :cond_7
    move v5, v1

    .line 1811
    :goto_1
    invoke-direct {p0, v1, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    goto :goto_3

    .line 1809
    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v0, :cond_9

    move v1, v5

    .line 1808
    :cond_9
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingQsWithCurrentVelocity(FZ)V

    .line 1814
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_b

    .line 1815
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 1816
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_4

    .line 1769
    :cond_a
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    .line 1770
    invoke-direct {p0, v5, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    .line 1771
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 1772
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 1773
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 1774
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 1775
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initVelocityTracker()V

    .line 1776
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    :cond_b
    :goto_4
    return-void
.end method

.method private positionClockAndNotifications()V
    .locals 25

    move-object/from16 v0, p0

    .line 1078
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isAddOrRemoveAnimationPending()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 1079
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    .line 1081
    :goto_1
    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eq v5, v3, :cond_2

    .line 1082
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getUnlockedStackScrollerPadding()I

    move-result v4

    goto/16 :goto_7

    .line 1084
    :cond_2
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v11

    .line 1085
    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIndicationBottomPadding:I

    iget v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAmbientIndicationBottomPadding:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1086
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v6, v11}, Lcom/android/keyguard/KeyguardStatusViewController;->getClockPreferredY(I)I

    move-result v14

    .line 1087
    iget v15, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarMinHeight:I

    .line 1088
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v20

    .line 1089
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 1090
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getVisibleNotificationCount()I

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {v6}, Lcom/android/systemui/media/MediaDataManager;->hasActiveMedia()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v13, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v13, v3

    .line 1091
    :goto_3
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v6, v13}, Lcom/android/keyguard/KeyguardStatusViewController;->setHasVisibleNotifications(Z)V

    .line 1092
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    if-eqz v6, :cond_5

    .line 1093
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->getUserIconHeight()I

    move-result v6

    :goto_4
    move/from16 v17, v6

    goto :goto_5

    .line 1094
    :cond_5
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v6, :cond_6

    .line 1095
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->getUserIconHeight()I

    move-result v6

    goto :goto_4

    :cond_6
    move/from16 v17, v2

    .line 1096
    :goto_5
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget v7, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarMinHeight:I

    sub-int v8, v11, v5

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 1097
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getIntrinsicContentHeight()I

    move-result v9

    .line 1098
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result v10

    .line 1100
    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockScreenMode:I

    if-ne v5, v3, :cond_7

    .line 1101
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardStatusViewController;->getHeight()I

    move-result v5

    goto :goto_6

    .line 1102
    :cond_7
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardStatusViewController;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v12, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShelfHeight:I

    int-to-float v12, v12

    const/high16 v16, 0x40000000    # 2.0f

    div-float v12, v12, v16

    sub-float/2addr v5, v12

    iget v12, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDarkIconSize:I

    int-to-float v12, v12

    div-float v12, v12, v16

    sub-float/2addr v5, v12

    float-to-int v5, v5

    :goto_6
    move v12, v5

    .line 1105
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->hasCustomClock()Z

    move-result v16

    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    move/from16 v18, v5

    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mEmptyDragAmount:F

    move/from16 v19, v5

    .line 1107
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getUnlockedStackScrollerPadding()I

    move-result v21

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1108
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->canShowLockIcon()Z

    move-result v22

    .line 1109
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result v23

    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayCutoutTopInset:I

    move/from16 v24, v5

    move v5, v13

    move/from16 v13, v17

    move/from16 v17, v5

    .line 1096
    invoke-virtual/range {v6 .. v24}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->setup(IIIFIIIIIZZFFZIZFI)V

    .line 1111
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V

    .line 1112
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v7, v6, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    iget v8, v6, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    iget v6, v6, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    invoke-virtual {v5, v7, v8, v6, v4}, Lcom/android/keyguard/KeyguardStatusViewController;->updatePosition(IIFZ)V

    .line 1115
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    if-eqz v5, :cond_8

    .line 1116
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v7, v6, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    iget v6, v6, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->userSwitchY:I

    invoke-virtual {v5, v7, v6, v4}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->updatePosition(IIZ)V

    .line 1121
    :cond_8
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v5, :cond_9

    .line 1122
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v7, v6, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    iget v6, v6, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->userSwitchY:I

    invoke-virtual {v5, v7, v6, v4}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->updatePosition(IIZ)V

    .line 1127
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateNotificationTranslucency()V

    .line 1128
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateClock()V

    .line 1129
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingExpanded:I

    .line 1131
    :goto_7
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setIntrinsicPadding(I)V

    .line 1132
    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v5, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAntiBurnInOffsetX(I)V

    .line 1134
    iget v4, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    .line 1135
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    .line 1136
    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    .line 1137
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    return-void
.end method

.method private reInflateStub(IIIZ)Landroid/view/View;
    .locals 1

    .line 909
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 911
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p2

    .line 912
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    if-eqz p4, :cond_0

    .line 914
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 915
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    move-object p1, p0

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 921
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    .line 922
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private reInflateViews()V
    .locals 7

    .line 930
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_status_view:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    .line 931
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 932
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 933
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/systemui/R$layout;->keyguard_status_view:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    .line 935
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 938
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v1

    .line 939
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchEnabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-nez v2, :cond_1

    .line 940
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherEnabled:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 944
    :goto_1
    sget v1, Lcom/android/systemui/R$id;->keyguard_qs_user_switch_view:I

    sget v2, Lcom/android/systemui/R$id;->keyguard_qs_user_switch_stub:I

    sget v6, Lcom/android/systemui/R$layout;->keyguard_qs_user_switch:I

    invoke-direct {p0, v1, v2, v6, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->reInflateStub(IIIZ)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    .line 949
    sget v2, Lcom/android/systemui/R$id;->keyguard_user_switcher_view:I

    sget v5, Lcom/android/systemui/R$id;->keyguard_user_switcher_stub:I

    sget v6, Lcom/android/systemui/R$layout;->keyguard_user_switcher:I

    .line 950
    invoke-direct {p0, v2, v5, v6, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->reInflateStub(IIIZ)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    .line 956
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 957
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateViewControllers(Lcom/android/keyguard/KeyguardStatusView;Lcom/android/systemui/statusbar/phone/UserAvatarView;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)V

    .line 960
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 961
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 962
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 963
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/android/systemui/R$layout;->keyguard_bottom_area:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2, v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 965
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initFrom(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 966
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 967
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initBottomArea()V

    .line 968
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationArea(Landroid/view/ViewGroup;)V

    .line 969
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 970
    invoke-interface {v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->getInterpolatedDozeAmount()F

    move-result v2

    .line 969
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->onDozeAmountChanged(FF)V

    .line 972
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_2

    .line 973
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->onThemeChanged()V

    .line 976
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-virtual {v0, v1, v4, v4, v1}, Lcom/android/keyguard/KeyguardStatusViewController;->setKeyguardStatusViewVisibility(IZZI)V

    .line 981
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    if-eqz v0, :cond_3

    .line 982
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-virtual {v0, v1, v4, v4, v1}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->setKeyguardQsUserSwitchVisibility(IZZI)V

    .line 988
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v0, :cond_4

    .line 989
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-virtual {v0, v1, v4, v4, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setKeyguardUserSwitcherVisibility(IZZI)V

    .line 995
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-direct {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setKeyguardBottomAreaVisibility(IZ)V

    return-void
.end method

.method private resetHorizontalPanelPosition()V
    .locals 1

    const/4 v0, 0x0

    .line 2952
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setHorizontalPanelTranslation(F)V

    return-void
.end method

.method private setClosingWithAlphaFadeout(Z)V
    .locals 0

    .line 2919
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClosingWithAlphaFadeOut:Z

    .line 2920
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->forceNoOverlappingRendering(Z)V

    return-void
.end method

.method private setIsFullWidth(Z)V
    .locals 0

    .line 1043
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsFullWidth:Z

    .line 1044
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setIsFullWidth(Z)V

    return-void
.end method

.method private setKeyguardBottomAreaVisibility(IZ)V
    .locals 2

    .line 1938
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p2, :cond_0

    .line 1940
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 1941
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getKeyguardFadingAwayDelay()J

    move-result-wide v0

    .line 1940
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 1942
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getShortenedFadingAwayDuration()J

    move-result-wide v0

    .line 1941
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 1942
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1943
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1944
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 1950
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 1947
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1948
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method private setKeyguardHeadsUpShowingAmount(F)V
    .locals 0

    .line 2876
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardHeadsUpShowingAmount:F

    .line 2877
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeaderKeyguardAlpha()V

    return-void
.end method

.method private setLaunchingAffordance(Z)V
    .locals 1

    .line 3055
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLaunchingAffordance:Z

    .line 3056
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLaunchingAffordance(Z)V

    .line 3057
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLaunchingAffordance(Z)V

    .line 3059
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setLaunchingAffordance(Z)V

    .line 3060
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceLaunchListener:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    .line 3061
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setListening(Z)V
    .locals 1

    .line 2626
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setListening(Z)V

    .line 2627
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez p0, :cond_0

    return-void

    .line 2628
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QS;->setListening(Z)V

    return-void
.end method

.method private setOverScrolling(Z)V
    .locals 0

    .line 1828
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerOverscrolling:Z

    .line 1829
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez p0, :cond_0

    return-void

    .line 1830
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QS;->setOverscrolling(Z)V

    return-void
.end method

.method private setQsExpanded(Z)V
    .locals 1

    .line 1855
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1857
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    .line 1858
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsState()V

    .line 1859
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    .line 1860
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v0, p1}, Lcom/android/systemui/classifier/FalsingCollector;->setQsExpanded(Z)V

    .line 1861
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setQsExpanded(Z)V

    .line 1862
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setQsExpanded(Z)V

    .line 1863
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setQsExpanded(Z)V

    .line 1864
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setQSExpanded(Z)V

    :cond_1
    return-void
.end method

.method private setQsExpansion(F)V
    .locals 10

    .line 1969
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1970
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    .line 1971
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerOverscrolling:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-nez v1, :cond_1

    .line 1973
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpanded(Z)V

    goto :goto_1

    :cond_1
    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    .line 1974
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v0, :cond_2

    .line 1975
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpanded(Z)V

    .line 1977
    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    .line 1978
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsExpansion()V

    .line 1979
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    .line 1980
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeaderKeyguardAlpha()V

    .line 1981
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-ne p1, v2, :cond_4

    .line 1982
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateKeyguardBottomAreaAlpha()V

    .line 1983
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->positionClockAndNotifications()V

    .line 1984
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateBigClockAlpha()V

    .line 1987
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1988
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 1991
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 1992
    invoke-interface {p1}, Lcom/android/systemui/classifier/FalsingCollector;->shouldEnforceBouncer()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1993
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 1996
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_8

    .line 1997
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/PanelExpansionListener;

    .line 1998
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    if-eqz v0, :cond_7

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 1997
    :goto_3
    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/phone/PanelExpansionListener;->onQsExpansionChanged(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method private setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 856
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 857
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method private shouldQuickSettingsIntercept(FFF)Z
    .locals 5

    .line 2220
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCollapsedOnDown:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 2221
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2224
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 2226
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    .line 2227
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    cmpl-float v2, p1, v2

    const/4 v3, 0x1

    if-ltz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_3

    .line 2228
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v1

    .line 2229
    :goto_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v2, :cond_6

    if-nez v0, :cond_4

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_5

    .line 2230
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isInQsArea(FF)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    return v1

    :cond_6
    return v0

    :cond_7
    :goto_3
    return v1
.end method

.method private startQsSizeChangeAnimation(II)V
    .locals 2

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1049
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1050
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 1052
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    .line 1053
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1054
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1055
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$6;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$6;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1064
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$7;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$7;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1070
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private traceQsJank(ZZ)V
    .locals 2

    .line 1485
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz p1, :cond_0

    .line 1487
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1490
    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    goto :goto_0

    .line 1492
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    :goto_0
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 0

    .line 2102
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private updateBigClockAlpha()V
    .locals 4

    .line 2558
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isUnlockHintRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x3f733333    # 0.95f

    .line 2559
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2557
    invoke-static {v0, v3, v1, v3, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    .line 2560
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result v1

    sub-float/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2561
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method private updateClock()V
    .locals 2

    .line 1266
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardStatusViewController;->setAlpha(F)V

    .line 1267
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    if-eqz v0, :cond_0

    .line 1268
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->setAlpha(F)V

    .line 1270
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v0, :cond_1

    .line 1271
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private updateDozingVisibilities(Z)V
    .locals 2

    .line 2791
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDozing(ZZ)V

    .line 2792
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x168

    .line 2793
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateKeyguardStatusBarIn(J)V

    :cond_0
    return-void
.end method

.method private updateGestureExclusionRect()V
    .locals 2

    .line 1027
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculateGestureExclusionRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1028
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 1029
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1028
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method private updateHeader()V
    .locals 2

    .line 2456
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2457
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeaderKeyguardAlpha()V

    .line 2459
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsExpansion()V

    return-void
.end method

.method private updateHeaderKeyguardAlpha()V
    .locals 5

    .line 2512
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 2515
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v1, v0

    .line 2516
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardContentsAlpha()F

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBarAnimateAlpha:F

    mul-float/2addr v0, v2

    .line 2518
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardHeadsUpShowingAmount:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 2519
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 2521
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFirstBypassAttempt:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2522
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFace()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDelayShowingKeyguardStatusBar:Z

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 2524
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_4

    .line 2525
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-nez p0, :cond_4

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    .line 2524
    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    return-void
.end method

.method private updateHeadsUpVisibility()V
    .locals 2

    .line 2891
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpAnimatingAway:Z

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpPinnedMode:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setHeadsUpVisible(Z)V

    return-void
.end method

.method private updateKeyguardBottomAreaAlpha()V
    .locals 4

    .line 2536
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isUnlockHintRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x3f733333    # 0.95f

    .line 2537
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2535
    invoke-static {v0, v3, v1, v3, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    .line 2538
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result v2

    sub-float/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2539
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    mul-float/2addr v0, v2

    .line 2540
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAffordanceAlpha(F)V

    .line 2541
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 2544
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAmbientIndicationContainer()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2546
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private updateKeyguardStatusBarForHeadsUp()V
    .locals 4

    .line 2861
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 2862
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2863
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShowingKeyguardHeadsUp:Z

    if-eq v2, v0, :cond_3

    .line 2864
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShowingKeyguardHeadsUp:Z

    .line 2865
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 2866
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->KEYGUARD_HEADS_UP_SHOWING_AMOUNT:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    if-eqz v0, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2867
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 2866
    invoke-static {v2, p0, v3, v0, v1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    goto :goto_1

    .line 2870
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->KEYGUARD_HEADS_UP_SHOWING_AMOUNT:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {v0, p0, v3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->applyImmediately(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;F)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateMaxDisplayedNotifications(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1009
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->computeMaxKeyguardNotifications()I

    move-result p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMaxAllowedKeyguardNotifications:I

    .line 1012
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1013
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMaxAllowedKeyguardNotifications:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setMaxDisplayedNotifications(I)V

    goto :goto_0

    .line 1017
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setMaxDisplayedNotifications(I)V

    :goto_0
    return-void
.end method

.method private updateMaxHeadsUpTranslation()V
    .locals 2

    .line 2690
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2691
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getHeight()I

    move-result v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    .line 2690
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setHeadsUpBoundaries(II)V

    return-void
.end method

.method private updateNotificationTranslucency()V
    .locals 3

    .line 2413
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClosingWithAlphaFadeOut:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 2414
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2415
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getFadeoutAlpha()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2417
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 2418
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2419
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    mul-float/2addr v0, v1

    .line 2421
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setAlpha(F)V

    return-void
.end method

.method private updatePanelExpanded()V
    .locals 2

    .line 2347
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2348
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelExpanded:Z

    if-eq v1, v0, :cond_2

    .line 2349
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setIsPanelExpanded(Z)V

    .line 2350
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->setPanelExpanded(Z)V

    .line 2351
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelExpanded(Z)V

    .line 2352
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelExpanded:Z

    :cond_2
    return-void
.end method

.method private updateQSPulseExpansion()V
    .locals 2

    .line 2094
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_1

    .line 2095
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 2096
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2097
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isPulseExpanding()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2095
    :goto_0
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QS;->setShowCollapsedOnKeyguard(Z)V

    :cond_1
    return-void
.end method

.method private updateQsState()V
    .locals 3

    .line 1955
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setQsExpanded(Z)V

    .line 1956
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionFromOverscroll:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setScrollingEnabled(Z)V

    .line 1960
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerOverscrolling:Z

    if-nez v1, :cond_2

    .line 1962
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    .line 1964
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_3

    return-void

    .line 1965
    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QS;->setExpanded(Z)V

    return-void
.end method

.method private updateStatusBarIcons()V
    .locals 3

    .line 2990
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isFullWidth()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2991
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getOpeningHeight()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 2993
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 2996
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShowIconsWhenExpanded:Z

    if-eq v0, v2, :cond_3

    .line 2997
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShowIconsWhenExpanded:Z

    .line 2998
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    :cond_3
    return-void
.end method

.method private updateUserSwitcherVisibility(Z)V
    .locals 3

    .line 3550
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherIsShowing:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 3553
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherIsShowing:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 3556
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateKeyguardStatusBarOut()V

    .line 3557
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-virtual {p1, v1, v0, v0, v1}, Lcom/android/keyguard/KeyguardStatusViewController;->setKeyguardStatusViewVisibility(IZZI)V

    .line 3562
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setKeyguardBottomAreaVisibility(IZ)V

    .line 3563
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x168

    .line 3565
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateKeyguardStatusBarIn(J)V

    .line 3566
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Lcom/android/keyguard/KeyguardStatusViewController;->setKeyguardStatusViewVisibility(IZZI)V

    .line 3571
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setKeyguardBottomAreaVisibility(IZ)V

    .line 3572
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateViewControllers(Lcom/android/keyguard/KeyguardStatusView;Lcom/android/systemui/statusbar/phone/UserAvatarView;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)V
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

    .line 806
    invoke-interface {v0, p1}, Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;->build(Lcom/android/keyguard/KeyguardStatusView;)Lcom/android/keyguard/dagger/KeyguardStatusViewComponent;

    move-result-object p1

    .line 807
    invoke-interface {p1}, Lcom/android/keyguard/dagger/KeyguardStatusViewComponent;->getKeyguardStatusViewController()Lcom/android/keyguard/KeyguardStatusViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 808
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 812
    invoke-interface {p1}, Lcom/android/keyguard/dagger/KeyguardStatusViewComponent;->getKeyguardClockSwitchController()Lcom/android/keyguard/KeyguardClockSwitchController;

    move-result-object p1

    .line 813
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardClockSwitchController;->setBigClockContainer(Landroid/view/ViewGroup;)V

    .line 815
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 818
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    .line 819
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->removeCallback()V

    :cond_0
    const/4 p1, 0x0

    .line 822
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    .line 823
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 827
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchComponentFactory:Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;

    .line 828
    invoke-interface {p3, p2}, Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;->build(Lcom/android/systemui/statusbar/phone/UserAvatarView;)Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent;

    move-result-object p2

    .line 830
    invoke-interface {p2}, Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent;->getKeyguardQsUserSwitchController()Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    .line 831
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->setNotificationPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 832
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    invoke-virtual {p2}, Lcom/android/systemui/util/ViewController;->init()V

    .line 833
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcherEnabled(Z)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 835
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherComponentFactory:Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;

    .line 836
    invoke-interface {p2, p3}, Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;->build(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent;

    move-result-object p2

    .line 838
    invoke-interface {p2}, Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent;->getKeyguardUserSwitcherController()Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 839
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherListener:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserSwitcherListener;

    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setCallback(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController$KeyguardUserSwitcherListener;)V

    .line 840
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    invoke-virtual {p2}, Lcom/android/systemui/util/ViewController;->init()V

    .line 841
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcherEnabled(Z)V

    goto :goto_0

    .line 843
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcherEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 3402
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public addTrackingHeadsUpListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;)V"
        }
    .end annotation

    .line 3246
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addVerticalTranslationListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 3254
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mVerticalTranslationListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animateCloseQs(Z)V
    .locals 2

    .line 1337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1338
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsAnimatorExpand:Z

    if-nez v1, :cond_0

    return-void

    .line 1341
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    .line 1342
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1343
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 1345
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FI)V

    return-void
.end method

.method public animateToFullShade(J)V
    .locals 1

    .line 1276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->goToFullShade(J)V

    .line 1277
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    const/4 p1, 0x1

    .line 1278
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    return-void
.end method

.method public applyExpandAnimationParams(Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3231
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getTopChange()I

    move-result v1

    int-to-float v1, v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandOffset:F

    .line 3232
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsExpansion()V

    if-eqz p1, :cond_2

    const-wide/16 v1, 0xe

    const-wide/16 v3, 0x64

    .line 3234
    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator$ExpandAnimationParameters;->getProgress(JJ)F

    move-result p1

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-nez p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 3236
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHideIconsDuringNotificationLaunch:Z

    if-eq p1, v1, :cond_2

    .line 3237
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHideIconsDuringNotificationLaunch:Z

    if-nez p1, :cond_2

    .line 3239
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayId:I

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    :cond_2
    return-void
.end method

.method public blockExpansionForCurrentTouch()V
    .locals 1

    .line 3297
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    return-void
.end method

.method public canCameraGestureBeLaunched()Z
    .locals 3

    .line 3076
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraAllowedByAdmin()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3080
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->resolveCameraIntent()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3083
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3084
    :cond_1
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 3085
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isForegroundApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .line 3086
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isSwipingInProgress()Z

    move-result p0

    if-nez p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method protected canCollapsePanelOnTouch()Z
    .locals 2

    .line 2238
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isInSettings()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2239
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsPanelCollapseOnQQS:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isScrolledToBottom()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public cancelAnimation()V
    .locals 0

    .line 1326
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public clearNotificationEffects()V
    .locals 0

    .line 3011
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotificationEffects()V

    return-void
.end method

.method public closeQs()V
    .locals 1

    .line 1321
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->cancelQsAnimation()V

    .line 1322
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    return-void
.end method

.method public closeQsDetail()V
    .locals 0

    .line 2775
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->closeDetail()V

    return-void
.end method

.method public closeUserSwitcherIfOpen()Z
    .locals 1

    .line 3541
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 3542
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public collapse(ZF)V
    .locals 2

    .line 1309
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->canPanelBeCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1313
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1314
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    .line 1315
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setShouldShowShelfOnly(Z)V

    .line 1317
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->collapse(ZF)V

    return-void
.end method

.method public createLayoutChangeListener()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;
    .locals 2

    .line 3427
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    return-object v0
.end method

.method public bridge synthetic createLayoutChangeListener()Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;
    .locals 0

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->createLayoutChangeListener()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;

    move-result-object p0

    return-object p0
.end method

.method protected createOnConfigurationChangedListener()Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;
    .locals 2

    .line 3525
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    return-object v0
.end method

.method public createRemoteInputDelegate()Lcom/android/systemui/statusbar/RemoteInputController$Delegate;
    .locals 0

    .line 3317
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->createDelegate()Lcom/android/systemui/statusbar/RemoteInputController$Delegate;

    move-result-object p0

    return-object p0
.end method

.method protected createTouchHandler()Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;
    .locals 1

    .line 3436
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-object v0
.end method

.method public dozeTimeTick()V
    .locals 2

    .line 3203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->dozeTimeTick()V

    .line 3204
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusViewController;->dozeTimeTick()V

    .line 3205
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 3206
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->positionClockAndNotifications()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 3302
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    gestureExclusionRect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculateGestureExclusionRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3304
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_0

    .line 3305
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3307
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisabledUdfpsController:Lcom/android/keyguard/DisabledUdfpsController;

    if-eqz p0, :cond_1

    .line 3308
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/DisabledUdfpsController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public expand(Z)V
    .locals 0

    .line 2633
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->expand(Z)V

    const/4 p1, 0x1

    .line 2634
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setListening(Z)V

    return-void
.end method

.method public expandWithQs()V
    .locals 2

    .line 1349
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1350
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    .line 1351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setShouldShowShelfOnly(Z)V

    .line 1353
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1354
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expand(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1356
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    const/4 v1, 0x0

    .line 1357
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FI)V

    :goto_0
    return-void
.end method

.method public expandWithQsDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1362
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    const/4 v0, 0x0

    .line 1363
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FI)V

    .line 1364
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQSDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    invoke-virtual {p0, p1, v1, v1}, Lcom/android/systemui/qs/QSDetailDisplayer;->showDetailAdapter(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    return-void
.end method

.method public expandWithoutQs()V
    .locals 2

    .line 1368
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsExpanded()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1369
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FI)V

    goto :goto_0

    .line 1371
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expand(Z)V

    :goto_0
    return-void
.end method

.method public fadeOut(JJLjava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    .line 3392
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 3393
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    return-object p0
.end method

.method public fling(FZ)V
    .locals 1

    .line 1377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;

    .line 1381
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->fling(FZ)V

    return-void
.end method

.method protected flingExpands(FFFF)Z
    .locals 0

    .line 1734
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->flingExpands(FFFF)Z

    move-result p1

    .line 1737
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public flingSettings(FI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2130
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FILjava/lang/Runnable;Z)V

    return-void
.end method

.method protected flingSettings(FILjava/lang/Runnable;Z)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    move v2, v0

    goto :goto_1

    .line 2150
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    goto :goto_0

    .line 2147
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    :goto_0
    int-to-float v2, v2

    .line 2156
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    cmpl-float v4, v2, v3

    const/4 v5, 0x0

    if-nez v4, :cond_4

    if-eqz p3, :cond_2

    .line 2158
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v5

    .line 2160
    :goto_2
    invoke-direct {p0, v5, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    return-void

    :cond_4
    if-nez p2, :cond_5

    move p2, v1

    goto :goto_3

    :cond_5
    move p2, v5

    :goto_3
    cmpl-float v4, p1, v0

    if-lez v4, :cond_6

    if-eqz p2, :cond_7

    :cond_6
    cmpg-float v4, p1, v0

    if-gez v4, :cond_8

    if-eqz p2, :cond_8

    :cond_7
    move p1, v0

    move v0, v1

    goto :goto_4

    :cond_8
    move v0, v5

    :goto_4
    const/4 v4, 0x2

    new-array v4, v4, [F

    aput v3, v4, v5

    aput v2, v4, v1

    .line 2171
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    if-eqz p4, :cond_9

    .line 2173
    sget-object p1, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x170

    .line 2174
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_5

    .line 2176
    :cond_9
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    invoke-virtual {p4, v3, v4, v2, p1}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    :goto_5
    if-eqz v0, :cond_a

    const-wide/16 v4, 0x15e

    .line 2179
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2181
    :cond_a
    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2184
    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Ljava/lang/Runnable;)V

    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2210
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimatingQS:Z

    .line 2211
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 2212
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 2213
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsAnimatorExpand:Z

    return-void
.end method

.method protected flingToHeight(FZFFZ)V
    .locals 2

    .line 1387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->notifyFling(Z)V

    if-nez p2, :cond_0

    .line 1388
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getFadeoutAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setClosingWithAlphaFadeout(Z)V

    .line 1389
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->flingToHeight(FZFFZ)V

    return-void
.end method

.method protected fullyExpandedClearAllVisible()Z
    .locals 1

    .line 2746
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isFooterViewNotGone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2747
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isScrolledToBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .locals 0

    .line 3355
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p0

    return-object p0
.end method

.method protected getClearAllHeightWithPadding()I
    .locals 0

    .line 2758
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getFooterViewHeightWithPadding()I

    move-result p0

    return p0
.end method

.method protected getHeaderTranslation()F
    .locals 4

    .line 2463
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2464
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    return p0

    .line 2466
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    .line 2467
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->calculateAppearFraction(F)F

    move-result v0

    .line 2468
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    neg-float v1, v1

    .line 2469
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2470
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isPulseExpanding()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2471
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 2472
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->getLeavingLockscreen()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    .line 2477
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2478
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->calculateAppearFractionBypass()F

    move-result v0

    .line 2480
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2482
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v3, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandOffset:F

    add-float/2addr v0, p0

    .line 2484
    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 3414
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    .locals 0

    .line 3222
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    return-object p0
.end method

.method protected getMaxPanelHeight()I
    .locals 2

    .line 2249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2250
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getMaxPanelHeightBypass()I

    move-result p0

    return p0

    .line 2252
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getMaxPanelHeightNonBypass()I

    move-result p0

    return p0
.end method

.method public getNotificationStackScrollLayoutController()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;
    .locals 0

    .line 3529
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    return-object p0
.end method

.method public getOnHeadsUpChangedListener()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;
    .locals 0

    .line 3410
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;

    return-object p0
.end method

.method protected getOpeningHeight()F
    .locals 0

    .line 1602
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getOpeningHeight()F

    move-result p0

    return p0
.end method

.method protected getOverExpansionAmount()F
    .locals 2

    .line 2437
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v0, 0x1

    .line 2438
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getCurrentOverScrollAmount(Z)F

    move-result p0

    .line 2439
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2440
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    const-string v1, "OverExpansionAmount is NaN!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p0
.end method

.method protected getOverExpansionPixels()F
    .locals 1

    .line 2448
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v0, 0x1

    .line 2449
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getCurrentOverScrolledPixels(Z)F

    move-result p0

    return p0
.end method

.method protected getPeekHeight()F
    .locals 1

    .line 2718
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getNotGoneChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2719
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getPeekHeight()F

    move-result p0

    return p0

    .line 2721
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float p0, p0

    return p0
.end method

.method public hasCustomClock()Z
    .locals 0

    .line 851
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->hasCustomClock()Z

    move-result p0

    return p0
.end method

.method public hasPulsingNotifications()Z
    .locals 0

    .line 3350
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 3351
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getNotificationListContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->hasPulsingNotifications()Z

    move-result p0

    return p0
.end method

.method public hideStatusBarIconsWhenExpanded()Z
    .locals 2

    .line 3100
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mLaunchingNotification:Z

    if-eqz v0, :cond_0

    .line 3101
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHideIconsDuringNotificationLaunch:Z

    return p0

    .line 3103
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3104
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3107
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isFullWidth()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShowIconsWhenExpanded:Z

    if-nez p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public initDependencies(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationShelfController;)V
    .locals 0

    .line 3376
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 3377
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setNotificationPanelController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 3378
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setShelfController(Lcom/android/systemui/statusbar/NotificationShelfController;)V

    .line 3379
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    const/4 p1, 0x1

    .line 3380
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateMaxDisplayedNotifications(Z)V

    return-void
.end method

.method protected isClearAllVisible()Z
    .locals 0

    .line 2753
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isFooterViewContentVisible()Z

    move-result p0

    return p0
.end method

.method public isDozing()Z
    .locals 0

    .line 2799
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    return p0
.end method

.method public isExpanding()Z
    .locals 0

    .line 2296
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    return p0
.end method

.method public isFullWidth()Z
    .locals 0

    .line 2984
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsFullWidth:Z

    return p0
.end method

.method protected isInContentBounds(FF)Z
    .locals 3

    .line 1477
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getX()F

    move-result v0

    .line 1478
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    sub-float v2, p1, v0

    .line 1479
    invoke-virtual {v1, v2, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isBelowLastNotification(FF)Z

    move-result p2

    if-nez p2, :cond_0

    cmpg-float p2, v0, p1

    if-gez p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 1481
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getWidth()F

    move-result p0

    add-float/2addr v0, p0

    cmpg-float p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInSettings()Z
    .locals 0

    .line 2292
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    return p0
.end method

.method public isLaunchTransitionFinished()Z
    .locals 0

    .line 2779
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionFinished:Z

    return p0
.end method

.method public isLaunchTransitionRunning()Z
    .locals 0

    .line 2783
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionRunning:Z

    return p0
.end method

.method public isLaunchingAffordanceWithPreview()Z
    .locals 1

    .line 3069
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLaunchingAffordance:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHasPreview:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isPanelVisibleBecauseOfHeadsUp()Z
    .locals 1

    .line 3016
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpAnimatingAway:Z

    if-eqz v0, :cond_1

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQsDetailShowing()Z
    .locals 0

    .line 2771
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->isShowingDetail()Z

    move-result p0

    return p0
.end method

.method public isQsExpanded()Z
    .locals 0

    .line 2767
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    return p0
.end method

.method protected isTrackingBlocked()Z
    .locals 1

    .line 2763
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConflictingQsExpansionGesture:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public launchCamera(ZI)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string p2, "power_double_tap"

    .line 3022
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo p2, "wiggle_gesture"

    .line 3024
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    const-string p2, "lift_to_launch_ml"

    .line 3026
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p2, "lockscreen_affordance"

    .line 3030
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 3036
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_3

    .line 3037
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setLaunchingAffordance(Z)V

    goto :goto_1

    :cond_3
    move p1, v1

    .line 3041
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightPreview()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    move p2, v0

    goto :goto_2

    :cond_4
    move p2, v1

    :goto_2
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHasPreview:Z

    .line 3042
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 3043
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p0

    if-ne p0, v0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    .line 3042
    :goto_3
    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->launchAffordance(ZZ)V

    return-void
.end method

.method protected loadDimens()V
    .locals 3

    .line 778
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->loadDimens()V

    .line 779
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFlingAnimationUtilsBuilder:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    const v1, 0x3ecccccd    # 0.4f

    .line 780
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->setMaxLengthSeconds(F)Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->build()Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 781
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    const v1, 0x1050270

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarMinHeight:I

    .line 783
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->qs_peek_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsPeekHeight:I

    .line 784
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->header_notifications_collide_distance:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationsHeaderCollideDistance:I

    .line 786
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->loadDimens(Landroid/content/res/Resources;)V

    .line 787
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->qs_falsing_threshold:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFalsingThreshold:I

    .line 788
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->notification_panel_min_side_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPositionMinSideMargin:I

    .line 790
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_indication_bottom_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIndicationBottomPadding:I

    .line 792
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->qs_notification_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNotificationTopPadding:I

    .line 794
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->notification_shelf_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShelfHeight:I

    .line 795
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->status_bar_icon_drawing_size_dark:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDarkIconSize:I

    .line 796
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 798
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->heads_up_status_bar_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpInset:I

    return-void
.end method

.method public onAffordanceLaunchEnded()V
    .locals 1

    const/4 v0, 0x0

    .line 3047
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setLaunchingAffordance(Z)V

    return-void
.end method

.method public onBouncerPreHideAnimation()V
    .locals 4

    .line 3271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v1}, Lcom/android/keyguard/KeyguardStatusViewController;->setKeyguardStatusViewVisibility(IZZI)V

    .line 3276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    if-eqz v0, :cond_0

    .line 3277
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-virtual {v0, v1, v2, v3, v1}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->setKeyguardQsUserSwitchVisibility(IZZI)V

    .line 3283
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v0, :cond_1

    .line 3284
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-virtual {v0, p0, v2, v3, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setKeyguardUserSwitcherVisibility(IZZI)V

    :cond_1
    return-void
.end method

.method protected onClosingFinished()V
    .locals 1

    .line 2912
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onClosingFinished()V

    .line 2913
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->resetHorizontalPanelPosition()V

    const/4 v0, 0x0

    .line 2914
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setClosingWithAlphaFadeout(Z)V

    .line 2915
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->closeGuts()V

    return-void
.end method

.method protected onExpandingFinished()V
    .locals 3

    .line 2584
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onExpandingFinished()V

    .line 2585
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->onExpansionStopped()V

    .line 2586
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->onExpandingFinished()V

    .line 2587
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->onNotificationPanelExpandStateChanged(Z)V

    const/4 v0, 0x0

    .line 2588
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    .line 2589
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->setCollapsingShadeFromQS(Z)V

    .line 2590
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2591
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$13;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 2601
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$14;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$14;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2608
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setListening(Z)V

    .line 2610
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    .line 2611
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setShouldShowShelfOnly(Z)V

    .line 2612
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTwoFingerQsExpandPossible:Z

    const/4 v1, 0x0

    .line 2613
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->notifyListenersTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 2614
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    const/4 v0, 0x0

    .line 2615
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setPanelScrimMinFraction(F)V

    return-void
.end method

.method protected onExpandingStarted()V
    .locals 3

    .line 2566
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onExpandingStarted()V

    .line 2567
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->onExpansionStarted()V

    const/4 v0, 0x1

    .line 2568
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    .line 2569
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandedWhenExpandingStarted:Z

    .line 2570
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimatingQS:Z

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->setCollapsingShadeFromQS(Z)V

    .line 2573
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v1, :cond_1

    .line 2574
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 2578
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez p0, :cond_2

    return-void

    .line 2579
    :cond_2
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/qs/QS;->setHeaderListening(Z)V

    return-void
.end method

.method protected onHeightUpdated(F)V
    .locals 4

    .line 2301
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v0, :cond_2

    .line 2306
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 2309
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->positionClockAndNotifications()V

    .line 2312
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionFromOverscroll:Z

    if-nez v0, :cond_5

    .line 2315
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v0, :cond_4

    .line 2318
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    goto :goto_1

    .line 2323
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2324
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getIntrinsicPadding()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2325
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getLayoutMinHeight()F

    move-result v1

    add-float/2addr v0, v1

    .line 2326
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculatePanelHeightQsExpanded()I

    move-result v1

    int-to-float v1, v1

    sub-float v2, p1, v0

    sub-float/2addr v1, v0

    div-float v0, v2, v1

    .line 2332
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v2, v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    .line 2334
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    .line 2336
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateExpandedHeight(F)V

    .line 2337
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeader()V

    .line 2338
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateNotificationTranslucency()V

    .line 2339
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updatePanelExpanded()V

    .line 2340
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateGestureExclusionRect()V

    return-void
.end method

.method protected onMiddleClicked()Z
    .locals 4

    .line 2816
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return v2

    .line 2831
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez v0, :cond_1

    .line 2832
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0, v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    :cond_1
    return v2

    .line 2818
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozingOnDown:Z

    if-nez v0, :cond_4

    .line 2819
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2820
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth()V

    goto :goto_0

    .line 2822
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v3, 0xbc

    invoke-virtual {v0, v3, v1, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 2824
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    sget-object v1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_LOCK_SHOW_HINT:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 2825
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->log(Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;)V

    .line 2826
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->startUnlockHintAnimation()V

    :cond_4
    :goto_0
    return v2

    .line 2839
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method protected onQsExpansionStarted(I)V
    .locals 1

    .line 1838
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->cancelQsAnimation()V

    .line 1839
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 1842
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 1843
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    .line 1844
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    .line 1845
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->checkSnoozeLeavebehind()V

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    .line 1850
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->requestFaceAuth()V

    :cond_0
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 0

    .line 2811
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->dozeTimeTick()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    .line 3422
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->onThemeChanged()V

    return-void
.end method

.method protected onTrackingStarted()V
    .locals 3

    .line 2658
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/android/systemui/classifier/FalsingCollector;->onTrackingStarted(Z)V

    .line 2659
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStarted()V

    .line 2660
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-eqz v0, :cond_0

    .line 2661
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    .line 2662
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    invoke-static {v0, v1}, Lcom/android/systemui/util/Utils;->shouldUseSplitNotificationShade(Lcom/android/systemui/statusbar/FeatureFlags;Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2663
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setShouldShowShelfOnly(Z)V

    .line 2666
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2667
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->animateHideLeftRightIcon()V

    .line 2669
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->onPanelTrackingStarted()V

    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 3

    .line 2674
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v0}, Lcom/android/systemui/classifier/FalsingCollector;->onTrackingStopped()V

    .line 2675
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStopped(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2677
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOverScrolledPixels(FZZ)V

    .line 2680
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->onPanelTrackingStopped()V

    if-eqz p1, :cond_2

    .line 2681
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 2683
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-nez p1, :cond_2

    .line 2684
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    :cond_2
    return-void
.end method

.method protected onUnlockHintFinished()V
    .locals 1

    .line 2706
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onUnlockHintFinished()V

    .line 2707
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setUnlockHintRunning(Z)V

    return-void
.end method

.method protected onUnlockHintStarted()V
    .locals 1

    .line 2712
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onUnlockHintStarted()V

    .line 2713
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setUnlockHintRunning(Z)V

    return-void
.end method

.method public onUpdateRowStates()V
    .locals 0

    .line 3346
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->onUpdateRowStates()V

    return-void
.end method

.method public removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 3406
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public removeTrackingHeadsUpListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;)V"
        }
    .end annotation

    .line 3250
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeVerticalTranslationListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 3258
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mVerticalTranslationListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected requestScrollerTopPaddingUpdate(Z)V
    .locals 2

    .line 2085
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculateQsTopPadding()F

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateTopPadding(FZ)V

    .line 2086
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2088
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsExpansion()V

    :cond_0
    return-void
.end method

.method public resetViewGroupFade()V
    .locals 0

    .line 3398
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper;->reset(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public resetViews(Z)V
    .locals 8

    const/4 v0, 0x0

    .line 1289
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionFinished:Z

    .line 1290
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockTouches:Z

    .line 1291
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLaunchingAffordance:Z

    if-nez v1, :cond_0

    .line 1292
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    const-string v0, "lockscreen_affordance"

    .line 1293
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 1295
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGutsManager()Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1298
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateCloseQs(Z)V

    goto :goto_0

    .line 1300
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->closeQs()V

    .line 1302
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v2, 0x0

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOverScrollAmount(FZZZ)V

    .line 1304
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->resetScrollPosition()V

    return-void
.end method

.method public runAfterAnimationFinished(Ljava/lang/Runnable;)V
    .locals 0

    .line 3363
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 0

    .line 3359
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 3388
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setAmbientIndicationBottomPadding(I)V
    .locals 1

    .line 3196
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAmbientIndicationBottomPadding:I

    if-eq v0, p1, :cond_0

    .line 3197
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAmbientIndicationBottomPadding:I

    const/4 p1, 0x1

    .line 3198
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateMaxDisplayedNotifications(Z)V

    :cond_0
    return-void
.end method

.method public setDozing(ZZLandroid/graphics/PointF;)V
    .locals 1

    .line 3161
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 3162
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDozing(Z)V

    .line 3163
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    .line 3164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setDozing(ZZLandroid/graphics/PointF;)V

    .line 3165
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    invoke-virtual {p3, v0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDozing(ZZ)V

    if-eqz p1, :cond_1

    .line 3168
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3171
    :cond_1
    iget p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 3172
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateDozingVisibilities(Z)V

    :cond_3
    if-eqz p1, :cond_4

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 3176
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setDozeAmount(FZ)V

    return-void
.end method

.method public setEmptyDragAmount(F)V
    .locals 0

    .line 3431
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;->setEmptyDragAmount(F)V

    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 1

    .line 2885
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpAnimatingAway:Z

    .line 2886
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setHeadsUpAnimatingAway(Z)V

    .line 2887
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeadsUpVisibility()V

    return-void
.end method

.method public setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 0

    .line 3263
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 2

    .line 2896
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    .line 2897
    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2898
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeadsUpCallback()Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    return-void
.end method

.method protected setHorizontalPanelTranslation(F)V
    .locals 2

    .line 2956
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setTranslationX(F)V

    .line 2957
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 2958
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mVerticalTranslationListener:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 2960
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mVerticalTranslationListener:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    .line 1022
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1023
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationArea(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setLaunchAffordanceListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 864
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceLaunchListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 2787
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method protected setOverExpansion(FZ)V
    .locals 3

    .line 2639
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConflictingQsExpansionGesture:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2642
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 2643
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 2645
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOverScrolledPixels(FZZ)V

    goto :goto_0

    .line 2648
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOverScrollAmount(FZZ)V

    .line 2651
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;

    .line 2652
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setPanelAlpha(IZ)V
    .locals 4

    .line 2847
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlpha:I

    if-eq v0, p1, :cond_1

    .line 2848
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlpha:I

    .line 2849
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaAnimator:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float v2, p1

    const/16 v3, 0xff

    if-ne p1, v3, :cond_0

    .line 2850
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaInPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaOutPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 2849
    :goto_0
    invoke-static {v0, v1, v2, p0, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    :cond_1
    return-void
.end method

.method public setPanelAlphaEndAction(Ljava/lang/Runnable;)V
    .locals 0

    .line 2856
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaEndAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setPanelScrimMinFraction(F)V
    .locals 0

    .line 3007
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelScrimMinFractionChanged(F)V

    return-void
.end method

.method public setPulsing(Z)V
    .locals 3

    .line 3180
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulsing:Z

    .line 3182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 3183
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 3185
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    .line 3189
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulsing:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-nez v1, :cond_2

    .line 3190
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    .line 3192
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setPulsing(ZZ)V

    return-void
.end method

.method public setQsExpansionEnabled(Z)V
    .locals 0

    .line 1282
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabled:Z

    .line 1283
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez p0, :cond_0

    return-void

    .line 1284
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QS;->setHeaderClickable(Z)V

    return-void
.end method

.method public setQsScrimEnabled(Z)V
    .locals 1

    .line 2803
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsScrimEnabled:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2804
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsScrimEnabled:Z

    if-eqz v0, :cond_1

    .line 2806
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsState()V

    :cond_1
    return-void
.end method

.method public setStatusAccessibilityImportance(I)V
    .locals 0

    .line 3211
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardStatusViewController;->setStatusAccessibilityImportance(I)V

    return-void
.end method

.method public setTouchAndAnimationDisabled(Z)V
    .locals 2

    .line 3146
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setTouchAndAnimationDisabled(Z)V

    if-eqz p1, :cond_0

    .line 3147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isSwipingInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionRunning:Z

    if-nez v0, :cond_0

    .line 3148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    .line 3150
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setAnimationsEnabled(Z)V

    return-void
.end method

.method public setTrackedHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2904
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->notifyListenersTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    const/4 p1, 0x1

    .line 2905
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    :cond_0
    return-void
.end method

.method public setUserSetupComplete(Z)V
    .locals 0

    .line 3226
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUserSetupComplete:Z

    .line 3227
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUserSetupComplete(Z)V

    return-void
.end method

.method protected shouldExpandToTopOfClearAll(F)Z
    .locals 2

    .line 2727
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->shouldExpandToTopOfClearAll(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2733
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2734
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->calculateAppearFraction(F)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p0, p0, p1

    if-ltz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected shouldExpandWhenNotFlinging()Z
    .locals 7

    .line 1588
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->shouldExpandWhenNotFlinging()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1591
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAllowExpandForSmallExpansion:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1594
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mDownTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x12c

    cmp-long p0, v3, v5

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    return v2
.end method

.method protected shouldGestureIgnoreXTouchSlop(FF)Z
    .locals 0

    .line 1754
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnAffordanceIcon(FF)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected shouldGestureWaitForTouchSlop()Z
    .locals 2

    .line 1745
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1746
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    return v1

    .line 1749
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method protected shouldUseDismissingAnimation()Z
    .locals 1

    .line 2740
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2741
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isTracking()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showTransientIndication(I)V
    .locals 0

    .line 3384
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method protected startUnlockHintAnimation()V
    .locals 1

    .line 2696
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2697
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onUnlockHintStarted()V

    .line 2698
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onUnlockHintFinished()V

    return-void

    .line 2701
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startUnlockHintAnimation()V

    return-void
.end method

.method public startWaitingForOpenPanelGesture()V
    .locals 3

    .line 1696
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1699
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    .line 1700
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    .line 1701
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onTrackingStarted()V

    .line 1702
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updatePanelExpanded()V

    return-void
.end method

.method public stopWaitingForOpenPanelGesture(ZF)V
    .locals 2

    .line 1720
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1721
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 1723
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->collapse(ZF)V

    goto :goto_1

    .line 1725
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->maybeVibrateOnOpening()V

    cmpl-float p1, p2, v1

    if-lez p1, :cond_1

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float/2addr p2, p1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const/4 p1, 0x1

    .line 1726
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->fling(FZ)V

    .line 1728
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onTrackingStopped(Z)V

    :cond_2
    return-void
.end method

.method protected updateExpandedHeight(F)V
    .locals 2

    .line 2965
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz v0, :cond_0

    .line 2966
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2967
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getCurrentExpandVelocity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setExpandingVelocity(F)V

    .line 2969
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2971
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getMaxPanelHeightNonBypass()I

    move-result p1

    int-to-float p1, p1

    .line 2973
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setExpandedHeight(F)V

    .line 2974
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateKeyguardBottomAreaAlpha()V

    .line 2975
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateBigClockAlpha()V

    .line 2976
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateStatusBarIcons()V

    return-void
.end method

.method protected updateHorizontalPanelPosition(F)V
    .locals 6

    .line 2930
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getWidth()F

    move-result v0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2931
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->resetHorizontalPanelPosition()V

    return-void

    .line 2934
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPositionMinSideMargin:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2935
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 2937
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 2938
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPositionMinSideMargin:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2939
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getWidth()F

    move-result v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    .line 2940
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2941
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getWidth()F

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 2942
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    .line 2944
    :cond_1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 2946
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getLeft()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2947
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getWidth()F

    move-result v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    sub-float/2addr p1, v0

    .line 2948
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setHorizontalPanelTranslation(F)V

    return-void
.end method

.method public updateNotificationViews(Ljava/lang/String;)V
    .locals 1

    .line 3327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateSectionBoundaries(Ljava/lang/String;)V

    .line 3328
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateFooter()V

    .line 3330
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->createVisibleEntriesList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateNotificationIcons(Ljava/util/List;)V

    return-void
.end method

.method protected updateQsExpansion()V
    .locals 3

    .line 2006
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_0

    return-void

    .line 2007
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result v0

    .line 2008
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getHeaderTranslation()F

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/qs/QS;->setQsExpansion(FF)V

    .line 2009
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->setQsExpansion(F)V

    .line 2010
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setQsExpansion(F)V

    .line 2011
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setQsExpansionFraction(F)V

    return-void
.end method

.method public updateResources()V
    .locals 5

    .line 868
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->qs_panel_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 869
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 870
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v0, :cond_0

    .line 871
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 872
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 875
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->notification_panel_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 876
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 877
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v0, :cond_1

    .line 878
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 879
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->ensureAllViewsHaveIds(Landroid/view/ViewGroup;)V

    .line 885
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 886
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 887
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, v2}, Lcom/android/systemui/util/Utils;->shouldUseSplitNotificationShade(Lcom/android/systemui/statusbar/FeatureFlags;Landroid/content/res/Resources;)Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x7

    if-eqz v1, :cond_2

    .line 888
    sget v1, Lcom/android/systemui/R$id;->qs_frame:I

    sget v4, Lcom/android/systemui/R$id;->qs_edge_guideline:I

    invoke-virtual {v0, v1, v3, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 889
    sget v1, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {v0, v1, v2, v4, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    goto :goto_0

    .line 893
    :cond_2
    sget v1, Lcom/android/systemui/R$id;->qs_frame:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 894
    sget v1, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {v0, v1, v2, v4, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 896
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method
