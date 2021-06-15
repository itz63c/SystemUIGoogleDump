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

.field private final mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

.field private final mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

.field private mClosingWithAlphaFadeOut:Z

.field private mCollapsedOnDown:Z

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;

.field private mConflictingQsExpansionGesture:Z

.field private final mConversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

.field private mDarkIconSize:I

.field private mDelayShowingKeyguardStatusBar:Z

.field private mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

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

.field private mExpandingFromHeadsUp:Z

.field private final mExpansionCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;

.field private mExpectingSynthesizedDown:Z

.field private final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mFalsingTapListener:Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;

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

.field private mHideIconsDuringLaunchAnimation:Z

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

.field private mKeyguarStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

.field private final mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mKeyguardHeadsUpShowingAmount:F

.field private mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mKeyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

.field private final mKeyguardQsUserSwitchComponentFactory:Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;

.field private mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

.field private mKeyguardQsUserSwitchEnabled:Z

.field private mKeyguardShowing:Z

.field private final mKeyguardStatusAreaClipBounds:Landroid/graphics/Rect;

.field private mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mKeyguardStatusBarAnimateAlpha:F

.field private final mKeyguardStatusBarViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;

.field private final mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

.field private mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

.field final mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mKeyguardUserSwitcherComponentFactory:Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;

.field private mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

.field private mKeyguardUserSwitcherEnabled:Z

.field private mLastCameraLaunchSource:Ljava/lang/String;

.field private mLastEventSynthesizedDown:Z

.field private mLastOrientation:I

.field private mLastOverscroll:F

.field private mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

.field private mLaunchingAffordance:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLinearDarkAmount:F

.field private mListenForHeadsUp:Z

.field private mLockIconViewController:Lcom/android/keyguard/LockIconViewController;

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

.field private mNotificationScrimPadding:I

.field private mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

.field private final mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field private mNotificationsHeaderCollideDistance:I

.field private mOldLayoutDirection:I

.field private final mOnClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;

.field private final mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;

.field private final mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;

.field private final mOnHeightChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;

.field private final mOnOverscrollTopChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;

.field private mOnStackYChanged:Ljava/lang/Runnable;

.field private mOnlyAffordanceInThisMotion:Z

.field private mPanelAlpha:I

.field private final mPanelAlphaAnimator:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private mPanelAlphaEndAction:Ljava/lang/Runnable;

.field private final mPanelAlphaInPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private final mPanelAlphaOutPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private mPanelExpanded:Z

.field private mPositionMinSideMargin:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mPrivacyDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

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

.field private final mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

.field private mScreenCornerRadius:I

.field private final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mScrimCornerRadius:I

.field private mSectionPadding:F

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mShelfHeight:I

.field private mShouldUseSplitNotificationShade:Z

.field private mShowIconsWhenExpanded:Z

.field private mShowingKeyguardHeadsUp:Z

.field private mSplitShadeNotificationsTopPadding:I

.field private mStackScrollerMeasuringPass:I

.field private mStackScrollerOverscrolling:Z

.field private final mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mStatusBarHeaderHeightKeyguard:I

.field private final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarMinHeight:I

.field final mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

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

.field private final mUiExecutor:Ljava/util/concurrent/Executor;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mUserManager:Landroid/os/UserManager;

.field private mUserSetupComplete:Z

.field private mVerticalTranslationListener:Ljava/lang/Runnable;

.field private final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field private final mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;


# direct methods
.method public static synthetic $r8$lambda$2mlPxY4twYXRiDyD-rIs7xaFgGs(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$8()V

    return-void
.end method

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

.method public static synthetic $r8$lambda$kayjlS5TR2QzlIDsaKEBvE-8UQs(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/util/Property;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$3(Landroid/util/Property;)V

    return-void
.end method

.method public static synthetic $r8$lambda$neqiVggc16PTt-QEB0KbOtUe13E(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$attachSplitShadeMediaPlayerContainer$7()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qLMq6QteYhlrGJofm1Y_1eJw5U4(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$flingSettings$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zo98q1KVSzi_TN9IAUt1lARnBWw(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$4()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 236
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    .line 237
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 247
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x168

    .line 248
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/content/res/Resources;Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;ILcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/logging/MetricsLogger;Landroid/app/ActivityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;Lcom/android/systemui/qs/QSDetailDisplayer;Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/os/UserManager;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/keyguard/LockIconViewController;Lcom/android/systemui/statusbar/FeatureFlags;Landroid/service/quickaccesswallet/QuickAccessWalletClient;Lcom/android/systemui/media/KeyguardMediaController;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Ljava/util/concurrent/Executor;)V
    .locals 16
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
            "Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;",
            "Lcom/android/systemui/qs/QSDetailDisplayer;",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            "Landroid/os/UserManager;",
            "Lcom/android/systemui/media/MediaDataManager;",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            "Lcom/android/systemui/statusbar/notification/stack/AmbientState;",
            "Lcom/android/keyguard/LockIconViewController;",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            "Landroid/service/quickaccesswallet/QuickAccessWalletClient;",
            "Lcom/android/systemui/media/KeyguardMediaController;",
            "Lcom/android/systemui/statusbar/events/PrivacyDotViewController;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p5

    move-object/from16 v15, p42

    move-object/from16 v11, p48

    .line 609
    move-object/from16 v5, p14

    check-cast v5, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 611
    invoke-interface/range {p27 .. p27}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    move-object/from16 v3, p15

    move-object/from16 v4, p13

    move-object/from16 v6, p18

    move-object/from16 v7, p32

    move-object/from16 v8, p19

    move-object/from16 v10, p28

    move-object v15, v11

    move-object/from16 v11, p46

    .line 609
    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/statusbar/phone/PanelViewController;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/internal/util/LatencyTracker;Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 192
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;

    .line 193
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;

    .line 194
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnOverscrollTopChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;

    .line 197
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 200
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;

    .line 203
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;

    .line 206
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeightListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;

    .line 207
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;

    .line 208
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;

    .line 210
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;

    .line 239
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda6;

    invoke-direct {v3, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda10;

    invoke-direct {v4, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    sget v5, Lcom/android/systemui/R$id;->keyguard_hun_animator_tag:I

    sget v6, Lcom/android/systemui/R$id;->keyguard_hun_animator_end_tag:I

    sget v7, Lcom/android/systemui/R$id;->keyguard_hun_animator_start_tag:I

    const-string v2, "KEYGUARD_HEADS_UP_SHOWING_AMOUNT"

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v0

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->KEYGUARD_HEADS_UP_SHOWING_AMOUNT:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 249
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const/4 v0, 0x1

    .line 362
    iput-boolean v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabled:Z

    const/4 v2, 0x0

    .line 371
    iput v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayCutoutTopInset:I

    .line 374
    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;-><init>()V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 377
    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;-><init>()V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .line 399
    iput-boolean v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsScrimEnabled:Z

    const/high16 v3, 0x3f800000    # 1.0f

    .line 403
    iput v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBarAnimateAlpha:F

    const/4 v3, -0x1

    .line 410
    iput v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOrientation:I

    const-string v3, "lockscreen_affordance"

    .line 417
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 419
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda4;

    invoke-direct {v3, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    .line 449
    new-instance v3, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 452
    iput-boolean v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHideIconsDuringLaunchAnimation:Z

    .line 454
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    .line 464
    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda7;

    sget-object v6, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda11;->INSTANCE:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda11;

    sget v7, Lcom/android/systemui/R$id;->panel_alpha_animator_tag:I

    sget v8, Lcom/android/systemui/R$id;->panel_alpha_animator_start_tag:I

    sget v9, Lcom/android/systemui/R$id;->panel_alpha_animator_end_tag:I

    const-string v4, "panelAlpha"

    invoke-static/range {v4 .. v9}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v3

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaAnimator:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 469
    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v5, 0x96

    .line 470
    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v4

    .line 471
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getProperty()Landroid/util/Property;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 470
    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v4

    iput-object v4, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaOutPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 472
    new-instance v4, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v7, 0xc8

    .line 473
    invoke-virtual {v4, v7, v8}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda9;

    invoke-direct {v5, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setAnimationEndAction(Ljava/util/function/Consumer;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v4

    .line 478
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getProperty()Landroid/util/Property;

    move-result-object v3

    sget-object v5, Lcom/android/systemui/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 477
    invoke-virtual {v4, v3, v5}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v3

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaInPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    const/4 v3, 0x0

    .line 501
    iput v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardHeadsUpShowingAmount:F

    .line 524
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusAreaClipBounds:Landroid/graphics/Rect;

    .line 534
    iput v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockScreenMode:I

    .line 537
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$2;

    invoke-direct {v3, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 557
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$3;

    invoke-direct {v3, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingTapListener:Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;

    .line 1915
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$8;

    invoke-direct {v3, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$8;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1948
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$10;

    invoke-direct {v3, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$10;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1968
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$11;

    invoke-direct {v3, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$11;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 2056
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda3;

    invoke-direct {v3, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnStackYChanged:Ljava/lang/Runnable;

    .line 3205
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;

    invoke-direct {v3, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    .line 613
    iput-object v13, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v3, p18

    .line 614
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    move-object/from16 v3, p50

    .line 615
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

    move-object/from16 v3, p51

    .line 616
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPrivacyDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    move-object/from16 v3, p24

    .line 617
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v3, p25

    .line 618
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v3, p26

    .line 619
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v3, p27

    .line 620
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFlingAnimationUtilsBuilder:Ljavax/inject/Provider;

    move-object/from16 v3, p30

    .line 621
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    move-object/from16 v3, p32

    .line 622
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v3, p33

    .line 623
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-object/from16 v3, p39

    .line 624
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    move-object/from16 v3, p40

    .line 625
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-object/from16 v3, p34

    .line 626
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

    move-object/from16 v3, p37

    .line 627
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBarViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;

    move-object/from16 v3, p45

    .line 628
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 629
    iput-object v15, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    move-object/from16 v3, p35

    .line 630
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchComponentFactory:Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;

    move-object/from16 v3, p36

    .line 631
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherComponentFactory:Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;

    move-object/from16 v3, p38

    .line 632
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQSDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    .line 633
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    const v4, 0x11100f8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherEnabled:Z

    if-eqz v3, :cond_0

    .line 635
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$bool;->config_keyguard_user_switch_opens_qs_details:I

    .line 636
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iput-boolean v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchEnabled:Z

    .line 638
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    .line 639
    invoke-static {v15, v3}, Lcom/android/systemui/util/Utils;->shouldUseSplitNotificationShade(Lcom/android/systemui/statusbar/FeatureFlags;Landroid/content/res/Resources;)Z

    move-result v3

    iput-boolean v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    .line 640
    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    move-object/from16 v3, p3

    .line 641
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v3, p8

    .line 642
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v3, p9

    .line 643
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v3, p20

    .line 644
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v3, p4

    .line 645
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-object/from16 v3, p21

    .line 646
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 647
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    const/16 v3, 0xff

    .line 648
    invoke-virtual {v12, v3, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setPanelAlpha(IZ)V

    move-object/from16 v3, p17

    .line 649
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move/from16 v3, p22

    .line 650
    iput v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayId:I

    .line 651
    iput-object v14, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-object/from16 v3, p16

    .line 652
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v3, p31

    .line 653
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-object/from16 v3, p42

    .line 654
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 655
    iget-boolean v4, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    xor-int/2addr v0, v4

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setClipsQsScrim(Z)V

    move-object/from16 v0, p43

    .line 656
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v0, p44

    .line 657
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    move-object/from16 v0, p49

    .line 658
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    move-object/from16 v0, p52

    .line 659
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUiExecutor:Ljava/util/concurrent/Executor;

    .line 660
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda5;

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v14, v0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setPulseExpandAbortListener(Ljava/lang/Runnable;)V

    .line 665
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    iput v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mThemeResId:I

    move-object/from16 v0, p7

    .line 666
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v3, p23

    .line 667
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 668
    invoke-virtual/range {p7 .. p7}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    iput-boolean v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFirstBypassAttempt:Z

    .line 670
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$4;

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$4;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 680
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 682
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$DynamicPrivacyControlListener;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$DynamicPrivacyControlListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    move-object/from16 v3, p6

    .line 684
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->addListener(Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 686
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 687
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v3, 0xa0

    .line 691
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 692
    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p10

    .line 693
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v0, p11

    .line 694
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v0, p12

    .line 695
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-object/from16 v0, p29

    .line 696
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    move-object/from16 v0, p41

    .line 697
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    move-object/from16 v0, p47

    .line 698
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockIconViewController:Lcom/android/keyguard/LockIconViewController;

    .line 700
    invoke-virtual {v13, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 701
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnAttachStateChangeListener;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnAttachStateChangeListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    .line 702
    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 703
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 704
    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 707
    :cond_1
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 713
    sget v0, Lcom/android/systemui/R$integer;->keyguard_max_notification_count:I

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMaxKeyguardNotifications:I

    .line 714
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onFinishInflate()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$10000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 169
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockScreenMode:I

    return p1
.end method

.method static synthetic access$10100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusViewController;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    return-object p0
.end method

.method static synthetic access$10200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;IZ)V
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setKeyguardBottomAreaVisibility(IZ)V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$10302(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$10400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateKeyguardStatusBarOut()V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateDozingVisibilities(Z)V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateMaxDisplayedNotifications(Z)V

    return-void
.end method

.method static synthetic access$10700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->maybeAnimateBottomAreaAlpha()V

    return-void
.end method

.method static synthetic access$10800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->resetHorizontalPanelPosition()V

    return-void
.end method

.method static synthetic access$10900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->positionClockAndNotifications()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    return-object p0
.end method

.method static synthetic access$11002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 169
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mEmptyDragAmount:F

    return p1
.end method

.method static synthetic access$11100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    return-object p0
.end method

.method static synthetic access$11200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;

    return-object p0
.end method

.method static synthetic access$11300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    return-object p0
.end method

.method static synthetic access$11400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingTapListener:Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;

    return-object p0
.end method

.method static synthetic access$11500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method static synthetic access$11600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setIsFullWidth(Z)V

    return-void
.end method

.method static synthetic access$11700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;II)V
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->startQsSizeChangeAnimation(II)V

    return-void
.end method

.method static synthetic access$11800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeader()V

    return-void
.end method

.method static synthetic access$11900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateMaxHeadsUpTranslation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFirstBypassAttempt:Z

    return p0
.end method

.method static synthetic access$12000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Runnable;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$12002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFirstBypassAttempt:Z

    return p1
.end method

.method static synthetic access$12500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 169
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOrientation:I

    return p0
.end method

.method static synthetic access$12502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 169
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$12602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 169
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayCutoutTopInset:I

    return p1
.end method

.method static synthetic access$12702(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 169
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDelayShowingKeyguardStatusBar:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDelayShowingKeyguardStatusBar:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 169
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    return p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 169
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;J)V
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateKeyguardStatusBarIn(J)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/VibratorHelper;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateKeyguardStatusBarForHeadsUp()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQSPulseExpansion()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/qs/QS;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-object p0
.end method

.method static synthetic access$2802(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/plugins/qs/QS;)Lcom/android/systemui/plugins/qs/QS;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 169
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBarAnimateAlpha:F

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Runnable;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeaderKeyguardAlpha()V

    return-void
.end method

.method static synthetic access$3302(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimatingQS:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;ZZ)V
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setListening(Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object p0
.end method

.method static synthetic access$3900()Landroid/graphics/Rect;
    .locals 1

    .line 169
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeightListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;

    return-object p0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabled:Z

    return p0
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    return p0
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerOverscrolling:Z

    return p0
.end method

.method static synthetic access$4402(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerOverscrolling:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockTouches:Z

    return p0
.end method

.method static synthetic access$4602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockTouches:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    return p0
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)V
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initDownStates(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/internal/logging/MetricsLogger;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 169
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownX:F

    return p0
.end method

.method static synthetic access$5200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 169
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownY:F

    return p0
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;FFF)Z
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->shouldQuickSettingsIntercept(FFF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/PulseExpansionHandler;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    return-object p0
.end method

.method static synthetic access$5500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsIntercept(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$5602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    return p0
.end method

.method static synthetic access$5800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    return p0
.end method

.method static synthetic access$5900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mListenForHeadsUp:Z

    return p0
.end method

.method static synthetic access$6000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    return p0
.end method

.method static synthetic access$6100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    return-object p0
.end method

.method static synthetic access$6200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnlyAffordanceInThisMotion:Z

    return p0
.end method

.method static synthetic access$6202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnlyAffordanceInThisMotion:Z

    return p1
.end method

.method static synthetic access$6300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->handleQsTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$6400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulsing:Z

    return p0
.end method

.method static synthetic access$6600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 169
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    return p0
.end method

.method static synthetic access$6602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 169
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    return p1
.end method

.method static synthetic access$6702(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->cancelQsAnimation()V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setOverScrolling(Z)V

    return-void
.end method

.method static synthetic access$7202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionFromOverscroll:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 169
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOverscroll:F

    return p0
.end method

.method static synthetic access$7302(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 169
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOverscroll:F

    return p1
.end method

.method static synthetic access$7400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsState()V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 169
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    return p0
.end method

.method static synthetic access$7502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 169
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    return p1
.end method

.method static synthetic access$7600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)V
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 169
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    return p0
.end method

.method static synthetic access$7800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Landroid/widget/FrameLayout;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$7900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 169
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    return p0
.end method

.method static synthetic access$7902(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 169
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    return p1
.end method

.method static synthetic access$8000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 169
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLinearDarkAmount:F

    return p0
.end method

.method static synthetic access$8002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 169
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLinearDarkAmount:F

    return p1
.end method

.method static synthetic access$8102(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionRunning:Z

    return p1
.end method

.method static synthetic access$8200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Runnable;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$8202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$8300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/classifier/FalsingCollector;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/String;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$8502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionFinished:Z

    return p1
.end method

.method static synthetic access$8602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    return p1
.end method

.method static synthetic access$8700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Runnable;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$8800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateNotificationTranslucency()V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateGestureExclusionRect()V

    return-void
.end method

.method static synthetic access$9002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpPinnedMode:Z

    return p1
.end method

.method static synthetic access$9100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeadsUpVisibility()V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$9300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 169
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    return p0
.end method

.method static synthetic access$9302(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 169
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    return p1
.end method

.method static synthetic access$9400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$9500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/String;
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$9600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 169
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNotificationTopPadding:I

    return p0
.end method

.method static synthetic access$9700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 169
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mThemeResId:I

    return p0
.end method

.method static synthetic access$9702(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 169
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mThemeResId:I

    return p1
.end method

.method static synthetic access$9800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->reInflateViews()V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object p0
.end method

.method private animateKeyguardStatusBarIn(J)V
    .locals 2

    .line 1959
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 1960
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1961
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1962
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1963
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1964
    sget-object p0, Lcom/android/systemui/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1965
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

    .line 1925
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

    .line 1926
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1927
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1928
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getKeyguardFadingAwayDelay()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 1927
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1931
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1932
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getShortenedFadingAwayDuration()J

    move-result-wide v1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x168

    .line 1936
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1938
    sget-object v1, Lcom/android/systemui/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1939
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1945
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private attachSplitShadeMediaPlayerContainer(Landroid/widget/FrameLayout;)V
    .locals 2

    .line 1025
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/media/KeyguardMediaController;->attachSplitShadeContainer(Landroid/view/ViewGroup;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private calculateGestureExclusionRect()Landroid/graphics/Rect;
    .locals 1

    .line 1067
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->calculateTouchableRegion()Landroid/graphics/Region;

    move-result-object v0

    .line 1068
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 1070
    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    .line 1072
    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->EMPTY_RECT:Landroid/graphics/Rect;

    :goto_1
    return-object p0
.end method

.method private calculateNotificationsTopPadding()F
    .locals 4

    .line 2134
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    .line 2135
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSplitShadeNotificationsTopPadding:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNotificationTopPadding:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    return p0

    .line 2137
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v1, :cond_3

    .line 2145
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardNotificationStaticPadding()I

    move-result v0

    .line 2146
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNotificationTopPadding:I

    add-int/2addr v1, v2

    .line 2147
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2149
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    int-to-float v1, v1

    .line 2150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result p0

    .line 2149
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    int-to-float p0, p0

    return p0

    .line 2151
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    .line 2153
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2154
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardNotificationStaticPadding()I

    move-result p0

    .line 2152
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_4
    if-eqz v0, :cond_5

    .line 2158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardNotificationStaticPadding()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNotificationTopPadding:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 2160
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result p0

    .line 2158
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0

    .line 2162
    :cond_5
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNotificationTopPadding:I

    int-to-float p0, p0

    add-float/2addr v0, p0

    return v0
.end method

.method private calculatePanelHeightQsExpanded()I
    .locals 4

    .line 2483
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2484
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2485
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getEmptyBottomMargin()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2486
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getTopPadding()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    .line 2491
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getNotGoneChildCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2492
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isShowingEmptyShadeView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2493
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getEmptyShadeViewHeight()F

    move-result v0

    .line 2495
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    .line 2497
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v2, :cond_1

    .line 2498
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNotificationTopPadding:I

    add-int/2addr v1, v2

    .line 2502
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_2

    .line 2503
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2506
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 2505
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2508
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getTopPaddingOverflow()F

    move-result v0

    add-float/2addr v2, v0

    .line 2509
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v2, v0

    if-lez v0, :cond_4

    int-to-float v0, v1

    .line 2511
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2512
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getLayoutMinHeight()F

    move-result v1

    add-float/2addr v0, v1

    .line 2513
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2514
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    move-result p0

    int-to-float p0, p0

    .line 2513
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    :cond_4
    float-to-int p0, v2

    return p0
.end method

.method private calculatePanelHeightShade()I
    .locals 3

    .line 2465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getEmptyBottomMargin()I

    move-result v0

    .line 2466
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    .line 2467
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getTopPaddingOverflow()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 2469
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2471
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 2472
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getExpandedClockPosition()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 2473
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardStatusViewController;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2474
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getIntrinsicContentHeight()I

    move-result p0

    add-int/2addr v1, p0

    .line 2475
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private calculateQsBottomPosition(F)I
    .locals 5

    .line 2109
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getHeaderTranslation()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v1

    add-int/2addr v0, v1

    float-to-double v1, p1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_0

    int-to-float v0, v0

    .line 2111
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 2112
    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result v1

    int-to-float v1, v1

    .line 2111
    invoke-static {v0, v1, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    float-to-int v0, p1

    .line 2115
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSectionPadding:F

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-lez p1, :cond_1

    int-to-float p1, v0

    add-float/2addr p1, p0

    float-to-int v0, p1

    :cond_1
    return v0
.end method

.method private canPanelCollapseOnQQS(FF)Z
    .locals 3

    .line 1565
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCollapsedOnDown:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1568
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v0

    .line 1569
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

    .line 1570
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

    .line 1286
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1288
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 1287
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

    .line 1292
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    .line 1295
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

    .line 1264
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->hasNoContentHeight()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1267
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1268
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->canShowRowOnLockscreen(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    .line 1270
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

    .line 2226
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 2227
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private computeMaxKeyguardNotifications()I
    .locals 13

    .line 1184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getMinStackScrollerPadding()F

    move-result v0

    .line 1185
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->notification_divider_height:I

    .line 1186
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x1

    .line 1185
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1188
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelfController;->getVisibility()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-ne v3, v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 1190
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationShelfController;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v3, v3

    .line 1193
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockIconViewController:Lcom/android/keyguard/LockIconViewController;

    invoke-virtual {v5}, Lcom/android/keyguard/LockIconViewController;->getTop()F

    move-result v5

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1194
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsEnrolled()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceEnrolled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1195
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayHeight()F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockIconViewController:Lcom/android/keyguard/LockIconViewController;

    invoke-virtual {v6}, Lcom/android/keyguard/LockIconViewController;->getTop()F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_1

    :cond_2
    move v5, v4

    .line 1198
    :goto_1
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIndicationBottomPadding:I

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAmbientIndicationBottomPadding:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    .line 1199
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 1201
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 1202
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v0

    sub-float/2addr v6, v3

    sub-float/2addr v6, v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 1206
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusViewController;->getLogoutButtonHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v6, v0

    const/4 v0, 0x0

    const/4 v5, 0x0

    move v7, v5

    move v8, v7

    .line 1210
    :goto_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildCount()I

    move-result v9

    if-ge v7, v9, :cond_d

    .line 1211
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v9, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildAt(I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v9

    .line 1212
    instance-of v10, v9, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v10, :cond_3

    goto :goto_5

    .line 1215
    :cond_3
    move-object v10, v9

    check-cast v10, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 1217
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    if-eqz v11, :cond_4

    .line 1219
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v12

    .line 1218
    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v11, v2

    goto :goto_3

    :cond_4
    move v11, v5

    :goto_3
    if-eqz v11, :cond_5

    goto :goto_5

    .line 1223
    :cond_5
    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->canShowViewOnLockscreen(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v11

    if-nez v11, :cond_6

    goto :goto_5

    .line 1226
    :cond_6
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_5

    .line 1229
    :cond_7
    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight(Z)I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v6, v10

    if-nez v8, :cond_8

    move v10, v4

    goto :goto_4

    :cond_8
    int-to-float v10, v1

    :goto_4
    sub-float/2addr v6, v10

    .line 1231
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 1232
    invoke-virtual {v10, v0, v9, v8}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->calculateGapHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)F

    move-result v0

    sub-float/2addr v6, v0

    cmpl-float v0, v6, v4

    if-ltz v0, :cond_a

    .line 1234
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMaxKeyguardNotifications:I

    const/4 v10, -0x1

    if-eq v0, v10, :cond_9

    if-ge v8, v0, :cond_a

    :cond_9
    add-int/lit8 v8, v8, 0x1

    move-object v0, v9

    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_a
    neg-float v0, v3

    cmpl-float v0, v6, v0

    if-lez v0, :cond_d

    .line 1239
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildCount()I

    move-result v0

    add-int/2addr v7, v2

    :goto_6
    if-ge v7, v0, :cond_c

    .line 1241
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildAt(I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v1

    .line 1242
    instance-of v3, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_b

    .line 1243
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->canShowViewOnLockscreen(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v1

    if-eqz v1, :cond_b

    return v8

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_c
    add-int/2addr v8, v2

    :cond_d
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

    .line 3420
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 3421
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 3422
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3423
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildAt(I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v2

    .line 3424
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    .line 3425
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

    .line 2120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2121
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_quick_settings_edit:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2122
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-eqz v0, :cond_1

    .line 2125
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_quick_settings:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2126
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2127
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_lock_screen:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2129
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

    .line 919
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 920
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 921
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 922
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

    .line 1602
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {v1}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_1

    .line 1603
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private flingQsWithCurrentVelocity(FZ)V
    .locals 4

    .line 1575
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getCurrentQSVelocity()F

    move-result v0

    .line 1576
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingExpandsQs(F)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1578
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v3}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isFalseTouch(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1581
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->logQsSwipeDown(F)V

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_3

    .line 1584
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/16 v3, 0xc

    invoke-interface {p1, v3}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    .line 1587
    :goto_2
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FI)V

    return-void
.end method

.method private getCurrentQSVelocity()F
    .locals 2

    .line 2218
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0x3e8

    .line 2221
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2222
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0
.end method

.method private getFadeoutAlpha()F
    .locals 4

    .line 2534
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 2537
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/4 p0, 0x0

    .line 2538
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 2539
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private getFalsingThreshold()I
    .locals 1

    .line 1858
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1859
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFalsingThreshold:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private getKeyguardContentsAlpha()F
    .locals 4

    .line 2607
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2612
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationsHeaderCollideDistance:I

    add-int/2addr v1, p0

    int-to-float p0, v1

    goto :goto_0

    .line 2618
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    :goto_0
    div-float/2addr v0, p0

    .line 2620
    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 2621
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private getKeyguardHeadsUpShowingAmount()F
    .locals 0

    .line 2978
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardHeadsUpShowingAmount:F

    return p0
.end method

.method private getKeyguardNotificationStaticPadding()I
    .locals 2

    .line 2171
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2174
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2175
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    return p0

    .line 2177
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpInset:I

    .line 2178
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isPulseExpanding()Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 2181
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    int-to-float v0, v0

    int-to-float v1, v1

    .line 2182
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2183
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->calculateAppearFractionBypass()F

    move-result p0

    .line 2182
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private getMaxPanelHeightBypass()I
    .locals 3

    .line 2390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 2391
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getExpandedClockPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 2392
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardStatusViewController;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 2393
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getVisibleNotificationCount()I

    move-result v1

    if-eqz v1, :cond_0

    int-to-float v0, v0

    .line 2394
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

    .line 2365
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarMinHeight:I

    .line 2366
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2367
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getNotGoneChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 2368
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getOverExpansionAmount()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 2369
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2372
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

    .line 2376
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculatePanelHeightShade()I

    move-result v1

    goto :goto_1

    .line 2374
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculatePanelHeightQsExpanded()I

    move-result v1

    .line 2378
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v0, :cond_4

    int-to-float v1, v0

    .line 2379
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2380
    :cond_4
    sget-object v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxPanelHeight is invalid. getOverExpansionAmount(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2381
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getOverExpansionAmount()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", calculatePanelHeightQsExpanded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2382
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculatePanelHeightQsExpanded()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", calculatePanelHeightShade: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2383
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

    .line 2380
    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0
.end method

.method private getQsExpansionFraction()F
    .locals 3

    .line 1617
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

    .line 1176
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

    .line 1714
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 1715
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    .line 1714
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1716
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v0}, Lcom/android/systemui/classifier/FalsingCollector;->onQsDown()V

    const/4 v0, 0x1

    .line 1717
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    .line 1718
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 1719
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 1720
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 1721
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 1724
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    :cond_0
    return-void
.end method

.method private handleQsTouch(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1643
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1644
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

    .line 1647
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    .line 1648
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    .line 1649
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConflictingQsExpansionGesture:Z

    .line 1650
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 1651
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 1652
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 1653
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 1655
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1656
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->handleQsDown(Landroid/view/MotionEvent;)V

    .line 1658
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    if-eqz v3, :cond_2

    .line 1659
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsTouch(Landroid/view/MotionEvent;)V

    .line 1660
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConflictingQsExpansionGesture:Z

    if-nez v3, :cond_2

    return v2

    :cond_2
    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_4

    .line 1665
    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConflictingQsExpansionGesture:Z

    :cond_4
    if-nez v0, :cond_5

    .line 1667
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_5

    .line 1668
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTwoFingerQsExpandPossible:Z

    .line 1670
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

    .line 1672
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string v0, "panel_open_qs"

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 1673
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    .line 1674
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setShouldShowShelfOnly(Z)V

    .line 1675
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    .line 1679
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setListening(Z)V

    :cond_6
    return v1
.end method

.method private initBottomArea()V
    .locals 4

    .line 1030
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 1031
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;Lcom/android/systemui/plugins/FalsingManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .line 1032
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAffordanceHelper(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    .line 1033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1034
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUserSetupComplete:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUserSetupComplete(Z)V

    .line 1035
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setFalsingManager(Lcom/android/systemui/plugins/FalsingManager;)V

    .line 1036
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQuickAccessWalletClient:Landroid/service/quickaccesswallet/QuickAccessWalletClient;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUiExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    .line 1037
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/FeatureFlags;->isQuickAccessWalletEnabled()Z

    move-result p0

    .line 1036
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initWallet(Landroid/service/quickaccesswallet/QuickAccessWalletClient;Ljava/util/concurrent/Executor;Z)V

    return-void
.end method

.method private initDownStates(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1534
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnlyAffordanceInThisMotion:Z

    .line 1535
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTouchAboveFalsingThreshold:Z

    .line 1536
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isDozing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozingOnDown:Z

    .line 1537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownX:F

    .line 1538
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownY:F

    .line 1539
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCollapsedOnDown:Z

    .line 1540
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownX:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownY:F

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->canPanelCollapseOnQQS(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsPanelCollapseOnQQS:Z

    .line 1541
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

    .line 1542
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAllowExpandForSmallExpansion:Z

    .line 1543
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlopExceededBeforeDown:Z

    if-eqz p1, :cond_1

    .line 1545
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    goto :goto_1

    .line 1548
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    goto :goto_1

    .line 1552
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    :goto_1
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .line 2211
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2212
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2214
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private isFalseTouch(I)Z
    .locals 1

    .line 1610
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isClassifierEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1611
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    move-result p0

    return p0

    .line 1613
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTouchAboveFalsingThreshold:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isForegroundApp(Ljava/lang/String;)Z
    .locals 3

    .line 3190
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    .line 3191
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

    .line 1685
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

    .line 1686
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getBottomMostNotificationBottom()F

    move-result p1

    cmpg-float p1, p2, p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 1687
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

    .line 3101
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

    .line 1691
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p0

    .line 1692
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

    .line 1700
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x40

    .line 1701
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

    .line 1706
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 1707
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

.method private synthetic lambda$attachSplitShadeMediaPlayerContainer$7()Ljava/lang/Boolean;
    .locals 0

    .line 1026
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$flingSettings$9(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 2288
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

    .line 241
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setKeyguardHeadsUpShowingAmount(F)V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Float;
    .locals 0

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardHeadsUpShowingAmount()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    const/4 v0, 0x0

    .line 420
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setHeadsUpAnimatingAway(Z)V

    .line 421
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/util/Property;)V
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaEndAction:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 475
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 0

    .line 661
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p0, :cond_0

    .line 662
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingOut()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 688
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    .line 689
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateKeyguardBottomAreaAlpha()V

    return-void
.end method

.method private synthetic lambda$new$8()V
    .locals 1

    .line 2057
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    .line 2058
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setNotificationBounds()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onFinishInflate$6(I)V
    .locals 1

    .line 777
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOldLayoutDirection:I

    if-eq p1, v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->onRtlPropertiesChanged()V

    .line 779
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOldLayoutDirection:I

    :cond_0
    return-void
.end method

.method private logQsSwipeDown(F)V
    .locals 4

    .line 1591
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getCurrentQSVelocity()F

    move-result v0

    .line 1594
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0xc1

    goto :goto_0

    :cond_0
    const/16 v1, 0xc2

    .line 1596
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    sub-float/2addr p1, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1597
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result v3

    div-float/2addr p1, v3

    float-to-int p1, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1598
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result p0

    div-float/2addr v0, p0

    float-to-int p0, v0

    .line 1596
    invoke-virtual {v2, v1, p1, p0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    return-void
.end method

.method private maybeAnimateBottomAreaAlpha()V
    .locals 2

    .line 1907
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1908
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1909
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1911
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    :goto_0
    return-void
.end method

.method private notifyListenersTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    const/4 v0, 0x0

    .line 2734
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2735
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    .line 2736
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onFinishInflate()V
    .locals 5

    .line 718
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->loadDimens()V

    .line 719
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_header:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 720
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->big_clock_container:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBigClockContainer:Landroid/view/ViewGroup;

    .line 725
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchEnabled:Z

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v2, Lcom/android/systemui/R$id;->keyguard_qs_user_switch_stub:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 728
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v2, Lcom/android/systemui/R$id;->keyguard_user_switcher_stub:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 731
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 735
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v3, Lcom/android/systemui/R$id;->keyguard_status_view:I

    .line 736
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardStatusView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 735
    invoke-direct {p0, v2, v1, v3, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateViewControllers(Lcom/android/keyguard/KeyguardStatusView;Lcom/android/systemui/statusbar/phone/UserAvatarView;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)V

    .line 740
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->notification_container_parent:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    .line 741
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 743
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->attach(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    .line 744
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    .line 746
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnOverscrollTopChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V

    .line 748
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V

    .line 750
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->addTrackingHeadsUpListener(Ljava/util/function/Consumer;)V

    .line 751
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_bottom_area:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 752
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOrientation:I

    .line 754
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initBottomArea()V

    .line 756
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setStackScroller(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    .line 757
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->qs_frame:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    .line 758
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setUp(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/PulseExpansionHandler$ExpansionCallback;Lcom/android/systemui/statusbar/phone/ShadeController;)V

    .line 760
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$5;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->addListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    .line 776
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setRtlChangeListener(Lcom/android/systemui/statusbar/phone/NotificationPanelView$RtlChangeListener;)V

    .line 783
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 784
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    if-eqz v0, :cond_2

    .line 785
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateResources()V

    :cond_2
    return-void
.end method

.method private onQsExpansionStarted()V
    .locals 1

    const/4 v0, 0x0

    .line 1869
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted(I)V

    return-void
.end method

.method private onQsIntercept(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1433
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1436
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    move v0, v1

    .line 1438
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1439
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    if-eq v3, v4, :cond_6

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    const/4 v0, 0x3

    if-eq v3, v0, :cond_6

    const/4 v0, 0x6

    if-eq v3, v0, :cond_1

    goto/16 :goto_0

    .line 1463
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1464
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    if-ne v2, v0, :cond_9

    .line 1466
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_2

    move v4, v1

    .line 1467
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    .line 1468
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 1469
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    goto/16 :goto_0

    .line 1474
    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    sub-float v3, v0, v3

    .line 1475
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1476
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    if-eqz v5, :cond_4

    .line 1481
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    add-float/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    .line 1482
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    return v4

    .line 1485
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getTouchSlop(Landroid/view/MotionEvent;)F

    move-result v5

    cmpl-float v5, v3, v5

    if-gtz v5, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getTouchSlop(Landroid/view/MotionEvent;)F

    move-result p1

    neg-float p1, p1

    cmpg-float p1, v3, p1

    if-gez p1, :cond_9

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz p1, :cond_9

    .line 1486
    :cond_5
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float p1, p1, v5

    if-lez p1, :cond_9

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 1487
    invoke-direct {p0, p1, v5, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->shouldQuickSettingsIntercept(FFF)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1488
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1489
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    .line 1490
    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    .line 1491
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 1492
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    .line 1493
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 1494
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 1495
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 1496
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->cancelLongPress()V

    return v4

    .line 1503
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1504
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    goto :goto_0

    .line 1443
    :cond_7
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 1444
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 1445
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initVelocityTracker()V

    .line 1446
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1447
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    const/4 v2, 0x0

    .line 1448
    invoke-direct {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->shouldQuickSettingsIntercept(FFF)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1452
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1454
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_9

    .line 1455
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 1456
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 1457
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    .line 1458
    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    .line 1459
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->cancelLongPress()V

    :cond_9
    :goto_0
    return v1
.end method

.method private onQsTouch(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1793
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1796
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    move v0, v1

    .line 1798
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 1799
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1800
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    sub-float v3, v2, v3

    .line 1802
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

    .line 1815
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1816
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    if-ne v2, v0, :cond_b

    .line 1818
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v5

    .line 1819
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 1820
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1821
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    .line 1822
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 1823
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 1824
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    goto :goto_4

    .line 1829
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    add-float/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    .line 1830
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getFalsingThreshold()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_4

    .line 1831
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTouchAboveFalsingThreshold:Z

    .line 1833
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_4

    .line 1838
    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    const/4 v3, -0x1

    .line 1839
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    .line 1840
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 1841
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_8

    .line 1842
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_6

    goto :goto_2

    .line 1847
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v0, :cond_7

    goto :goto_1

    :cond_7
    move v5, v1

    .line 1846
    :goto_1
    invoke-direct {p0, v1, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    goto :goto_3

    .line 1844
    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v0, :cond_9

    move v1, v5

    .line 1843
    :cond_9
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingQsWithCurrentVelocity(FZ)V

    .line 1849
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_b

    .line 1850
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 1851
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_4

    .line 1804
    :cond_a
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    .line 1805
    invoke-direct {p0, v5, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    .line 1806
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 1807
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 1808
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 1809
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 1810
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initVelocityTracker()V

    .line 1811
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    :cond_b
    :goto_4
    return-void
.end method

.method private positionClockAndNotifications()V
    .locals 25

    move-object/from16 v0, p0

    .line 1111
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isAddOrRemoveAnimationPending()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 1112
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

    .line 1114
    :goto_1
    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eq v5, v3, :cond_2

    .line 1115
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getUnlockedStackScrollerPadding()I

    move-result v4

    goto/16 :goto_6

    .line 1117
    :cond_2
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v11

    .line 1118
    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIndicationBottomPadding:I

    iget v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAmbientIndicationBottomPadding:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1119
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v6, v11}, Lcom/android/keyguard/KeyguardStatusViewController;->getClockPreferredY(I)I

    move-result v14

    .line 1120
    iget v15, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarHeaderHeightKeyguard:I

    .line 1121
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v20

    .line 1122
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 1123
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getVisibleNotificationCount()I

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {v6}, Lcom/android/systemui/media/MediaDataManager;->hasActiveMedia()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    move v13, v3

    .line 1124
    :goto_3
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v6, v13}, Lcom/android/keyguard/KeyguardStatusViewController;->setHasVisibleNotifications(Z)V

    .line 1125
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    if-eqz v6, :cond_5

    .line 1126
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->getUserIconHeight()I

    move-result v6

    move/from16 v17, v6

    goto :goto_4

    :cond_5
    const/16 v17, 0x0

    .line 1127
    :goto_4
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget v7, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarHeaderHeightKeyguard:I

    sub-int v8, v11, v5

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 1129
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getIntrinsicContentHeight()I

    move-result v9

    .line 1130
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result v10

    .line 1132
    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockScreenMode:I

    if-ne v5, v3, :cond_6

    .line 1133
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardStatusViewController;->getHeight()I

    move-result v5

    goto :goto_5

    .line 1134
    :cond_6
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

    :goto_5
    move v12, v5

    .line 1137
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->hasCustomClock()Z

    move-result v16

    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    move/from16 v18, v5

    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mEmptyDragAmount:F

    move/from16 v19, v5

    .line 1139
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getUnlockedStackScrollerPadding()I

    move-result v21

    .line 1140
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result v22

    iget v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayCutoutTopInset:I

    move/from16 v23, v5

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    .line 1142
    invoke-static {v5, v2}, Lcom/android/systemui/util/Utils;->shouldUseSplitNotificationShade(Lcom/android/systemui/statusbar/FeatureFlags;Landroid/content/res/Resources;)Z

    move-result v24

    move v2, v13

    move/from16 v13, v17

    move/from16 v17, v2

    .line 1127
    invoke-virtual/range {v6 .. v24}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->setup(IIIFIIIIIZZFFZIFIZ)V

    .line 1143
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V

    .line 1144
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v6, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    iget v7, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    iget v5, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    invoke-virtual {v2, v6, v7, v5, v4}, Lcom/android/keyguard/KeyguardStatusViewController;->updatePosition(IIFZ)V

    .line 1147
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    if-eqz v2, :cond_7

    .line 1148
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v6, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    iget v5, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->userSwitchY:I

    invoke-virtual {v2, v6, v5, v4}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->updatePosition(IIZ)V

    .line 1153
    :cond_7
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v2, :cond_8

    .line 1154
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v6, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    iget v5, v5, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->userSwitchY:I

    invoke-virtual {v2, v6, v5, v4}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->updatePosition(IIZ)V

    .line 1159
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateNotificationTranslucency()V

    .line 1160
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateClock()V

    .line 1161
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v4, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingExpanded:I

    .line 1163
    :goto_6
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setIntrinsicPadding(I)V

    .line 1164
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAntiBurnInOffsetX(I)V

    .line 1166
    iget v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    .line 1167
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    const/4 v1, 0x0

    .line 1168
    iput v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    .line 1169
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    return-void
.end method

.method private reInflateStub(IIIZ)Landroid/view/View;
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 930
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p2

    .line 931
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    if-eqz p4, :cond_0

    .line 933
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 934
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    move-object p1, p0

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 940
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    .line 941
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private reInflateViews()V
    .locals 7

    .line 949
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    sget v1, Lcom/android/systemui/R$id;->keyguard_status_view:I

    .line 950
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    .line 951
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 952
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v3, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    .line 953
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/android/systemui/R$layout;->keyguard_status_view:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    .line 955
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v3, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 956
    sget v2, Lcom/android/systemui/R$id;->status_view_media_container:I

    .line 957
    invoke-virtual {v0, v2}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 956
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->attachSplitShadeMediaPlayerContainer(Landroid/widget/FrameLayout;)V

    .line 960
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateResources()V

    .line 963
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v0

    .line 964
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchEnabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-nez v2, :cond_1

    .line 965
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherEnabled:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v5

    .line 969
    :goto_1
    sget v0, Lcom/android/systemui/R$id;->keyguard_qs_user_switch_view:I

    sget v2, Lcom/android/systemui/R$id;->keyguard_qs_user_switch_stub:I

    sget v6, Lcom/android/systemui/R$layout;->keyguard_qs_user_switch:I

    invoke-direct {p0, v0, v2, v6, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->reInflateStub(IIIZ)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    .line 974
    sget v2, Lcom/android/systemui/R$id;->keyguard_user_switcher_view:I

    sget v4, Lcom/android/systemui/R$id;->keyguard_user_switcher_stub:I

    sget v6, Lcom/android/systemui/R$layout;->keyguard_user_switcher:I

    .line 975
    invoke-direct {p0, v2, v4, v6, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->reInflateStub(IIIZ)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    .line 981
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 982
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardStatusView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateViewControllers(Lcom/android/keyguard/KeyguardStatusView;Lcom/android/systemui/statusbar/phone/UserAvatarView;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)V

    .line 986
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 987
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 988
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 989
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/android/systemui/R$layout;->keyguard_bottom_area:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 991
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initFrom(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 992
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 993
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initBottomArea()V

    .line 994
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationArea(Landroid/view/ViewGroup;)V

    .line 995
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 996
    invoke-interface {v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->getInterpolatedDozeAmount()F

    move-result v2

    .line 995
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->onDozeAmountChanged(FF)V

    .line 998
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_2

    .line 999
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->onThemeChanged()V

    .line 1002
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-virtual {v0, v1, v5, v5, v1}, Lcom/android/keyguard/KeyguardStatusViewController;->setKeyguardStatusViewVisibility(IZZI)V

    .line 1007
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    if-eqz v0, :cond_3

    .line 1008
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-virtual {v0, v1, v5, v5, v1}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->setKeyguardQsUserSwitchVisibility(IZZI)V

    .line 1014
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v0, :cond_4

    .line 1015
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-virtual {v0, v1, v5, v5, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setKeyguardUserSwitcherVisibility(IZZI)V

    .line 1021
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-direct {p0, v0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setKeyguardBottomAreaVisibility(IZ)V

    return-void
.end method

.method private resetHorizontalPanelPosition()V
    .locals 1

    const/4 v0, 0x0

    .line 3050
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setHorizontalPanelTranslation(F)V

    return-void
.end method

.method private setClosingWithAlphaFadeout(Z)V
    .locals 0

    .line 3016
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClosingWithAlphaFadeOut:Z

    .line 3017
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->forceNoOverlappingRendering(Z)V

    return-void
.end method

.method private setIsFullWidth(Z)V
    .locals 0

    .line 1076
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsFullWidth:Z

    .line 1077
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setIsFullWidth(Z)V

    return-void
.end method

.method private setKeyguardBottomAreaVisibility(IZ)V
    .locals 2

    .line 1976
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p2, :cond_0

    .line 1978
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 1979
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getKeyguardFadingAwayDelay()J

    move-result-wide v0

    .line 1978
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 1980
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getShortenedFadingAwayDuration()J

    move-result-wide v0

    .line 1979
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 1980
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 1981
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1982
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 1988
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 1985
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1986
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_1
    return-void
.end method

.method private setKeyguardHeadsUpShowingAmount(F)V
    .locals 0

    .line 2973
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardHeadsUpShowingAmount:F

    .line 2974
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeaderKeyguardAlpha()V

    return-void
.end method

.method private setLaunchingAffordance(Z)V
    .locals 1

    .line 3153
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLaunchingAffordance:Z

    .line 3154
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLaunchingAffordance(Z)V

    .line 3155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLaunchingAffordance(Z)V

    .line 3157
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setLaunchingAffordance(Z)V

    return-void
.end method

.method private setListening(Z)V
    .locals 1

    .line 2741
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setListening(Z)V

    .line 2742
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez p0, :cond_0

    return-void

    .line 2743
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QS;->setListening(Z)V

    return-void
.end method

.method private setNotificationBounds()V
    .locals 10

    .line 2072
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculateQsBottomPosition(F)I

    move-result v0

    .line 2073
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gtz v1, :cond_0

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 2075
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackY()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    .line 2076
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansionEnabled(Z)V

    .line 2078
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimCornerRadius:I

    .line 2079
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    if-nez v5, :cond_4

    .line 2080
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_3

    int-to-float v0, v0

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :cond_3
    float-to-int v3, v4

    .line 2082
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    .line 2083
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v2

    .line 2084
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    .line 2085
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScreenCornerRadius:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimCornerRadius:I

    int-to-float v7, v6

    int-to-float v8, v3

    int-to-float v6, v6

    div-float/2addr v8, v6

    const/high16 v6, 0x3f800000    # 1.0f

    .line 2086
    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 2085
    invoke-static {v5, v7, v6}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v5

    float-to-int v5, v5

    move v9, v4

    move v4, v2

    move v2, v5

    move v5, v9

    goto :goto_2

    :cond_4
    if-lez v0, :cond_5

    .line 2088
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSplitShadeNotificationsTopPadding:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2089
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    move-result v0

    .line 2090
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getLeft()I

    move-result v4

    .line 2091
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getRight()I

    move-result v5

    goto :goto_2

    :cond_5
    move v0, v3

    move v4, v0

    move v5, v4

    .line 2095
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v6, :cond_6

    .line 2096
    invoke-interface {v6, v3, v0, v2, v1}, Lcom/android/systemui/plugins/qs/QS;->setFancyClipping(IIIZ)V

    .line 2098
    :cond_6
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    if-nez v6, :cond_8

    .line 2100
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusAreaClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v4, v3, v5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2101
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    if-eqz v1, :cond_7

    .line 2102
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusAreaClipBounds:Landroid/graphics/Rect;

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 2101
    :goto_3
    invoke-virtual {v6, v1}, Lcom/android/keyguard/KeyguardStatusViewController;->setClipBounds(Landroid/graphics/Rect;)V

    .line 2104
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    int-to-float v4, v4

    int-to-float v3, v3

    int-to-float v5, v5

    int-to-float v0, v0

    invoke-virtual {v1, v4, v3, v5, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setNotificationsBounds(FFFF)V

    .line 2105
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimCornerRadius(I)V

    return-void
.end method

.method private setOverScrolling(Z)V
    .locals 0

    .line 1863
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerOverscrolling:Z

    .line 1864
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez p0, :cond_0

    return-void

    .line 1865
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QS;->setOverscrolling(Z)V

    return-void
.end method

.method private setQsExpansion(F)V
    .locals 10

    .line 2009
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 2010
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

    .line 2011
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

    .line 2013
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpanded(Z)V

    goto :goto_1

    :cond_1
    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_2

    .line 2014
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v0, :cond_2

    .line 2015
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpanded(Z)V

    .line 2017
    :cond_2
    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    .line 2018
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsExpansion()V

    .line 2019
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    .line 2020
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeaderKeyguardAlpha()V

    .line 2021
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-ne p1, v2, :cond_4

    .line 2022
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateKeyguardBottomAreaAlpha()V

    .line 2023
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->positionClockAndNotifications()V

    .line 2024
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateBigClockAlpha()V

    .line 2027
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2028
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 2031
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result p1

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 2032
    invoke-interface {p1}, Lcom/android/systemui/classifier/FalsingCollector;->shouldEnforceBouncer()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2033
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 2036
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v3, p1, :cond_8

    .line 2037
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/PanelExpansionListener;

    .line 2038
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    if-eqz v0, :cond_7

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    .line 2037
    :goto_3
    invoke-interface {p1, v1}, Lcom/android/systemui/statusbar/phone/PanelExpansionListener;->onQsExpansionChanged(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    return-void
.end method

.method private setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 878
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 879
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method private shouldQuickSettingsIntercept(FFF)Z
    .locals 5

    .line 2326
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCollapsedOnDown:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 2327
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 2330
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

    .line 2332
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    .line 2333
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

    .line 2334
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

    .line 2335
    :goto_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v2, :cond_6

    if-nez v0, :cond_4

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_5

    .line 2336
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

    .line 1081
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1082
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1083
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 1085
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    .line 1086
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1087
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1088
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$6;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$6;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1097
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$7;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$7;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1103
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private traceQsJank(ZZ)V
    .locals 2

    .line 1520
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz p1, :cond_0

    .line 1522
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 1525
    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    goto :goto_0

    .line 1527
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    :goto_0
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 0

    .line 2207
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private updateBigClockAlpha()V
    .locals 4

    .line 2672
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isUnlockHintRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x3f733333    # 0.95f

    .line 2673
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2671
    invoke-static {v0, v3, v1, v3, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    .line 2674
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result v1

    sub-float/2addr v3, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2675
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBigClockContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method private updateClock()V
    .locals 2

    .line 1302
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardStatusViewController;->setAlpha(F)V

    .line 1303
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    if-eqz v0, :cond_0

    .line 1304
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->setAlpha(F)V

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v0, :cond_1

    .line 1307
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private updateDozingVisibilities(Z)V
    .locals 2

    .line 2888
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDozing(ZZ)V

    .line 2889
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x168

    .line 2890
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateKeyguardStatusBarIn(J)V

    :cond_0
    return-void
.end method

.method private updateGestureExclusionRect()V
    .locals 2

    .line 1060
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculateGestureExclusionRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1061
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 1062
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1061
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method private updateHeader()V
    .locals 2

    .line 2564
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2565
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeaderKeyguardAlpha()V

    .line 2567
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsExpansion()V

    return-void
.end method

.method private updateHeaderKeyguardAlpha()V
    .locals 5

    .line 2626
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 2629
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v1, v0

    .line 2630
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardContentsAlpha()F

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBarAnimateAlpha:F

    mul-float/2addr v0, v2

    .line 2632
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardHeadsUpShowingAmount:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 2633
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 2635
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFirstBypassAttempt:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2636
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

    .line 2638
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_4

    .line 2639
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-nez p0, :cond_4

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    .line 2638
    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    return-void
.end method

.method private updateHeadsUpVisibility()V
    .locals 2

    .line 2988
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

    .line 2650
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isUnlockHintRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const v0, 0x3f733333    # 0.95f

    .line 2651
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2649
    invoke-static {v0, v3, v1, v3, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    .line 2652
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result v2

    sub-float/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 2653
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    mul-float/2addr v0, v2

    .line 2654
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAffordanceAlpha(F)V

    .line 2655
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 2658
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAmbientIndicationContainer()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 2660
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private updateKeyguardStatusBarForHeadsUp()V
    .locals 4

    .line 2958
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 2959
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2960
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShowingKeyguardHeadsUp:Z

    if-eq v2, v0, :cond_3

    .line 2961
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShowingKeyguardHeadsUp:Z

    .line 2962
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 2963
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->KEYGUARD_HEADS_UP_SHOWING_AMOUNT:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    if-eqz v0, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 2964
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 2963
    invoke-static {v2, p0, v3, v0, v1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    goto :goto_1

    .line 2967
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

    .line 1042
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->computeMaxKeyguardNotifications()I

    move-result p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMaxAllowedKeyguardNotifications:I

    .line 1045
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1046
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMaxAllowedKeyguardNotifications:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setMaxDisplayedNotifications(I)V

    goto :goto_0

    .line 1050
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setMaxDisplayedNotifications(I)V

    :goto_0
    return-void
.end method

.method private updateMaxHeadsUpTranslation()V
    .locals 2

    .line 2814
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2815
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getHeight()I

    move-result v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    .line 2814
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setHeadsUpBoundaries(II)V

    return-void
.end method

.method private updateNotificationTranslucency()V
    .locals 3

    .line 2521
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClosingWithAlphaFadeOut:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 2522
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2523
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getFadeoutAlpha()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2525
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 2526
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2527
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    mul-float/2addr v0, v1

    .line 2529
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setAlpha(F)V

    return-void
.end method

.method private updatePanelExpanded()V
    .locals 2

    .line 2455
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

    .line 2456
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelExpanded:Z

    if-eq v1, v0, :cond_2

    .line 2457
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setIsPanelExpanded(Z)V

    .line 2458
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->setPanelExpanded(Z)V

    .line 2459
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelExpanded(Z)V

    .line 2460
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelExpanded:Z

    :cond_2
    return-void
.end method

.method private updateQSPulseExpansion()V
    .locals 2

    .line 2199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_1

    .line 2200
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 2201
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2202
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isPulseExpanding()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2200
    :goto_0
    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QS;->setShowCollapsedOnKeyguard(Z)V

    :cond_1
    return-void
.end method

.method private updateQsState()V
    .locals 3

    .line 1993
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setQsExpanded(Z)V

    .line 1994
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionFromOverscroll:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setScrollingEnabled(Z)V

    .line 2000
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerOverscrolling:Z

    if-nez v1, :cond_2

    .line 2002
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    .line 2004
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_3

    return-void

    .line 2005
    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QS;->setExpanded(Z)V

    return-void
.end method

.method private updateStatusBarIcons()V
    .locals 3

    .line 3088
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isFullWidth()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3089
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

    .line 3091
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 3094
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShowIconsWhenExpanded:Z

    if-eq v0, v2, :cond_3

    .line 3095
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShowIconsWhenExpanded:Z

    .line 3096
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    :cond_3
    return-void
.end method

.method private updateViewControllers(Lcom/android/keyguard/KeyguardStatusView;Lcom/android/systemui/statusbar/phone/UserAvatarView;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)V
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

    .line 829
    invoke-interface {v0, p1}, Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;->build(Lcom/android/keyguard/KeyguardStatusView;)Lcom/android/keyguard/dagger/KeyguardStatusViewComponent;

    move-result-object p1

    .line 830
    invoke-interface {p1}, Lcom/android/keyguard/dagger/KeyguardStatusViewComponent;->getKeyguardStatusViewController()Lcom/android/keyguard/KeyguardStatusViewController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 831
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 833
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBarViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;

    .line 834
    invoke-interface {p1, p3}, Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;->build(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent;

    move-result-object p1

    .line 836
    invoke-interface {p1}, Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent;->getKeyguardStatusBarViewController()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguarStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 837
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 839
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 842
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    :cond_0
    const/4 p1, 0x0

    .line 845
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    .line 846
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 850
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchComponentFactory:Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;

    .line 851
    invoke-interface {p3, p2}, Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;->build(Lcom/android/systemui/statusbar/phone/UserAvatarView;)Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent;

    move-result-object p2

    .line 853
    invoke-interface {p2}, Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent;->getKeyguardQsUserSwitchController()Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    .line 854
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->setNotificationPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 855
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    invoke-virtual {p2}, Lcom/android/systemui/util/ViewController;->init()V

    .line 856
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcherEnabled(Z)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 858
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherComponentFactory:Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;

    .line 859
    invoke-interface {p2, p4}, Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;->build(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent;

    move-result-object p2

    .line 861
    invoke-interface {p2}, Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent;->getKeyguardUserSwitcherController()Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 862
    invoke-virtual {p2}, Lcom/android/systemui/util/ViewController;->init()V

    .line 863
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcherEnabled(Z)V

    goto :goto_0

    .line 865
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcherEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 3488
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

    .line 3339
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animateCloseQs(Z)V
    .locals 2

    .line 1373
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 1374
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsAnimatorExpand:Z

    if-nez v1, :cond_0

    return-void

    .line 1377
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    .line 1378
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1379
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 1381
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FI)V

    return-void
.end method

.method public animateToFullShade(J)V
    .locals 1

    .line 1312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->goToFullShade(J)V

    .line 1313
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    const/4 p1, 0x1

    .line 1314
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    return-void
.end method

.method public applyLaunchAnimationProgress(F)V
    .locals 4

    const-wide/16 v0, 0x52

    const-wide/16 v2, 0x64

    .line 3328
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->getProgress(FJJ)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3330
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHideIconsDuringLaunchAnimation:Z

    if-eq p1, v1, :cond_1

    .line 3331
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHideIconsDuringLaunchAnimation:Z

    if-nez p1, :cond_1

    .line 3333
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayId:I

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    :cond_1
    return-void
.end method

.method public blockExpansionForCurrentTouch()V
    .locals 1

    .line 3386
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    return-void
.end method

.method public canCameraGestureBeLaunched()Z
    .locals 3

    .line 3171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraAllowedByAdmin()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3175
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->resolveCameraIntent()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3178
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3179
    :cond_1
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 3180
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isForegroundApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .line 3181
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isSwipingInProgress()Z

    move-result p0

    if-nez p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method protected canCollapsePanelOnTouch()Z
    .locals 2

    .line 2344
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isInSettings()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-ne v0, v1, :cond_0

    return v1

    .line 2348
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isScrolledToBottom()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 2352
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isInSettings()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsPanelCollapseOnQQS:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public cancelAnimation()V
    .locals 0

    .line 1362
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public clearNotificationEffects()V
    .locals 0

    .line 3109
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotificationEffects()V

    return-void
.end method

.method public closeQs()V
    .locals 1

    .line 1357
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->cancelQsAnimation()V

    .line 1358
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    return-void
.end method

.method public closeQsDetail()V
    .locals 0

    .line 2872
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->closeDetail()V

    return-void
.end method

.method public closeUserSwitcherIfOpen()Z
    .locals 1

    .line 3633
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 3634
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public collapse(ZF)V
    .locals 2

    .line 1345
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->canPanelBeCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1349
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1350
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    .line 1351
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setShouldShowShelfOnly(Z)V

    .line 1353
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->collapse(ZF)V

    return-void
.end method

.method public createLayoutChangeListener()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;
    .locals 2

    .line 3513
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    return-object v0
.end method

.method public bridge synthetic createLayoutChangeListener()Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;
    .locals 0

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->createLayoutChangeListener()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;

    move-result-object p0

    return-object p0
.end method

.method protected createOnConfigurationChangedListener()Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;
    .locals 2

    .line 3617
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    return-object v0
.end method

.method public createRemoteInputDelegate()Lcom/android/systemui/statusbar/RemoteInputController$Delegate;
    .locals 0

    .line 3403
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->createDelegate()Lcom/android/systemui/statusbar/RemoteInputController$Delegate;

    move-result-object p0

    return-object p0
.end method

.method protected createTouchHandler()Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;
    .locals 1

    .line 3522
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-object v0
.end method

.method public dozeTimeTick()V
    .locals 2

    .line 3300
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->dozeTimeTick()V

    .line 3301
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusViewController;->dozeTimeTick()V

    .line 3302
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 3303
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->positionClockAndNotifications()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 3391
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3392
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

    .line 3393
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz p0, :cond_0

    .line 3394
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public expand(Z)V
    .locals 0

    .line 2748
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->expand(Z)V

    const/4 p1, 0x1

    .line 2749
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setListening(Z)V

    return-void
.end method

.method public expandWithQs()V
    .locals 2

    .line 1385
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1386
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    .line 1387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setShouldShowShelfOnly(Z)V

    .line 1389
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1390
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expand(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1392
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    const/4 v1, 0x0

    .line 1393
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FI)V

    :goto_0
    return-void
.end method

.method public expandWithQsDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1398
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    const/4 v0, 0x0

    .line 1399
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FI)V

    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQSDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    invoke-virtual {v0, p1, v1, v1}, Lcom/android/systemui/qs/QSDetailDisplayer;->showDetailAdapter(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    .line 1401
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1402
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public expandWithoutQs()V
    .locals 2

    .line 1407
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsExpanded()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1408
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FI)V

    goto :goto_0

    .line 1410
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expand(Z)V

    :goto_0
    return-void
.end method

.method public fadeOut(JJLjava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    .line 3478
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

    sget-object p1, Lcom/android/systemui/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 3479
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

    .line 1416
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;

    .line 1420
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->fling(FZ)V

    return-void
.end method

.method protected flingExpands(FFFF)Z
    .locals 0

    .line 1769
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->flingExpands(FFFF)Z

    move-result p1

    .line 1772
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

    .line 2235
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FILjava/lang/Runnable;Z)V

    return-void
.end method

.method protected flingSettings(FILjava/lang/Runnable;Z)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    .line 2259
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->closeDetail()V

    move v2, v0

    goto :goto_1

    .line 2255
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    goto :goto_0

    .line 2252
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    :goto_0
    int-to-float v2, v2

    .line 2262
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    cmpl-float v4, v2, v3

    const/4 v5, 0x0

    if-nez v4, :cond_4

    if-eqz p3, :cond_2

    .line 2264
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    move v1, v5

    .line 2266
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

    .line 2277
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    if-eqz p4, :cond_9

    .line 2279
    sget-object p1, Lcom/android/systemui/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x170

    .line 2280
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_5

    .line 2282
    :cond_9
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    invoke-virtual {p4, v3, v4, v2, p1}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    :goto_5
    if-eqz v0, :cond_a

    const-wide/16 v4, 0x15e

    .line 2285
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2287
    :cond_a
    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2290
    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Ljava/lang/Runnable;)V

    invoke-virtual {v3, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2316
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimatingQS:Z

    .line 2317
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 2318
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 2319
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsAnimatorExpand:Z

    return-void
.end method

.method protected flingToHeight(FZFFZ)V
    .locals 2

    .line 1426
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->notifyFling(Z)V

    .line 1427
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    xor-int/lit8 v1, p2, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->notifyPanelFlingStart(Z)V

    if-nez p2, :cond_0

    .line 1428
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

    .line 1429
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->flingToHeight(FZFFZ)V

    return-void
.end method

.method public getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .locals 0

    .line 3441
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p0

    return-object p0
.end method

.method protected getHeaderTranslation()F
    .locals 4

    .line 2571
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2572
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    return p0

    .line 2574
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    .line 2575
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->calculateAppearFraction(F)F

    move-result v0

    .line 2576
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    neg-float v2, v1

    .line 2577
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-nez v3, :cond_1

    neg-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v2, v1

    .line 2581
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2582
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isPulseExpanding()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2583
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    .line 2584
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->getLeavingLockscreen()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 2589
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2590
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->calculateAppearFractionBypass()F

    move-result v0

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v3

    .line 2595
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float v2, p0

    :cond_4
    const/high16 p0, 0x3f800000    # 1.0f

    .line 2597
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v2, v3, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    .line 2598
    invoke-static {v3, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 3500
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    .locals 0

    .line 3319
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    return-object p0
.end method

.method protected getMaxPanelHeight()I
    .locals 2

    .line 2357
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2358
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getMaxPanelHeightBypass()I

    move-result p0

    return p0

    .line 2360
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getMaxPanelHeightNonBypass()I

    move-result p0

    return p0
.end method

.method public getNotificationStackScrollLayoutController()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;
    .locals 0

    .line 3621
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    return-object p0
.end method

.method public getOnHeadsUpChangedListener()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;
    .locals 0

    .line 3496
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;

    return-object p0
.end method

.method protected getOpeningHeight()F
    .locals 0

    .line 1638
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getOpeningHeight()F

    move-result p0

    return p0
.end method

.method protected getOverExpansionAmount()F
    .locals 2

    .line 2545
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v0, 0x1

    .line 2546
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getCurrentOverScrollAmount(Z)F

    move-result p0

    .line 2547
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2548
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    const-string v1, "OverExpansionAmount is NaN!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return p0
.end method

.method protected getOverExpansionPixels()F
    .locals 1

    .line 2556
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v0, 0x1

    .line 2557
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getCurrentOverScrolledPixels(Z)F

    move-result p0

    return p0
.end method

.method public hasCustomClock()Z
    .locals 0

    .line 873
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->hasCustomClock()Z

    move-result p0

    return p0
.end method

.method public hasPulsingNotifications()Z
    .locals 0

    .line 3436
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 3437
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getNotificationListContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->hasPulsingNotifications()Z

    move-result p0

    return p0
.end method

.method public hideStatusBarIconsWhenExpanded()Z
    .locals 2

    .line 3195
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mIsLaunchAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 3196
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHideIconsDuringLaunchAnimation:Z

    return p0

    .line 3198
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3199
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3202
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

    .line 3462
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 3463
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setNotificationPanelController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 3464
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setShelfController(Lcom/android/systemui/statusbar/NotificationShelfController;)V

    .line 3465
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    const/4 p1, 0x1

    .line 3466
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateMaxDisplayedNotifications(Z)V

    return-void
.end method

.method public isDozing()Z
    .locals 0

    .line 2896
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    return p0
.end method

.method public isExpanding()Z
    .locals 0

    .line 2404
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    return p0
.end method

.method public isFullWidth()Z
    .locals 0

    .line 3082
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsFullWidth:Z

    return p0
.end method

.method protected isInContentBounds(FF)Z
    .locals 3

    .line 1512
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getX()F

    move-result v0

    .line 1513
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    sub-float v2, p1, v0

    .line 1514
    invoke-virtual {v1, v2, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isBelowLastNotification(FF)Z

    move-result p2

    if-nez p2, :cond_0

    cmpg-float p2, v0, p1

    if-gez p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 1516
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

    .line 2400
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    return p0
.end method

.method public isLaunchTransitionFinished()Z
    .locals 0

    .line 2876
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionFinished:Z

    return p0
.end method

.method public isLaunchTransitionRunning()Z
    .locals 0

    .line 2880
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionRunning:Z

    return p0
.end method

.method public isLaunchingAffordanceWithPreview()Z
    .locals 1

    .line 3164
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

    .line 3114
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

    .line 2868
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->isShowingDetail()Z

    move-result p0

    return p0
.end method

.method public isQsExpanded()Z
    .locals 0

    .line 2864
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    return p0
.end method

.method protected isTrackingBlocked()Z
    .locals 1

    .line 2860
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

    .line 3120
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo p2, "wiggle_gesture"

    .line 3122
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    const-string p2, "lift_to_launch_ml"

    .line 3124
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p2, "lockscreen_affordance"

    .line 3128
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 3134
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_3

    .line 3135
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setLaunchingAffordance(Z)V

    goto :goto_1

    :cond_3
    move p1, v1

    .line 3139
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

    .line 3140
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 3141
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result p0

    if-ne p0, v0, :cond_5

    goto :goto_3

    :cond_5
    move v0, v1

    .line 3140
    :goto_3
    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->launchAffordance(ZZ)V

    return-void
.end method

.method protected loadDimens()V
    .locals 3

    .line 791
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->loadDimens()V

    .line 792
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFlingAnimationUtilsBuilder:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    const v1, 0x3ecccccd    # 0.4f

    .line 793
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->setMaxLengthSeconds(F)Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->build()Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 794
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    const v1, 0x1050270

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarMinHeight:I

    .line 796
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->status_bar_header_height_keyguard:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarHeaderHeightKeyguard:I

    .line 798
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->qs_peek_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsPeekHeight:I

    .line 799
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->header_notifications_collide_distance:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationsHeaderCollideDistance:I

    .line 801
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->loadDimens(Landroid/content/res/Resources;)V

    .line 802
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->qs_falsing_threshold:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFalsingThreshold:I

    .line 803
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->notification_panel_min_side_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPositionMinSideMargin:I

    .line 805
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_indication_bottom_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIndicationBottomPadding:I

    .line 807
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->qs_notification_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsNotificationTopPadding:I

    .line 809
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->notification_shelf_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShelfHeight:I

    .line 810
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->status_bar_icon_drawing_size_dark:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDarkIconSize:I

    .line 811
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 813
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->heads_up_status_bar_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpInset:I

    .line 815
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->notification_scrim_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimCornerRadius:I

    .line 817
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    const v1, 0x1050255

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScreenCornerRadius:I

    .line 819
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->notification_side_paddings:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationScrimPadding:I

    return-void
.end method

.method public onAffordanceLaunchEnded()V
    .locals 1

    const/4 v0, 0x0

    .line 3145
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setLaunchingAffordance(Z)V

    return-void
.end method

.method public onBouncerPreHideAnimation()V
    .locals 4

    .line 3360
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v1}, Lcom/android/keyguard/KeyguardStatusViewController;->setKeyguardStatusViewVisibility(IZZI)V

    .line 3365
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    if-eqz v0, :cond_0

    .line 3366
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-virtual {v0, v1, v2, v3, v1}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->setKeyguardQsUserSwitchVisibility(IZZI)V

    .line 3372
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v0, :cond_1

    .line 3373
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-virtual {v0, p0, v2, v3, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setKeyguardUserSwitcherVisibility(IZZI)V

    :cond_1
    return-void
.end method

.method protected onClosingFinished()V
    .locals 1

    .line 3009
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onClosingFinished()V

    .line 3010
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->resetHorizontalPanelPosition()V

    const/4 v0, 0x0

    .line 3011
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setClosingWithAlphaFadeout(Z)V

    .line 3012
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaHierarchyManager;->closeGuts()V

    return-void
.end method

.method protected onExpandingFinished()V
    .locals 3

    .line 2698
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onExpandingFinished()V

    .line 2699
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->onExpansionStopped()V

    .line 2700
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->onExpandingFinished()V

    .line 2701
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->onNotificationPanelExpandStateChanged(Z)V

    const/4 v0, 0x0

    .line 2702
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    .line 2703
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->setCollapsingShadeFromQS(Z)V

    .line 2704
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/media/MediaHierarchyManager;->setQsExpanded(Z)V

    .line 2705
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2706
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$13;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 2716
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$14;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$14;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2723
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setListening(Z)V

    .line 2725
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    .line 2726
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setShouldShowShelfOnly(Z)V

    .line 2727
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTwoFingerQsExpandPossible:Z

    const/4 v1, 0x0

    .line 2728
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->notifyListenersTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 2729
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    const/4 v0, 0x0

    .line 2730
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setPanelScrimMinFraction(F)V

    return-void
.end method

.method protected onExpandingStarted()V
    .locals 3

    .line 2680
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onExpandingStarted()V

    .line 2681
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->onExpansionStarted()V

    const/4 v0, 0x1

    .line 2682
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    .line 2683
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandedWhenExpandingStarted:Z

    .line 2684
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

    .line 2687
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v1, :cond_1

    .line 2688
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 2692
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez p0, :cond_2

    return-void

    .line 2693
    :cond_2
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/qs/QS;->setHeaderListening(Z)V

    return-void
.end method

.method protected onHeightUpdated(F)V
    .locals 4

    .line 2409
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v0, :cond_2

    .line 2414
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 2417
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->positionClockAndNotifications()V

    .line 2420
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

    .line 2423
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v0, :cond_4

    .line 2426
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    goto :goto_1

    .line 2431
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2432
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getIntrinsicPadding()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2433
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getLayoutMinHeight()F

    move-result v1

    add-float/2addr v0, v1

    .line 2434
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculatePanelHeightQsExpanded()I

    move-result v1

    int-to-float v1, v1

    sub-float v2, p1, v0

    sub-float/2addr v1, v0

    div-float v0, v2, v1

    .line 2440
    :goto_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v2, v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float/2addr v0, v1

    add-float/2addr v2, v0

    .line 2442
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    .line 2444
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateExpandedHeight(F)V

    .line 2445
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeader()V

    .line 2446
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateNotificationTranslucency()V

    .line 2447
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updatePanelExpanded()V

    .line 2448
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateGestureExclusionRect()V

    return-void
.end method

.method protected onMiddleClicked()Z
    .locals 4

    .line 2913
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return v2

    .line 2928
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez v0, :cond_1

    .line 2929
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0, v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    :cond_1
    return v2

    .line 2915
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozingOnDown:Z

    if-nez v0, :cond_4

    .line 2916
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2917
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth()V

    goto :goto_0

    .line 2919
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v3, 0xbc

    invoke-virtual {v0, v3, v1, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 2921
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    sget-object v1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_LOCK_SHOW_HINT:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 2922
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->log(Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;)V

    .line 2923
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->startUnlockHintAnimation()V

    :cond_4
    :goto_0
    return v2

    .line 2936
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method protected onQsExpansionStarted(I)V
    .locals 1

    .line 1873
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->cancelQsAnimation()V

    .line 1874
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 1877
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 1878
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    .line 1879
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    .line 1880
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->checkSnoozeLeavebehind()V

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    .line 1885
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->requestFaceAuth()V

    :cond_0
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 0

    .line 2908
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->dozeTimeTick()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    .line 3508
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->onThemeChanged()V

    return-void
.end method

.method protected onTrackingStarted()V
    .locals 3

    .line 2782
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/android/systemui/classifier/FalsingCollector;->onTrackingStarted(Z)V

    .line 2783
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStarted()V

    .line 2784
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-eqz v0, :cond_0

    .line 2785
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    .line 2786
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    if-nez v0, :cond_0

    .line 2787
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setShouldShowShelfOnly(Z)V

    .line 2790
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2791
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->animateHideLeftRightIcon()V

    .line 2793
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->onPanelTrackingStarted()V

    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 3

    .line 2798
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v0}, Lcom/android/systemui/classifier/FalsingCollector;->onTrackingStopped()V

    .line 2799
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStopped(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2801
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOverScrolledPixels(FZZ)V

    .line 2804
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->onPanelTrackingStopped()V

    if-eqz p1, :cond_2

    .line 2805
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 2807
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-nez p1, :cond_2

    .line 2808
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    :cond_2
    return-void
.end method

.method protected onUnlockHintFinished()V
    .locals 1

    .line 2830
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onUnlockHintFinished()V

    .line 2831
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setUnlockHintRunning(Z)V

    return-void
.end method

.method protected onUnlockHintStarted()V
    .locals 1

    .line 2836
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onUnlockHintStarted()V

    .line 2837
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setUnlockHintRunning(Z)V

    return-void
.end method

.method public onUpdateRowStates()V
    .locals 0

    .line 3432
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->onUpdateRowStates()V

    return-void
.end method

.method public removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 3492
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

    .line 3343
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected requestScrollerTopPaddingUpdate(Z)V
    .locals 2

    .line 2189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculateNotificationsTopPadding()F

    move-result v1

    .line 2189
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateTopPadding(FZ)V

    .line 2191
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2193
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsExpansion()V

    :cond_0
    return-void
.end method

.method public resetViewGroupFade()V
    .locals 0

    .line 3484
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper;->reset(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public resetViews(Z)V
    .locals 8

    const/4 v0, 0x0

    .line 1325
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionFinished:Z

    .line 1326
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockTouches:Z

    .line 1327
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLaunchingAffordance:Z

    if-nez v1, :cond_0

    .line 1328
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    const-string v0, "lockscreen_affordance"

    .line 1329
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 1331
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

    .line 1334
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateCloseQs(Z)V

    goto :goto_0

    .line 1336
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->closeQs()V

    .line 1338
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v2, 0x0

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOverScrollAmount(FZZZ)V

    .line 1340
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->resetScrollPosition()V

    return-void
.end method

.method public runAfterAnimationFinished(Ljava/lang/Runnable;)V
    .locals 0

    .line 3449
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 0

    .line 3445
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 3474
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public setAmbientIndicationBottomPadding(I)V
    .locals 1

    .line 3293
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAmbientIndicationBottomPadding:I

    if-eq v0, p1, :cond_0

    .line 3294
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAmbientIndicationBottomPadding:I

    const/4 p1, 0x1

    .line 3295
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateMaxDisplayedNotifications(Z)V

    :cond_0
    return-void
.end method

.method public setDozing(ZZLandroid/graphics/PointF;)V
    .locals 1

    .line 3258
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 3259
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDozing(Z)V

    .line 3260
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    .line 3261
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setDozing(ZZLandroid/graphics/PointF;)V

    .line 3262
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    invoke-virtual {p3, v0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDozing(ZZ)V

    if-eqz p1, :cond_1

    .line 3265
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3268
    :cond_1
    iget p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 3269
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateDozingVisibilities(Z)V

    :cond_3
    if-eqz p1, :cond_4

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 3273
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-interface {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setAndInstrumentDozeAmount(Landroid/view/View;FZ)V

    return-void
.end method

.method public setEmptyDragAmount(F)V
    .locals 0

    .line 3517
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpansionCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ExpansionCallback;->setEmptyDragAmount(F)V

    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 1

    .line 2982
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpAnimatingAway:Z

    .line 2983
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setHeadsUpAnimatingAway(Z)V

    .line 2984
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeadsUpVisibility()V

    return-void
.end method

.method public setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 0

    .line 3352
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 2

    .line 2993
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    .line 2994
    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2995
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeadsUpCallback()Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    return-void
.end method

.method protected setHorizontalPanelTranslation(F)V
    .locals 1

    .line 3054
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setTranslationX(F)V

    .line 3055
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 3056
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mVerticalTranslationListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 3057
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    .line 1055
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1056
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationArea(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 2884
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method protected setOverExpansion(FZ)V
    .locals 3

    .line 2763
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConflictingQsExpansionGesture:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2766
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 2767
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 2769
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOverScrolledPixels(FZZ)V

    goto :goto_0

    .line 2772
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOverScrollAmount(FZZ)V

    .line 2775
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;

    .line 2776
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setPanelAlpha(IZ)V
    .locals 4

    .line 2944
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlpha:I

    if-eq v0, p1, :cond_1

    .line 2945
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlpha:I

    .line 2946
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaAnimator:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float v2, p1

    const/16 v3, 0xff

    if-ne p1, v3, :cond_0

    .line 2947
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaInPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaOutPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 2946
    :goto_0
    invoke-static {v0, v1, v2, p0, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    :cond_1
    return-void
.end method

.method public setPanelAlphaEndAction(Ljava/lang/Runnable;)V
    .locals 0

    .line 2953
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaEndAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setPanelScrimMinFraction(F)V
    .locals 0

    .line 3105
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelScrimMinFractionChanged(F)V

    return-void
.end method

.method public setPulsing(Z)V
    .locals 3

    .line 3277
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulsing:Z

    .line 3279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 3280
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

    .line 3282
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    .line 3286
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulsing:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-nez v1, :cond_2

    .line 3287
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    .line 3289
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setPulsing(ZZ)V

    return-void
.end method

.method setQsExpanded(Z)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1890
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1892
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    .line 1893
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsState()V

    .line 1894
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    .line 1895
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v0, p1}, Lcom/android/systemui/classifier/FalsingCollector;->setQsExpanded(Z)V

    .line 1896
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setQsExpanded(Z)V

    .line 1897
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setQsExpanded(Z)V

    .line 1898
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setQsExpanded(Z)V

    .line 1899
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setQSExpanded(Z)V

    .line 1900
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setQsExpanded(Z)V

    .line 1901
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockIconViewController:Lcom/android/keyguard/LockIconViewController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/LockIconViewController;->setQsExpanded(Z)V

    .line 1902
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPrivacyDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setQsExpanded(Z)V

    :cond_1
    return-void
.end method

.method public setQsExpansionEnabled(Z)V
    .locals 0

    .line 1318
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabled:Z

    .line 1319
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez p0, :cond_0

    return-void

    .line 1320
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QS;->setHeaderClickable(Z)V

    return-void
.end method

.method public setQsScrimEnabled(Z)V
    .locals 1

    .line 2900
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsScrimEnabled:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2901
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsScrimEnabled:Z

    if-eqz v0, :cond_1

    .line 2903
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsState()V

    :cond_1
    return-void
.end method

.method public setSectionPadding(F)V
    .locals 1

    .line 2754
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSectionPadding:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 2757
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSectionPadding:F

    return-void
.end method

.method public setStatusAccessibilityImportance(I)V
    .locals 0

    .line 3308
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardStatusViewController;->setStatusAccessibilityImportance(I)V

    return-void
.end method

.method public setTouchAndAnimationDisabled(Z)V
    .locals 2

    .line 3243
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setTouchAndAnimationDisabled(Z)V

    if-eqz p1, :cond_0

    .line 3244
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isSwipingInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionRunning:Z

    if-nez v0, :cond_0

    .line 3245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    .line 3247
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setAnimationsEnabled(Z)V

    return-void
.end method

.method public setTrackedHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3001
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->notifyListenersTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    const/4 p1, 0x1

    .line 3002
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    :cond_0
    return-void
.end method

.method public setUserSetupComplete(Z)V
    .locals 0

    .line 3323
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUserSetupComplete:Z

    .line 3324
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUserSetupComplete(Z)V

    return-void
.end method

.method public setVerticalTranslationListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 3347
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mVerticalTranslationListener:Ljava/lang/Runnable;

    return-void
.end method

.method protected shouldExpandWhenNotFlinging()Z
    .locals 7

    .line 1624
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->shouldExpandWhenNotFlinging()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1627
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAllowExpandForSmallExpansion:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1630
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

    .line 1789
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnAffordanceIcon(FF)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected shouldGestureWaitForTouchSlop()Z
    .locals 2

    .line 1780
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1781
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    return v1

    .line 1784
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

    .line 2842
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2843
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

    .line 3470
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    return-void
.end method

.method protected startUnlockHintAnimation()V
    .locals 1

    .line 2820
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2821
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onUnlockHintStarted()V

    .line 2822
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onUnlockHintFinished()V

    return-void

    .line 2825
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->startUnlockHintAnimation()V

    return-void
.end method

.method public startWaitingForOpenPanelGesture()V
    .locals 1

    .line 1732
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1735
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    .line 1736
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onTrackingStarted()V

    .line 1737
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updatePanelExpanded()V

    return-void
.end method

.method public stopWaitingForOpenPanelGesture(ZF)V
    .locals 2

    .line 1755
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1756
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 1758
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->collapse(ZF)V

    goto :goto_1

    .line 1760
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

    .line 1761
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->fling(FZ)V

    .line 1763
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onTrackingStopped(Z)V

    :cond_2
    return-void
.end method

.method protected updateExpandedHeight(F)V
    .locals 2

    .line 3062
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz v0, :cond_0

    .line 3063
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 3064
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getCurrentExpandVelocity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setExpandingVelocity(F)V

    .line 3066
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3068
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getMaxPanelHeightNonBypass()I

    move-result p1

    int-to-float p1, p1

    .line 3070
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnStackYChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOnStackYChanged(Ljava/lang/Runnable;)V

    .line 3071
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setExpandedHeight(F)V

    .line 3072
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateKeyguardBottomAreaAlpha()V

    .line 3073
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateBigClockAlpha()V

    .line 3074
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateStatusBarIcons()V

    return-void
.end method

.method protected updateHorizontalPanelPosition(F)V
    .locals 6

    .line 3027
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

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3032
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPositionMinSideMargin:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 3033
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 3035
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 3036
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPositionMinSideMargin:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 3037
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getWidth()F

    move-result v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    .line 3038
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 3039
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getWidth()F

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 3040
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    .line 3042
    :cond_1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 3044
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 3045
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getWidth()F

    move-result v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    sub-float/2addr p1, v0

    .line 3046
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setHorizontalPanelTranslation(F)V

    return-void

    .line 3029
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->resetHorizontalPanelPosition()V

    return-void
.end method

.method public updateNotificationViews(Ljava/lang/String;)V
    .locals 1

    .line 3413
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateSectionBoundaries(Ljava/lang/String;)V

    .line 3414
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateFooter()V

    .line 3416
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->createVisibleEntriesList()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateNotificationIcons(Ljava/util/List;)V

    return-void
.end method

.method protected updateQsExpansion()V
    .locals 3

    .line 2046
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_0

    return-void

    .line 2047
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsExpansionFraction()F

    move-result v0

    .line 2048
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getHeaderTranslation()F

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/qs/QS;->setQsExpansion(FF)V

    .line 2049
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->setQsExpansion(F)V

    .line 2050
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculateQsBottomPosition(F)I

    move-result v1

    .line 2051
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setQsPosition(FI)V

    .line 2052
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setQsExpansionFraction(F)V

    .line 2053
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->setQsPanelExpansion(F)V

    return-void
.end method

.method public updateResources()V
    .locals 7

    .line 883
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->notifications_top_padding_split_shade:I

    .line 884
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSplitShadeNotificationsTopPadding:I

    .line 885
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->qs_panel_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 886
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->notification_panel_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 887
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    .line 888
    invoke-static {v2, v3}, Lcom/android/systemui/util/Utils;->shouldUseSplitNotificationShade(Lcom/android/systemui/statusbar/FeatureFlags;Landroid/content/res/Resources;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    .line 889
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setClipsQsScrim(Z)V

    .line 890
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v2, :cond_0

    .line 891
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    invoke-interface {v2, v3}, Lcom/android/systemui/plugins/qs/QS;->setTranslateWhileExpanding(Z)V

    .line 894
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->ensureAllViewsHaveIds(Landroid/view/ViewGroup;)V

    .line 895
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 896
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 897
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x7

    if-eqz v3, :cond_1

    .line 901
    sget v0, Lcom/android/systemui/R$id;->qs_frame:I

    sget v1, Lcom/android/systemui/R$id;->qs_edge_guideline:I

    invoke-virtual {v2, v0, v6, v1, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 902
    sget v0, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {v2, v0, v4, v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 905
    sget v0, Lcom/android/systemui/R$id;->keyguard_status_view:I

    invoke-virtual {v2, v0, v6, v1, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    move v0, v5

    move v1, v0

    goto :goto_0

    .line 907
    :cond_1
    sget v3, Lcom/android/systemui/R$id;->qs_frame:I

    invoke-virtual {v2, v3, v6, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 908
    sget v3, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {v2, v3, v4, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 909
    sget v3, Lcom/android/systemui/R$id;->keyguard_status_view:I

    invoke-virtual {v2, v3, v6, v5, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 911
    :goto_0
    sget v3, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v3

    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v1, v3, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 912
    sget v1, Lcom/android/systemui/R$id;->qs_frame:I

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v1

    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v0, v1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 913
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 915
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

    invoke-virtual {p0}, Lcom/android/systemui/media/KeyguardMediaController;->refreshMediaPosition()V

    return-void
.end method
