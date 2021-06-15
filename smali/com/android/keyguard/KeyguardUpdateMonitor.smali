.class public Lcom/android/keyguard/KeyguardUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"

# interfaces
.implements Landroid/app/trust/TrustManager$TrustListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;,
        Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;
    }
.end annotation


# static fields
.field public static final CORE_APPS_ONLY:Z

.field private static final DEBUG_FACE:Z

.field private static final FALLBACK_HOME_COMPONENT:Landroid/content/ComponentName;

.field private static sCurrentUser:I


# instance fields
.field private mActiveMobileDataSubscription:I

.field private mAssistantVisible:Z

.field private final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field private mAuthInterruptActive:Z

.field private final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mBiometricEnabledCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

.field private mBiometricEnabledForUser:Landroid/util/SparseBooleanArray;

.field private mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field private mBouncer:Z

.field protected final mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field protected final mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCancelNotReceived:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mCredentialAttempted:Z

.field private mDeviceInteractive:Z

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

.field private mDozing:Z

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field mFaceAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mFaceCancelSignal:Landroid/os/CancellationSignal;

.field private final mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

.field private mFaceListenModels:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/keyguard/KeyguardFaceListenModel;",
            ">;"
        }
    .end annotation
.end field

.field private final mFaceLockoutResetCallback:Landroid/hardware/face/FaceManager$LockoutResetCallback;

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mFaceRunningState:I

.field private mFaceSensorProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation
.end field

.field private final mFingerprintAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mFingerprintCancelSignal:Landroid/os/CancellationSignal;

.field private final mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

.field private mFingerprintLockedOut:Z

.field private final mFingerprintLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

.field private mFingerprintRunningState:I

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mGoingToSleep:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHardwareFaceUnavailableRetryCount:I

.field private mHardwareFingerprintUnavailableRetryCount:I

.field private mHasLockscreenWallpaper:Z

.field private final mIsAutomotive:Z

.field private mIsDreaming:Z

.field private mIsFaceEnrolled:Z

.field private final mIsPrimaryUser:Z

.field private mIsUdfpsEnrolled:Z

.field private mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mKeyguardGoingAway:Z

.field private mKeyguardIsVisible:Z

.field private mKeyguardOccluded:Z

.field private mLockIconPressed:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenMode:I

.field private mLogoutEnabled:Z

.field private mNeedsSlowUnlockTransition:Z

.field private mPhoneState:I

.field public mPhoneStateListener:Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mRetryFaceAuthentication:Ljava/lang/Runnable;

.field private mRetryFingerprintAuthentication:Ljava/lang/Runnable;

.field private mRingMode:I

.field private final mRingerModeObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

.field private mScreenOn:Z

.field private mSecondaryLockscreenRequirement:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureCameraLaunched:Z

.field mServiceStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/ServiceState;",
            ">;"
        }
    .end annotation
.end field

.field mSimDatas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarState:I

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mStatusBarStateControllerListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

.field private mSubscriptionInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSwitchingUser:Z

.field private final mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field protected mTelephonyCapable:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimeFormatChangeObserver:Landroid/database/ContentObserver;

.field private mTrustManager:Landroid/app/trust/TrustManager;

.field private mUpdateBiometricListeningState:Ljava/lang/Runnable;

.field mUserFaceAuthenticated:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;",
            ">;"
        }
    .end annotation
.end field

.field private mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

.field mUserFingerprintAuthenticated:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;",
            ">;"
        }
    .end annotation
.end field

.field private mUserHasTrust:Landroid/util/SparseBooleanArray;

.field private mUserIsUnlocked:Landroid/util/SparseBooleanArray;

.field private mUserManager:Landroid/os/UserManager;

.field private final mUserSwitchObserver:Landroid/app/UserSwitchObserver;

.field private mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

.field private mUserTrustIsUsuallyManaged:Landroid/util/SparseBooleanArray;


# direct methods
.method public static synthetic $r8$lambda$0K6JfH7XOEkCKwLjEx_hm3rTZ1c(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerRingerTracker()V

    return-void
.end method

.method public static synthetic $r8$lambda$ABG3zI_PYv4RbPHI5F8WqppJ_e4(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$new$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$MRWO15HDv1EOJjSqXNb8hN8lq0g(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyStrongAuthStateChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SqEARlLIt3jMopgWjyEjhDarKgQ(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/app/admin/DevicePolicyManager;I)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$isFaceDisabled$0(Landroid/app/admin/DevicePolicyManager;I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VQa6sUiLrXd8iUYHVABLPhlBc98(Lcom/android/keyguard/KeyguardUpdateMonitor;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$new$2(IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$WVe6vji7-rrngCErC_w2bHl6rNs(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$removeCallback$5(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ahSct5y4zJd_6yua_pxS59KaHcM(Lcom/android/keyguard/KeyguardUpdateMonitor;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$new$1(IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$e2zop8j8jEJwR-G5wc2yPzBrBqo(Lcom/android/keyguard/KeyguardUpdateMonitor;I)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->lambda$updateFaceEnrolled$4(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fud59kP0vgDXuX96pprbYZDIhQM(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 146
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG_FACE:Z

    .line 223
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.FallbackHome"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->FALLBACK_HOME_COMPONENT:Landroid/content/ComponentName;

    :try_start_0
    const-string v0, "package"

    .line 236
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 235
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 236
    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z

    move-result v0

    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->CORE_APPS_ONLY:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 238
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/RingerModeTracker;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/telephony/TelephonyListenerManager;Landroid/os/PowerManager;Lcom/android/systemui/statusbar/FeatureFlags;)V
    .locals 18
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    .line 1656
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v5, Lcom/android/keyguard/KeyguardUpdateMonitor$1;

    invoke-direct {v5, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v5, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStatusBarStateControllerListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 264
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    .line 265
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    .line 293
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    const/4 v6, 0x0

    .line 308
    iput v6, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    .line 309
    iput v6, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const/4 v7, -0x1

    .line 321
    iput v7, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveMobileDataSubscription:I

    .line 333
    iput v6, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    .line 334
    iput v6, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFaceUnavailableRetryCount:I

    .line 338
    new-instance v8, Lcom/android/keyguard/KeyguardUpdateMonitor$2;

    invoke-direct {v8, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$2;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v8, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCancelNotReceived:Ljava/lang/Runnable;

    .line 349
    new-instance v8, Lcom/android/keyguard/KeyguardUpdateMonitor$3;

    invoke-direct {v8, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$3;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v8, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingerModeObserver:Landroidx/lifecycle/Observer;

    .line 356
    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v8, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledForUser:Landroid/util/SparseBooleanArray;

    .line 358
    new-instance v8, Lcom/android/keyguard/KeyguardUpdateMonitor$4;

    invoke-direct {v8, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$4;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v8, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    .line 369
    new-instance v8, Lcom/android/keyguard/KeyguardUpdateMonitor$5;

    invoke-direct {v8, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$5;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v8, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneStateListener:Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;

    .line 379
    new-instance v8, Lcom/android/keyguard/KeyguardUpdateMonitor$6;

    invoke-direct {v8, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$6;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v8, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 398
    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v8, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    .line 399
    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v8, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    .line 400
    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v8, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    .line 401
    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v8, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsUsuallyManaged:Landroid/util/SparseBooleanArray;

    .line 402
    new-instance v8, Landroid/util/SparseBooleanArray;

    invoke-direct {v8}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v8, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    .line 403
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecondaryLockscreenRequirement:Ljava/util/Map;

    .line 405
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    .line 407
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    .line 415
    new-instance v8, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda4;

    invoke-direct {v8, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v8, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUpdateBiometricListeningState:Ljava/lang/Runnable;

    .line 720
    new-instance v8, Lcom/android/keyguard/KeyguardUpdateMonitor$8;

    invoke-direct {v8, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$8;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v8, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    .line 901
    new-instance v8, Lcom/android/keyguard/KeyguardUpdateMonitor$9;

    invoke-direct {v8, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$9;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v8, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFaceAuthentication:Ljava/lang/Runnable;

    .line 1178
    new-instance v8, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    invoke-direct {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;-><init>()V

    iput-object v8, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDisplayClientState:Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    .line 1180
    new-instance v8, Lcom/android/keyguard/KeyguardUpdateMonitor$10;

    invoke-direct {v8, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$10;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v8, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1245
    new-instance v9, Lcom/android/keyguard/KeyguardUpdateMonitor$11;

    invoke-direct {v9, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$11;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v9, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastAllReceiver:Landroid/content/BroadcastReceiver;

    .line 1285
    new-instance v10, Lcom/android/keyguard/KeyguardUpdateMonitor$12;

    invoke-direct {v10, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$12;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v10, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    .line 1293
    new-instance v10, Lcom/android/keyguard/KeyguardUpdateMonitor$13;

    invoke-direct {v10, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$13;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v10, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockoutResetCallback:Landroid/hardware/face/FaceManager$LockoutResetCallback;

    .line 1301
    new-instance v10, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v10, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v10, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    .line 1307
    new-instance v10, Lcom/android/keyguard/KeyguardUpdateMonitor$14;

    invoke-direct {v10, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$14;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v10, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 1365
    new-instance v10, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v10, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v10, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

    .line 1371
    new-instance v10, Lcom/android/keyguard/KeyguardUpdateMonitor$15;

    invoke-direct {v10, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$15;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v10, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    .line 1975
    new-instance v10, Lcom/android/keyguard/KeyguardUpdateMonitor$18;

    invoke-direct {v10, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$18;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v10, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserSwitchObserver:Landroid/app/UserSwitchObserver;

    .line 3011
    new-instance v11, Lcom/android/keyguard/KeyguardUpdateMonitor$20;

    invoke-direct {v11, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$20;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 1657
    iput-object v2, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    .line 1658
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v11

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v11, p10

    .line 1659
    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    .line 1660
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v11

    iput-boolean v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    .line 1661
    new-instance v11, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    new-instance v12, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;

    invoke-direct {v12, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-direct {v11, v2, v12}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;-><init>(Landroid/content/Context;Ljava/util/function/Consumer;)V

    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 1662
    iput-object v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 1663
    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v11, p5

    .line 1664
    iput-object v11, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

    .line 1665
    iput-object v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 1666
    invoke-interface {v4, v5}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 1667
    invoke-interface/range {p7 .. p7}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v5

    iput v5, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStatusBarState:I

    .line 1668
    invoke-interface/range {p7 .. p7}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDozing:Z

    move-object/from16 v4, p8

    .line 1669
    iput-object v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v4, p9

    .line 1670
    iput-object v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    move-object/from16 v4, p11

    .line 1671
    iput-object v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    .line 1672
    const-class v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p4

    invoke-virtual {v5, v4, v1}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 1674
    new-instance v4, Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    move-object/from16 v5, p2

    invoke-direct {v4, v1, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor$16;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Looper;)V

    iput-object v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 1799
    iget-boolean v5, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-nez v5, :cond_0

    .line 1800
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->watchForDeviceProvisioning()V

    .line 1804
    :cond_0
    new-instance v5, Lcom/android/settingslib/fuelgauge/BatteryStatus;

    const/4 v12, 0x1

    const/16 v13, 0x64

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v11, v5

    invoke-direct/range {v11 .. v17}, Lcom/android/settingslib/fuelgauge/BatteryStatus;-><init>(IIIIIZ)V

    iput-object v5, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    .line 1807
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v11, "android.intent.action.TIME_TICK"

    .line 1808
    invoke-virtual {v5, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v11, "android.intent.action.TIME_SET"

    .line 1809
    invoke-virtual {v5, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v11, "android.intent.action.BATTERY_CHANGED"

    .line 1810
    invoke-virtual {v5, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v11, "android.intent.action.TIMEZONE_CHANGED"

    .line 1811
    invoke-virtual {v5, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v11, "android.intent.action.AIRPLANE_MODE"

    .line 1812
    invoke-virtual {v5, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v11, "android.intent.action.SIM_STATE_CHANGED"

    .line 1813
    invoke-virtual {v5, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v11, "android.intent.action.SERVICE_STATE"

    .line 1814
    invoke-virtual {v5, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v11, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 1815
    invoke-virtual {v5, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v11, "android.intent.action.PHONE_STATE"

    .line 1816
    invoke-virtual {v5, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v11, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 1817
    invoke-virtual {v5, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1818
    invoke-virtual {v0, v8, v5, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V

    .line 1821
    new-instance v5, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda3;

    invoke-direct {v5, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1840
    new-instance v3, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1842
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.USER_INFO_CHANGED"

    .line 1843
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    .line 1844
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.android.facelock.FACE_UNLOCK_STARTED"

    .line 1845
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.android.facelock.FACE_UNLOCK_STOPPED"

    .line 1846
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1847
    invoke-virtual {v3, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.USER_UNLOCKED"

    .line 1848
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.USER_STOPPED"

    .line 1849
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.USER_REMOVED"

    .line 1850
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.nfc.action.REQUIRE_UNLOCK_FOR_NFC"

    .line 1851
    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1852
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v9, v3, v4, v5}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;Landroid/os/UserHandle;)V

    .line 1855
    iget-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v3}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 1857
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v3, "KeyguardUpdateMonitor"

    invoke-interface {v0, v10, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1859
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1862
    :goto_0
    const-class v0, Landroid/app/trust/TrustManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 1863
    invoke-virtual {v0, v1}, Landroid/app/trust/TrustManager;->registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V

    .line 1865
    iget-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setStrongAuthTracker(Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;)V

    const-string v0, "dreams"

    .line 1868
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1867
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 1870
    iget-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.fingerprint"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "fingerprint"

    .line 1871
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 1873
    :cond_1
    iget-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.biometrics.face"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "face"

    .line 1874
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 1875
    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceSensorProperties:Ljava/util/List;

    .line 1878
    :cond_2
    iget-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_4

    .line 1879
    :cond_3
    const-class v0, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    .line 1880
    iget-object v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledCallback:Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;

    invoke-virtual {v0, v3}, Landroid/hardware/biometrics/BiometricManager;->registerEnabledOnKeyguardCallback(Landroid/hardware/biometrics/IBiometricEnabledOnKeyguardCallback;)V

    .line 1883
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 1884
    iget-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_5

    .line 1885
    iget-object v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockoutResetCallback:Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    invoke-virtual {v0, v3}, Landroid/hardware/fingerprint/FingerprintManager;->addLockoutResetCallback(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V

    .line 1887
    :cond_5
    iget-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_6

    .line 1888
    iget-object v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockoutResetCallback:Landroid/hardware/face/FaceManager$LockoutResetCallback;

    invoke-virtual {v0, v3}, Landroid/hardware/face/FaceManager;->addLockoutResetCallback(Landroid/hardware/face/FaceManager$LockoutResetCallback;)V

    .line 1891
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAutomotive()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsAutomotive:Z

    .line 1893
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v3}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 1894
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    .line 1895
    invoke-virtual {v0}, Landroid/os/UserManager;->isPrimaryUser()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPrimaryUser:Z

    .line 1896
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 1897
    iget-object v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    iget-object v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1898
    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1899
    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->isLogoutEnabled()Z

    move-result v3

    iput-boolean v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogoutEnabled:Z

    .line 1900
    invoke-direct {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateSecondaryLockscreenRequirement(I)V

    .line 1901
    iget-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 1902
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 1903
    iget-object v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsUsuallyManaged:Landroid/util/SparseBooleanArray;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    iget-object v5, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    .line 1904
    invoke-virtual {v5, v3}, Landroid/app/trust/TrustManager;->isTrustUsuallyManaged(I)Z

    move-result v5

    .line 1903
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 1906
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateAirplaneModeState()V

    const-string v0, "phone"

    .line 1909
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_9

    .line 1911
    iget-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

    iget-object v2, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneStateListener:Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;

    invoke-virtual {v0, v2}, Lcom/android/systemui/telephony/TelephonyListenerManager;->addActiveDataSubscriptionIdListener(Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;)V

    move v0, v6

    .line 1913
    :goto_2
    iget-object v2, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    if-ge v0, v2, :cond_9

    .line 1914
    iget-object v2, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    .line 1915
    iget-object v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v0}, Landroid/telephony/SubscriptionManager;->getSubscriptionIds(I)[I

    move-result-object v3

    if-eqz v3, :cond_8

    .line 1917
    array-length v4, v3

    move v5, v6

    :goto_3
    if-ge v5, v4, :cond_8

    aget v8, v3, v5

    .line 1918
    iget-object v9, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x130

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v8, v0, v11}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 1919
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1925
    :cond_9
    invoke-virtual/range {p12 .. p12}, Lcom/android/systemui/statusbar/FeatureFlags;->isKeyguardLayoutEnabled()Z

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateLockScreenMode(Z)V

    .line 1927
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$17;

    iget-object v2, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$17;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeFormatChangeObserver:Landroid/database/ContentObserver;

    .line 1937
    iget-object v0, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "time_12_24"

    .line 1938
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTimeFormatChangeObserver:Landroid/database/ContentObserver;

    .line 1937
    invoke-virtual {v0, v2, v6, v1, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I
    .locals 0

    .line 141
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStatusBarState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/Runnable;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardUpdateMonitor;)I
    .locals 0

    .line 141
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFaceUnavailableRetryCount:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintLockoutReset()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceLockoutReset()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthFailed()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDozing:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardUpdateMonitor;IZ)V
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthenticated(IZ)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDozing:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintHelp(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAcquired(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/PowerManager;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/systemui/biometrics/AuthController;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceAuthFailed()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/keyguard/KeyguardUpdateMonitor;IZ)V
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceAuthenticated(IZ)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceHelp(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/keyguard/KeyguardUpdateMonitor;ILjava/lang/String;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceAcquired(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I
    .locals 0

    .line 141
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleTimeUpdate()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleTimeZoneUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/settingslib/fuelgauge/BatteryStatus;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/settingslib/fuelgauge/BatteryStatus;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleRingerModeChange(I)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handlePhoneStateChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDeviceProvisioned()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDevicePolicyManagerStateChanged(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserSwitchComplete(I)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardReset()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardBouncerChanged(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I
    .locals 0

    .line 141
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    return p1
.end method

.method static synthetic access$4100(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserInfoChanged(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V
    .locals 0

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceUnlockStateChanged(ZI)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimSubscriptionInfoChanged()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleScreenTurnedOn()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleScreenTurnedOff()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDreamingStateChanged(I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserUnlocked(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserStopped(I)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateLogoutEnabled()V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardGoingAway(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleLockScreenMode()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/lang/String;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleTimeFormatUpdate(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleRequireUnlockForNfc()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$5700(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p0
.end method

.method static synthetic access$5702(Lcom/android/keyguard/KeyguardUpdateMonitor;Z)Z
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$5800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Z
    .locals 0

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledForUser:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I
    .locals 0

    .line 141
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveMobileDataSubscription:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardUpdateMonitor;)I
    .locals 0

    .line 141
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    return p0
.end method

.method static synthetic access$908(Lcom/android/keyguard/KeyguardUpdateMonitor;)I
    .locals 2

    .line 141
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    return v0
.end method

.method private callbacksRefreshCarrierInfo()V
    .locals 2

    .line 490
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 491
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 494
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private containsFlag(II)Z
    .locals 0

    and-int p0, p1, p2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private dispatchErrorMessage(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1155
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 1156
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1157
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 1159
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustAgentErrorMessage(Ljava/lang/CharSequence;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static declared-synchronized getCurrentUser()I
    .locals 2

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v0

    .line 422
    :try_start_0
    sget v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSlotId(I)I
    .locals 2

    .line 3005
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3006
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->refreshSimState(II)Z

    .line 3008
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    return p0
.end method

.method private handleAirplaneModeChanged()V
    .locals 0

    .line 486
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->callbacksRefreshCarrierInfo()V

    return-void
.end method

.method private handleBatteryUpdate(Lcom/android/settingslib/fuelgauge/BatteryStatus;)V
    .locals 2

    .line 2576
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2578
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    invoke-direct {p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isBatteryUpdateInteresting(Lcom/android/settingslib/fuelgauge/BatteryStatus;Lcom/android/settingslib/fuelgauge/BatteryStatus;)Z

    move-result v0

    .line 2579
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2581
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2582
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2584
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/settingslib/fuelgauge/BatteryStatus;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleDevicePolicyManagerStateChanged(I)V
    .locals 1

    .line 2414
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2415
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 2416
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateSecondaryLockscreenRequirement(I)V

    const/4 p1, 0x0

    .line 2417
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 2418
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    .line 2420
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDevicePolicyManagerStateChanged()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleDeviceProvisioned()V
    .locals 2

    .line 2462
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 2463
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2464
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2466
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDeviceProvisioned()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2469
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2

    .line 2471
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 2472
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    :cond_2
    return-void
.end method

.method private handleDreamingStateChanged(I)V
    .locals 2

    .line 1572
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1573
    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    .line 1574
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 1575
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz p1, :cond_1

    .line 1577
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    invoke-virtual {p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDreamingStateChanged(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1580
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method private handleFaceAcquired(I)V
    .locals 2

    .line 847
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    if-eqz p1, :cond_0

    return-void

    .line 851
    :cond_0
    sget-boolean p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG_FACE:Z

    if-eqz p1, :cond_1

    const-string p1, "KeyguardUpdateMonitor"

    const-string v0, "Face acquired"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    .line 852
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 853
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_2

    .line 855
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private handleFaceAuthFailed()V
    .locals 3

    .line 834
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 835
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 836
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 837
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 839
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    .line 842
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->kg_face_not_recognized:I

    .line 843
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 842
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceHelp(ILjava/lang/String;)V

    return-void
.end method

.method private handleFaceAuthenticated(IZ)V
    .locals 4

    const-string v0, "KeyGuardUpdateMonitor#handlerFaceAuthenticated"

    .line 861
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 863
    :try_start_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "KeyguardUpdateMonitor"

    if-eqz v1, :cond_0

    :try_start_1
    const-string p1, "Aborted successful auth because device is going to sleep."

    .line 864
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 885
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    return-void

    .line 869
    :cond_0
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v1, p1, :cond_1

    .line 875
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Face authenticated for wrong user: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 885
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    return-void

    .line 878
    :cond_1
    :try_start_4
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 879
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Face authentication disabled by DPM for userId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 885
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    return-void

    .line 882
    :cond_2
    :try_start_5
    sget-boolean p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG_FACE:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Face auth succeeded for user "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_3
    invoke-virtual {p0, v1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFaceAuthenticated(IZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 885
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 887
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catch_0
    move-exception p1

    :try_start_6
    const-string p2, "Failed to get current user id: "

    .line 871
    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 885
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 886
    throw p1
.end method

.method private handleFaceError(ILjava/lang/String;)V
    .locals 5

    .line 911
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 912
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG_FACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Face error received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 913
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCancelNotReceived:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 914
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCancelNotReceived:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 917
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 919
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 920
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    goto :goto_0

    .line 922
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 927
    :cond_3
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFaceUnavailableRetryCount:I

    const/16 v3, 0x14

    if-ge v2, v3, :cond_4

    add-int/2addr v2, v0

    .line 928
    iput v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFaceUnavailableRetryCount:I

    .line 929
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFaceAuthentication:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 930
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFaceAuthentication:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    const/16 v0, 0x9

    if-ne p1, v0, :cond_5

    .line 935
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v2, 0x8

    .line 936
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 935
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 939
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 940
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_6

    .line 942
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method private handleFaceHelp(ILjava/lang/String;)V
    .locals 3

    .line 891
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 892
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG_FACE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Face help received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 893
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 894
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_1

    .line 896
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleFaceLockoutReset()V
    .locals 0

    .line 949
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method private handleFaceUnlockStateChanged(ZI)V
    .locals 2

    .line 977
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 978
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceUnlockRunning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v0, 0x0

    .line 979
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 980
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 982
    invoke-virtual {v1, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFaceUnlockStateChanged(ZI)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleFingerprintAcquired(I)V
    .locals 2

    .line 673
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 677
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 678
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_1

    .line 680
    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private handleFingerprintAuthFailed()V
    .locals 3

    .line 661
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 662
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 663
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 665
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthFailed(Landroid/hardware/biometrics/BiometricSourceType;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 668
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->kg_fingerprint_not_recognized:I

    .line 669
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 668
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintHelp(ILjava/lang/String;)V

    return-void
.end method

.method private handleFingerprintAuthenticated(IZ)V
    .locals 3

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "KeyGuardUpdateMonitor#handlerFingerPrintAuthenticated"

    .line 686
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 690
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v2, p1, :cond_0

    .line 696
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fingerprint authenticated for wrong user: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 705
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    return-void

    .line 699
    :cond_0
    :try_start_2
    invoke-direct {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 700
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fingerprint disabled by DPM for userId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 705
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    return-void

    .line 703
    :cond_1
    :try_start_3
    invoke-virtual {p0, v2, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFingerprintAuthenticated(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 705
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 707
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_4
    const-string p2, "Failed to get current user id: "

    .line 692
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 705
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    return-void

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 706
    throw p1
.end method

.method private handleFingerprintError(ILjava/lang/String;)V
    .locals 6

    .line 735
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 736
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCancelNotReceived:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCancelNotReceived:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 741
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 743
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 744
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    goto :goto_0

    .line 746
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    const/4 v0, 0x0

    .line 747
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 748
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelSignal:Landroid/os/CancellationSignal;

    :goto_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 752
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFingerprintAuthentication:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    const/16 v2, 0x9

    if-ne p1, v2, :cond_3

    .line 756
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v4, 0x8

    .line 757
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v5

    .line 756
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    :cond_3
    const/4 v3, 0x7

    if-eq p1, v3, :cond_4

    if-ne p1, v2, :cond_5

    .line 762
    :cond_4
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOut:Z

    .line 765
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 766
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_6

    .line 768
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricError(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method private handleFingerprintHelp(ILjava/lang/String;)V
    .locals 3

    .line 711
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 712
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 713
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 715
    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricHelp(ILjava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleFingerprintLockoutReset()V
    .locals 1

    const/4 v0, 0x0

    .line 774
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOut:Z

    .line 775
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    return-void
.end method

.method private handleKeyguardBouncerChanged(I)V
    .locals 2

    .line 2746
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2748
    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz v0, :cond_1

    .line 2754
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    goto :goto_1

    .line 2756
    :cond_1
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCredentialAttempted:Z

    .line 2759
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_3

    .line 2760
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz p1, :cond_2

    .line 2762
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardBouncerChanged(Z)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2765
    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method private handleKeyguardGoingAway(Z)V
    .locals 0

    .line 1618
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1619
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    return-void
.end method

.method private handleKeyguardReset()V
    .locals 1

    .line 2719
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    .line 2720
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resolveNeedsSlowUnlockTransition()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    return-void
.end method

.method private handleLockScreenMode()V
    .locals 3

    .line 2530
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 2532
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2533
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2535
    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockScreenMode:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onLockScreenModeChanged(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 2

    .line 2480
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2482
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2483
    iput v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 2484
    :cond_0
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x2

    .line 2485
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    goto :goto_0

    .line 2486
    :cond_1
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 2487
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    .line 2489
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_4

    .line 2490
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz p1, :cond_3

    .line 2492
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private handleReportEmergencyCallAction()V
    .locals 2

    .line 2785
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 2786
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2787
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2789
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onEmergencyCallAction()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleRequireUnlockForNfc()V
    .locals 2

    .line 2772
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 2773
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2774
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2776
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRequireUnlockForNfc()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleRingerModeChange(I)V
    .locals 2

    .line 2501
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2503
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    const/4 v0, 0x0

    .line 2504
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2505
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2507
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleScreenTurnedOff()V
    .locals 3

    const-string v0, "KeyguardUpdateMonitor#handleScreenTurnedOff"

    .line 1558
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->startDetectingBlockingIpcs(Ljava/lang/String;)V

    .line 1559
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v1, 0x0

    .line 1560
    iput v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFingerprintUnavailableRetryCount:I

    .line 1561
    iput v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHardwareFaceUnavailableRetryCount:I

    .line 1562
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1563
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_0

    .line 1565
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOff()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1568
    :cond_1
    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->stopDetectingBlockingIpcs(Ljava/lang/String;)V

    return-void
.end method

.method private handleScreenTurnedOn()V
    .locals 2

    .line 1547
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 1548
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1549
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 1551
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleSimSubscriptionInfoChanged()V
    .locals 9

    .line 447
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "onSubscriptionInfoChanged()"

    .line 449
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 451
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 453
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "onSubscriptionInfoChanged: list is null"

    .line 457
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    .line 460
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v0

    .line 465
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 466
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 467
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 468
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->refreshSimState(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 470
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 473
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 474
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    move v4, v2

    .line 475
    :goto_3
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 476
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v5, :cond_4

    .line 478
    iget v6, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v7, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget v8, v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(III)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 482
    :cond_6
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->callbacksRefreshCarrierInfo()V

    return-void
.end method

.method private handleTimeFormatUpdate(Ljava/lang/String;)V
    .locals 2

    .line 2562
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 2564
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2565
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2567
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeFormatChanged(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleTimeUpdate()V
    .locals 2

    .line 2516
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 2518
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2519
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2521
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleTimeZoneUpdate(Ljava/lang/String;)V
    .locals 3

    .line 2544
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 2546
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2547
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2549
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    .line 2551
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUserInfoChanged(I)V
    .locals 2

    .line 1584
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 1585
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1586
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 1588
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserInfoChanged(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUserStopped(I)V
    .locals 1

    .line 1606
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1607
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method private handleUserSwitchComplete(I)V
    .locals 2

    .line 2449
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 2450
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2451
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2453
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitchComplete(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleUserUnlocked(I)V
    .locals 2

    .line 1594
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1595
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1596
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resolveNeedsSlowUnlockTransition()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    const/4 p1, 0x0

    .line 1597
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1598
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    .line 1600
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserUnlocked()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isAutomotive()Z
    .locals 1

    .line 2831
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isBatteryUpdateInteresting(Lcom/android/settingslib/fuelgauge/BatteryStatus;Lcom/android/settingslib/fuelgauge/BatteryStatus;)Z
    .locals 6

    .line 2795
    invoke-virtual {p2}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isPluggedIn()Z

    move-result p0

    .line 2796
    invoke-virtual {p1}, Lcom/android/settingslib/fuelgauge/BatteryStatus;->isPluggedIn()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 2797
    iget v3, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    iget v4, p2, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    if-eq v3, v4, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 2799
    :goto_0
    iget-boolean v4, p2, Lcom/android/settingslib/fuelgauge/BatteryStatus;->present:Z

    .line 2800
    iget-boolean v5, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->present:Z

    if-ne v0, p0, :cond_6

    if-eqz v3, :cond_1

    goto :goto_1

    .line 2808
    :cond_1
    iget v0, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    iget v3, p2, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    if-eq v0, v3, :cond_2

    return v2

    :cond_2
    if-eqz p0, :cond_3

    .line 2813
    iget p0, p2, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    iget v0, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    if-eq p0, v0, :cond_3

    return v2

    :cond_3
    if-eq v5, v4, :cond_4

    return v2

    .line 2823
    :cond_4
    iget p0, p2, Lcom/android/settingslib/fuelgauge/BatteryStatus;->health:I

    iget p1, p1, Lcom/android/settingslib/fuelgauge/BatteryStatus;->health:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v1

    :cond_6
    :goto_1
    return v2
.end method

.method private isDeviceProvisionedInSettingsDb()Z
    .locals 2

    .line 2353
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isEncryptedOrLockdown(I)Z
    .locals 3

    .line 1114
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p1

    const/4 v0, 0x2

    .line 1116
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->containsFlag(II)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/16 v0, 0x20

    .line 1117
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->containsFlag(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 1118
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->containsFlag(II)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private isFaceDisabled(I)Z
    .locals 2

    .line 1016
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    .line 1017
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1019
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda8;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/app/admin/DevicePolicyManager;I)V

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private isFingerprintDisabled(I)Z
    .locals 2

    .line 1008
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    .line 1009
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1010
    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p1

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_1

    .line 1012
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSimPinSecure(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

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

.method private isTrustDisabled(I)Z
    .locals 0

    .line 1003
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p0

    return p0
.end method

.method private isUnlockWithFacePossible(I)Z
    .locals 1

    .line 2307
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceAuthEnabledForUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isUnlockWithFingerprintPossible(I)Z
    .locals 1

    .line 2302
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 2303
    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledTemplates(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$isFaceDisabled$0(Landroid/app/admin/DevicePolicyManager;I)Ljava/lang/Boolean;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1019
    invoke-virtual {p1, v0, p2}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1

    .line 1021
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 1019
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$1(IIZ)V
    .locals 0

    .line 1304
    invoke-direct {p0, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthenticated(IZ)V

    return-void
.end method

.method private synthetic lambda$new$2(IIZ)V
    .locals 0

    .line 1368
    invoke-direct {p0, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceAuthenticated(IZ)V

    return-void
.end method

.method private synthetic lambda$new$3()V
    .locals 5

    .line 1822
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 1823
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1824
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 1825
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x14a

    const/4 v4, 0x0

    .line 1826
    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1825
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1829
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    if-nez v0, :cond_0

    .line 1830
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1834
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    if-nez v1, :cond_0

    .line 1835
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$removeCallback$5(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    .line 2845
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateFaceEnrolled$4(I)Ljava/lang/Boolean;
    .locals 1

    .line 1956
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 1957
    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledForUser:Landroid/util/SparseBooleanArray;

    .line 1958
    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1956
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private maybeLogFaceListenerModelData(Lcom/android/keyguard/KeyguardFaceListenModel;)V
    .locals 2

    .line 2208
    sget-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG_FACE:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 2209
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardFaceListenModel;->isListeningForFace()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2210
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceListenModels:Ljava/util/ArrayDeque;

    const/16 v1, 0x14

    if-nez v0, :cond_0

    .line 2211
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceListenModels:Ljava/util/ArrayDeque;

    .line 2213
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceListenModels:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 2214
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceListenModels:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 2216
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceListenModels:Ljava/util/ArrayDeque;

    invoke-virtual {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private notifyFaceRunningStateChanged()V
    .locals 4

    .line 966
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 967
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 968
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 970
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v2

    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyFingerprintRunningStateChanged()V
    .locals 4

    .line 792
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 793
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 794
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 796
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v2

    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private notifyStrongAuthStateChanged(I)V
    .locals 2

    .line 1141
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 1142
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1143
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 1145
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStrongAuthStateChanged(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private refreshSimState(II)Z
    .locals 4

    .line 3033
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 3034
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3036
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3037
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 3040
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    invoke-direct {v1, v0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(III)V

    .line 3041
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3044
    :cond_1
    iget p0, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    if-eq p0, v0, :cond_2

    move v1, v3

    .line 3045
    :cond_2
    iput v0, v2, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    move v3, v1

    :goto_1
    return v3
.end method

.method private registerRingerTracker()V
    .locals 1

    .line 1639
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

    invoke-interface {v0}, Lcom/android/systemui/util/RingerModeTracker;->getRingerMode()Landroidx/lifecycle/LiveData;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingerModeObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private reportSuccessfulBiometricUnlock(ZI)V
    .locals 2

    .line 652
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$7;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resolveNeedsSlowUnlockTransition()Z
    .locals 3

    .line 2724
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2727
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2728
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 2729
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 2728
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "KeyguardUpdateMonitor"

    const-string v0, "resolveNeedsSlowUnlockTransition: returning false since activity could not be resolved."

    .line 2732
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2737
    :cond_1
    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->FALLBACK_HOME_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 3

    .line 2890
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBatteryStatus:Lcom/android/settingslib/fuelgauge/BatteryStatus;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshBatteryInfo(Lcom/android/settingslib/fuelgauge/BatteryStatus;)V

    .line 2891
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTimeChanged()V

    .line 2892
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRingMode:I

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRingerModeChanged(I)V

    .line 2893
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onPhoneStateChanged(I)V

    .line 2894
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    .line 2895
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onClockVisibilityChanged()V

    .line 2896
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChangedRaw(Z)V

    .line 2897
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyCapable:Z

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTelephonyCapable(Z)V

    .line 2898
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockScreenMode:I

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onLockScreenModeChanged(I)V

    .line 2900
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2901
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 2902
    iget v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    iget v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    iget v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static declared-synchronized setCurrentUser(I)V
    .locals 1

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    monitor-enter v0

    .line 418
    :try_start_0
    sput p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->sCurrentUser:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setFaceRunningState(I)V
    .locals 3

    .line 953
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne p1, v2, :cond_1

    move v1, v2

    .line 955
    :cond_1
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    .line 956
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "faceRunningState: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "KeyguardUpdateMonitor"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v1, :cond_2

    .line 961
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFaceRunningStateChanged()V

    :cond_2
    return-void
.end method

.method private setFingerprintRunningState(I)V
    .locals 3

    .line 779
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ne p1, v2, :cond_1

    move v1, v2

    .line 781
    :cond_1
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    .line 782
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fingerprintRunningState: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "KeyguardUpdateMonitor"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v1, :cond_2

    .line 787
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyFingerprintRunningStateChanged()V

    :cond_2
    return-void
.end method

.method private shouldListenForFaceAssistant()Z
    .locals 3

    .line 2088
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    .line 2089
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAssistantVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 2090
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$1500(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    .line 2091
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private shouldListenForFingerprintAssistant()Z
    .locals 3

    .line 2081
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    .line 2082
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAssistantVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 2083
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$1500(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    .line 2084
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private startListeningForFace()V
    .locals 9

    .line 2262
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2263
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    return-void

    :cond_0
    if-ne v0, v1, :cond_1

    return-void

    .line 2270
    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    .line 2271
    invoke-direct {p0, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2272
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_2

    .line 2273
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 2275
    :cond_2
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelSignal:Landroid/os/CancellationSignal;

    .line 2278
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceSensorProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceSensorProperties:Ljava/util/List;

    .line 2279
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget-boolean v0, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->supportsFaceDetection:Z

    if-eqz v0, :cond_3

    move v2, v1

    .line 2280
    :cond_3
    invoke-direct {p0, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isEncryptedOrLockdown(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 2281
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelSignal:Landroid/os/CancellationSignal;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceDetectionCallback:Landroid/hardware/face/FaceManager$FaceDetectionCallback;

    invoke-virtual {v0, v2, v3, v8}, Landroid/hardware/face/FaceManager;->detectFace(Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$FaceDetectionCallback;I)V

    goto :goto_0

    .line 2283
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelSignal:Landroid/os/CancellationSignal;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceAuthenticationCallback:Landroid/hardware/face/FaceManager$AuthenticationCallback;

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/face/FaceManager;->authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/face/FaceManager$AuthenticationCallback;Landroid/os/Handler;I)V

    .line 2286
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    :cond_5
    return-void
.end method

.method private startListeningForFingerprint()V
    .locals 10

    .line 2233
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2234
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    return-void

    :cond_0
    if-ne v0, v1, :cond_1

    return-void

    .line 2242
    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v9

    .line 2243
    invoke-direct {p0, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2244
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_2

    .line 2245
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    .line 2247
    :cond_2
    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 2249
    invoke-direct {p0, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isEncryptedOrLockdown(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2250
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDetectionCallback:Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;

    invoke-virtual {v0, v1, v2, v9}, Landroid/hardware/fingerprint/FingerprintManager;->detectFingerprint(Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;I)V

    goto :goto_0

    .line 2253
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual/range {v3 .. v9}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;II)V

    :goto_0
    const/4 v0, 0x1

    .line 2257
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    :cond_4
    return-void
.end method

.method private stopListeningForFace()V
    .locals 5

    .line 2337
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2338
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 2339
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 2340
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelSignal:Landroid/os/CancellationSignal;

    .line 2341
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCancelNotReceived:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2342
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCancelNotReceived:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2345
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    .line 2347
    :cond_1
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 2348
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    :cond_2
    return-void
.end method

.method private stopListeningForFingerprint()V
    .locals 5

    .line 2320
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 2321
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 2322
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    .line 2323
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 2324
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCancelNotReceived:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2325
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCancelNotReceived:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2328
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    .line 2330
    :cond_1
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 2331
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    :cond_2
    return-void
.end method

.method private updateAirplaneModeState()V
    .locals 2

    .line 1991
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x149

    .line 1992
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1995
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateBiometricListeningState()V
    .locals 0

    .line 1999
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    .line 2000
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method private updateFaceEnrolled(I)V
    .locals 1

    .line 1955
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda7;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceEnrolled:Z

    return-void
.end method

.method private updateFaceListeningState()V
    .locals 3

    .line 2068
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x150

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2071
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mRetryFaceAuthentication:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2072
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFace()Z

    move-result v0

    .line 2073
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    .line 2074
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    goto :goto_0

    :cond_1
    if-eq v1, v2, :cond_2

    if-eqz v0, :cond_2

    .line 2076
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateFingerprintListeningState()V
    .locals 4

    .line 2006
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x150

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2011
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateUdfpsEnrolled(I)V

    .line 2012
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsEnrolled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint(Z)Z

    move-result v0

    .line 2013
    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    .line 2016
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFingerprint()V

    goto :goto_1

    :cond_3
    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    .line 2018
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startListeningForFingerprint()V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateLockScreenMode(Z)V
    .locals 1

    .line 1944
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockScreenMode:I

    if-eq p1, v0, :cond_0

    .line 1945
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockScreenMode:I

    .line 1946
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x157

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private updateLogoutEnabled()V
    .locals 2

    .line 3160
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 3161
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isLogoutEnabled()Z

    move-result v0

    .line 3162
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogoutEnabled:Z

    if-eq v1, v0, :cond_1

    .line 3163
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogoutEnabled:Z

    const/4 v0, 0x0

    .line 3165
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3166
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 3168
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onLogoutEnabledChanged()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSecondaryLockscreenRequirement(I)V
    .locals 5

    .line 1051
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecondaryLockscreenRequirement:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1052
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isSecondaryLockscreenEnabled(Landroid/os/UserHandle;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 1056
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 1058
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1057
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No Profile Owner or Device Owner supervision app found for User "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1063
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.app.action.BIND_SECONDARY_LOCKSCREEN_SERVICE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1065
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1066
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1067
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_2

    .line 1068
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 1069
    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 1070
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecondaryLockscreenRequirement:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 1075
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecondaryLockscreenRequirement:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v3

    :goto_1
    if-eqz v2, :cond_4

    .line 1079
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 1080
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_3

    .line 1082
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSecondaryLockscreenRequirementChanged(I)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private updateUdfpsEnrolled(I)V
    .locals 1

    .line 1951
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/biometrics/AuthController;->isUdfpsEnrolled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsUdfpsEnrolled:Z

    return-void
.end method

.method private watchForDeviceProvisioning()V
    .locals 4

    .line 2358
    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$19;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$19;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 2370
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    .line 2371
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 2370
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2376
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    .line 2377
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eq v0, v1, :cond_0

    .line 2378
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    if-eqz v0, :cond_0

    .line 2380
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x134

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public awakenFromDream()V
    .locals 1

    .line 609
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz p0, :cond_0

    .line 611
    :try_start_0
    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "KeyguardUpdateMonitor"

    const-string v0, "Unable to awaken from dream"

    .line 613
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public cancelFaceAuth()V
    .locals 0

    .line 2062
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace()V

    return-void
.end method

.method public clearBiometricRecognized()V
    .locals 2

    .line 2964
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2965
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2966
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2967
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, v1}, Landroid/app/trust/TrustManager;->clearAllBiometricRecognized(Landroid/hardware/biometrics/BiometricSourceType;)V

    .line 2968
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, v1}, Landroid/app/trust/TrustManager;->clearAllBiometricRecognized(Landroid/hardware/biometrics/BiometricSourceType;)V

    const/4 v0, 0x0

    .line 2970
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2971
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2973
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricsCleared()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchDreamingStarted()V
    .locals 3

    .line 3098
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x14d

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchDreamingStopped()V
    .locals 2

    .line 3102
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x14d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchFinishedGoingToSleep(I)V
    .locals 2

    .line 3077
    monitor-enter p0

    const/4 v0, 0x0

    .line 3078
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 3079
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3080
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x140

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p1

    .line 3079
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dispatchKeyguardGoingAway(Z)V
    .locals 1

    .line 3111
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v0, 0x156

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchScreenTurnedOff()V
    .locals 1

    .line 3091
    monitor-enter p0

    const/4 v0, 0x0

    .line 3092
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    .line 3093
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3094
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x14c

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    .line 3093
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchScreenTurnedOn()V
    .locals 1

    .line 3084
    monitor-enter p0

    const/4 v0, 0x1

    .line 3085
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    .line 3086
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3087
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x14b

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    .line 3086
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispatchStartedGoingToSleep(I)V
    .locals 2

    .line 3073
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x141

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dispatchStartedWakingUp()V
    .locals 1

    .line 3066
    monitor-enter p0

    const/4 v0, 0x1

    .line 3067
    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 3068
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3069
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x13f

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    .line 3068
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "KeyguardUpdateMonitor state:"

    .line 3215
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  SIM States:"

    .line 3216
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3217
    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "    "

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 3218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "  Subs:"

    .line 3220
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3221
    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 3222
    :goto_1
    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 3223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3226
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Current active data subId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveMobileDataSubscription:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  Service states:"

    .line 3227
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3228
    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 3231
    :cond_2
    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const-string v5, "    enabledByUser="

    const-string v6, "    trustManaged="

    const-string v7, "    strongAuthFlags="

    const-string v8, "    possible="

    const-string v9, "    disabled(DPM)="

    const-string v10, "    authSinceBoot="

    const-string v11, "    auth\'d="

    const-string v12, "    allowed="

    const-string v13, ")"

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3232
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 3233
    iget-object v15, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v15, v2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v15

    .line 3234
    iget-object v14, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {v14, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    .line 3235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v4

    const-string v4, "  Fingerprint state (user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v14, :cond_3

    .line 3238
    invoke-static {v14}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$1600(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3236
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v14, :cond_4

    invoke-static {v14}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$1500(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3241
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3240
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    listening: actual="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " expected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    .line 3245
    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint(Z)Z

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3244
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "    udfpsEnrolled="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsEnrolled()Z

    move-result v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3249
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3250
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsEnrolled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        shouldListenForUdfps="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprint(Z)Z

    move-result v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "        bouncerVisible="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "        mStatusBarState="

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStatusBarState:I

    .line 3254
    invoke-static {v14}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3253
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    const/4 v3, 0x1

    goto :goto_5

    :cond_6
    move-object/from16 v16, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3257
    :goto_5
    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3258
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 3259
    iget-object v14, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v14, v2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v14

    .line 3260
    iget-object v15, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    .line 3261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Face authentication state (user="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v15, :cond_7

    .line 3263
    invoke-static {v15}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$1600(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    goto :goto_6

    :cond_7
    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3262
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v15, :cond_8

    .line 3265
    invoke-static {v15}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$1500(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    :goto_7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3264
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3266
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3267
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3266
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3270
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    mSecureCameraLaunched="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3275
    :cond_9
    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceListenModels:Ljava/util/ArrayDeque;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 3276
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v3, "  Face listen results (last 20 calls):"

    .line 3278
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3279
    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceListenModels:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardFaceListenModel;

    .line 3280
    new-instance v5, Ljava/util/Date;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardFaceListenModel;->getTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 3281
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, v16

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardFaceListenModel;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 3284
    :cond_a
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsAutomotive:Z

    if-eqz v0, :cond_b

    const-string v0, "  Running on Automotive build"

    .line 3285
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public getFilteredSubscriptionInfo(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    .line 525
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v0

    .line 526
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 527
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x1

    .line 528
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 529
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getGroupUuid()Landroid/os/ParcelUuid;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 531
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 535
    :cond_0
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "always_show_primary_signal_bar_in_opportunistic_network_boolean"

    .line 536
    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 539
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 541
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveMobileDataSubscription:I

    if-ne v2, p0, :cond_3

    move-object p1, v1

    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-object v0
.end method

.method public getNextSubIdForState(I)I
    .locals 7

    const/4 v0, 0x0

    .line 3128
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v1

    const/4 v2, -0x1

    const v3, 0x7fffffff

    .line 3131
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 3132
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 3133
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    .line 3134
    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSlotId(I)I

    move-result v5

    .line 3135
    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)I

    move-result v6

    if-ne p1, v6, :cond_0

    if-le v3, v5, :cond_0

    move v2, v4

    move v3, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getSecondaryLockscreenRequirement(I)Landroid/content/Intent;
    .locals 0

    .line 1093
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecondaryLockscreenRequirement:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    return-object p0
.end method

.method public getServiceState(I)Landroid/telephony/ServiceState;
    .locals 0

    .line 2960
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ServiceState;

    return-object p0
.end method

.method public getSimState(I)I
    .locals 2

    .line 2997
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2998
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getStrongAuthTracker()Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;
    .locals 0

    .line 1137
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    return-object p0
.end method

.method public getSubscriptionInfo(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 505
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 509
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    goto :goto_0

    .line 511
    :cond_2
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    .line 513
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSubscriptionInfo:Ljava/util/List;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;
    .locals 3

    const/4 v0, 0x0

    .line 3144
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object p0

    .line 3145
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3146
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 3147
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    if-ne p1, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserCanSkipBouncer(I)Z
    .locals 1

    .line 1026
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result p0

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

.method public getUserHasTrust(I)Z
    .locals 1

    .line 1030
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getUserTrustIsManaged(I)Z
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isTrustDisabled(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getUserUnlockedWithBiometric(I)Z
    .locals 4

    .line 1037
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    .line 1038
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1039
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$1500(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1040
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$1600(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 1041
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$1500(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1042
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->access$1600(Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method protected handleFinishedGoingToSleep(I)V
    .locals 2

    .line 1535
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 1536
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 1537
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1538
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 1540
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onFinishedGoingToSleep(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1543
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method handleServiceStateChange(ILandroid/telephony/ServiceState;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2675
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "KeyguardUpdateMonitor"

    const-string p1, "invalid subId in handleServiceStateChange()"

    .line 2676
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2679
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateTelephonyCapable(Z)V

    .line 2682
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2684
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->callbacksRefreshCarrierInfo()V

    return-void
.end method

.method handleSimStateChange(III)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2613
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSimStateChange(subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    const-string v0, "invalid subId in handleSimStateChange()"

    .line 2621
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p3, v3, :cond_2

    .line 2625
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateTelephonyCapable(Z)V

    .line 2629
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    .line 2632
    iget v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    if-ne v4, p2, :cond_0

    .line 2633
    iput v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_2

    :cond_2
    const/16 v0, 0x8

    if-ne p3, v0, :cond_3

    .line 2637
    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateTelephonyCapable(Z)V

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_1
    move v0, v2

    .line 2643
    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    if-nez v1, :cond_5

    .line 2646
    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    invoke-direct {v1, p3, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;-><init>(III)V

    .line 2647
    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 2650
    :cond_5
    iget v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    if-ne v4, p3, :cond_7

    iget v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    if-ne v4, p1, :cond_7

    iget v4, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    if-eq v4, p2, :cond_6

    goto :goto_3

    :cond_6
    move v3, v2

    .line 2651
    :cond_7
    :goto_3
    iput p3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    .line 2652
    iput p1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    .line 2653
    iput p2, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    :goto_4
    if-nez v3, :cond_8

    if-eqz v0, :cond_a

    :cond_8
    if-eqz p3, :cond_a

    .line 2656
    :goto_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    .line 2657
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_9

    .line 2659
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onSimStateChanged(III)V

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    return-void
.end method

.method protected handleStartedGoingToSleep(I)V
    .locals 2

    .line 1521
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 1522
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockIconPressed:Z

    .line 1523
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized()V

    .line 1524
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1525
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 1527
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedGoingToSleep(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 1530
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 1531
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method protected handleStartedWakingUp()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor#handleStartedWakingUp"

    .line 1508
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1509
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1510
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    const/4 v0, 0x0

    .line 1511
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1512
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 1514
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onStartedWakingUp()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1517
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method handleUserRemoved(I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1612
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1613
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1614
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsUsuallyManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-void
.end method

.method handleUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2430
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2431
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearBiometricRecognized()V

    .line 2432
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsUsuallyManaged:Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v1, p1}, Landroid/app/trust/TrustManager;->isTrustUsuallyManaged(I)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v0, 0x0

    .line 2433
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2434
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2436
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserSwitching(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 2440
    :try_start_0
    invoke-interface {p2, p0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public hasLockscreenWallpaper()Z
    .locals 0

    .line 2407
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasLockscreenWallpaper:Z

    return p0
.end method

.method public isDeviceInteractive()Z
    .locals 0

    .line 3115
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    return p0
.end method

.method public isDeviceProvisioned()Z
    .locals 0

    .line 2956
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceProvisioned:Z

    return p0
.end method

.method public isDreaming()Z
    .locals 0

    .line 602
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    return p0
.end method

.method public isFaceAuthEnabledForUser(I)Z
    .locals 0

    .line 2314
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceEnrolled(I)V

    .line 2315
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceEnrolled:Z

    return p0
.end method

.method public isFaceDetectionRunning()Z
    .locals 1

    .line 996
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFaceEnrolled()Z
    .locals 0

    .line 1972
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsFaceEnrolled:Z

    return p0
.end method

.method public isFingerprintDetectionRunning()Z
    .locals 1

    .line 992
    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGoingToSleep()Z
    .locals 0

    .line 3119
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    return p0
.end method

.method public isKeyguardVisible()Z
    .locals 0

    .line 2688
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    return p0
.end method

.method public isLogoutEnabled()Z
    .locals 0

    .line 3156
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogoutEnabled:Z

    return p0
.end method

.method public isScreenOn()Z
    .locals 0

    .line 1151
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mScreenOn:Z

    return p0
.end method

.method public isSimPinSecure()Z
    .locals 3

    const/4 v0, 0x0

    .line 2990
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 2991
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public isSimPinVoiceSecure()Z
    .locals 0

    .line 2980
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p0

    return p0
.end method

.method public isSwitchingUser()Z
    .locals 0

    .line 2878
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    return p0
.end method

.method public isTrustUsuallyManaged(I)Z
    .locals 0

    .line 1100
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 1101
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsUsuallyManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public isUdfpsEnrolled()Z
    .locals 0

    .line 1965
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsUdfpsEnrolled:Z

    return p0
.end method

.method public isUnlockingWithBiometricAllowed(Z)Z
    .locals 0

    .line 1105
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p0

    return p0
.end method

.method public isUnlockingWithBiometricsPossible(I)Z
    .locals 1

    .line 2298
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result p0

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

.method public isUserInLockdown(I)Z
    .locals 1

    .line 1109
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p1

    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->containsFlag(II)Z

    move-result p0

    return p0
.end method

.method public isUserUnlocked(I)Z
    .locals 0

    .line 2032
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public needsSlowUnlockTransition()Z
    .locals 0

    .line 1133
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    return p0
.end method

.method public onAuthInterruptDetected(Z)V
    .locals 1

    .line 2042
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthInterruptActive:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2045
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthInterruptActive:Z

    .line 2046
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method public onCameraLaunched()V
    .locals 1

    const/4 v0, 0x1

    .line 594
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    .line 595
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method protected onFaceAuthenticated(IZ)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "KeyGuardUpdateMonitor#onFaceAuthenticated"

    .line 804
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 805
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 806
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;-><init>(ZZ)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 809
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, p1, v1}, Landroid/app/trust/TrustManager;->unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V

    :cond_0
    const/4 v0, 0x0

    .line 813
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceCancelSignal:Landroid/os/CancellationSignal;

    .line 814
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    const/4 v0, 0x0

    move v1, v0

    .line 815
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 816
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_1

    .line 818
    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 825
    :cond_2
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAssistantVisible:Z

    .line 828
    invoke-direct {p0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSuccessfulBiometricUnlock(ZI)V

    .line 830
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method protected onFingerprintAuthenticated(IZ)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 620
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const-string v0, "KeyGuardUpdateMonitor#onFingerPrintAuthenticated"

    .line 621
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;-><init>(ZZ)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 625
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    sget-object v1, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v0, p1, v1}, Landroid/app/trust/TrustManager;->unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V

    :cond_0
    const/4 v0, 0x0

    .line 629
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    .line 630
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    const/4 v0, 0x0

    move v1, v0

    .line 631
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 632
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_1

    .line 634
    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 639
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x150

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 643
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAssistantVisible:Z

    .line 646
    invoke-direct {p0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSuccessfulBiometricUnlock(ZI)V

    .line 648
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    .line 2697
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyguardVisibilityChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2702
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    .line 2705
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2706
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_1

    .line 2708
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChangedRaw(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2711
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method public onTrustChanged(ZII)V
    .locals 2

    .line 427
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 428
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserHasTrust:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 429
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    const/4 v0, 0x0

    .line 430
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 431
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 433
    invoke-virtual {v1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustChanged(I)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 435
    invoke-virtual {v1, p3, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustGrantedWithFlags(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTrustError(Ljava/lang/CharSequence;)V
    .locals 0

    .line 443
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchErrorMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTrustManagedChanged(ZI)V
    .locals 1

    .line 553
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 554
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsManaged:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 555
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTrustIsUsuallyManaged:Landroid/util/SparseBooleanArray;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTrustManager:Landroid/app/trust/TrustManager;

    invoke-virtual {v0, p2}, Landroid/app/trust/TrustManager;->isTrustUsuallyManaged(I)Z

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 p1, 0x0

    .line 556
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTrustManagedChanged(I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 2

    .line 2855
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const/4 v0, 0x0

    .line 2859
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2860
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2868
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 2869
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 2870
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 2840
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2845
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda6;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public reportEmergencyCallAction(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 2944
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x13e

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2946
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2947
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleReportEmergencyCallAction()V

    :goto_0
    return-void
.end method

.method public reportSimUnlocked(I)V
    .locals 2

    .line 2930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportSimUnlocked(subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSlotId(I)I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(III)V

    return-void
.end method

.method public requestFaceAuth()V
    .locals 0

    .line 2055
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    return-void
.end method

.method resetBiometricListeningState()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 1634
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    .line 1635
    iput v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    return-void
.end method

.method public sendKeyguardBouncerChanged(Z)V
    .locals 1

    .line 2915
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x142

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 2916
    iput p1, p0, Landroid/os/Message;->arg1:I

    .line 2917
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendKeyguardReset()V
    .locals 1

    .line 2907
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x138

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method setAssistantVisible(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1166
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAssistantVisible:Z

    .line 1167
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method public setCredentialAttempted()V
    .locals 1

    const/4 v0, 0x1

    .line 570
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCredentialAttempted:Z

    .line 571
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method public setHasLockscreenWallpaper(Z)V
    .locals 2

    .line 2391
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2392
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasLockscreenWallpaper:Z

    if-eq p1, v0, :cond_1

    .line 2393
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHasLockscreenWallpaper:Z

    const/4 v0, 0x0

    .line 2394
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2395
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 2397
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onHasLockscreenWallpaperChanged(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setKeyguardBypassController(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .locals 0

    .line 2874
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-void
.end method

.method public setKeyguardGoingAway(Z)V
    .locals 0

    .line 578
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    .line 579
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 0

    .line 586
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    .line 587
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState()V

    return-void
.end method

.method protected setStrongAuthTracker(Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1624
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    if-eqz v0, :cond_0

    .line 1625
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->unregisterStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    .line 1628
    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 1629
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    return-void
.end method

.method public setSwitchingUser(Z)V
    .locals 0

    .line 2883
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    .line 2885
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUpdateBiometricListeningState:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public shouldListenForFace()Z
    .locals 24

    move-object/from16 v0, p0

    .line 2130
    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceManager:Landroid/hardware/face/FaceManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2135
    :cond_0
    iget v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStatusBarState:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v3, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v2

    .line 2136
    :goto_0
    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-nez v5, :cond_2

    if-nez v1, :cond_2

    move v13, v4

    goto :goto_1

    :cond_2
    move v13, v2

    .line 2138
    :goto_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v9

    .line 2139
    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v1, v9}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v1

    .line 2141
    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->containsFlag(II)Z

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x20

    .line 2142
    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->containsFlag(II)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v3, v4

    .line 2144
    :goto_3
    invoke-direct {v0, v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->containsFlag(II)Z

    move-result v5

    if-nez v5, :cond_6

    const/16 v5, 0x10

    .line 2145
    invoke-direct {v0, v1, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->containsFlag(II)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_5

    :cond_6
    :goto_4
    move v1, v4

    .line 2147
    :goto_5
    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    if-eqz v5, :cond_7

    .line 2148
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->canBypass()Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v4

    goto :goto_6

    :cond_7
    move v5, v2

    .line 2152
    :goto_6
    invoke-virtual {v0, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v5, :cond_8

    goto :goto_7

    :cond_8
    move/from16 v17, v2

    goto :goto_8

    :cond_9
    :goto_7
    move/from16 v17, v4

    :goto_8
    if-eqz v1, :cond_b

    if-eqz v5, :cond_a

    .line 2156
    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v1, :cond_a

    goto :goto_9

    :cond_a
    move v1, v2

    goto :goto_a

    :cond_b
    :goto_9
    move v1, v4

    .line 2160
    :goto_a
    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceSensorProperties:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceSensorProperties:Ljava/util/List;

    .line 2161
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget-boolean v5, v5, Landroid/hardware/face/FaceSensorPropertiesInternal;->supportsFaceDetection:Z

    if-eqz v5, :cond_c

    move v5, v4

    goto :goto_b

    :cond_c
    move v5, v2

    :goto_b
    if-eqz v3, :cond_d

    if-nez v5, :cond_d

    move/from16 v21, v2

    goto :goto_c

    :cond_d
    move/from16 v21, v1

    .line 2168
    :goto_c
    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-nez v1, :cond_e

    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthInterruptActive:Z

    if-nez v1, :cond_e

    if-nez v13, :cond_e

    .line 2170
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFaceAssistant()Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    if-nez v1, :cond_f

    .line 2171
    invoke-direct {v0, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v1

    if-nez v1, :cond_f

    if-eqz v17, :cond_f

    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-nez v1, :cond_f

    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledForUser:Landroid/util/SparseBooleanArray;

    .line 2172
    invoke-virtual {v1, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockIconPressed:Z

    if-nez v1, :cond_f

    if-eqz v21, :cond_f

    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPrimaryUser:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    if-nez v1, :cond_f

    move v2, v4

    .line 2177
    :cond_f
    sget-boolean v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->DEBUG_FACE:Z

    if-nez v1, :cond_10

    goto :goto_d

    .line 2178
    :cond_10
    new-instance v1, Lcom/android/keyguard/KeyguardFaceListenModel;

    move-object v6, v1

    .line 2179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-boolean v11, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    iget-boolean v12, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthInterruptActive:Z

    .line 2185
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFaceAssistant()Z

    move-result v14

    iget-boolean v15, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    .line 2187
    invoke-direct {v0, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v16

    iget-boolean v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    move/from16 v18, v3

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledForUser:Landroid/util/SparseBooleanArray;

    .line 2190
    invoke-virtual {v3, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v19

    iget-boolean v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLockIconPressed:Z

    move/from16 v20, v3

    iget-boolean v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPrimaryUser:Z

    move/from16 v22, v3

    iget-boolean v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    move/from16 v23, v3

    move v10, v2

    invoke-direct/range {v6 .. v23}, Lcom/android/keyguard/KeyguardFaceListenModel;-><init>(JIZZZZZZZZZZZZZZ)V

    .line 2195
    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->maybeLogFaceListenerModelData(Lcom/android/keyguard/KeyguardFaceListenModel;)V

    :goto_d
    return v2
.end method

.method protected shouldListenForFingerprint(Z)Z
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2096
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardIsVisible:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-nez v0, :cond_3

    .line 2101
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFingerprintAssistant()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz v0, :cond_1

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-nez v3, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v2

    .line 2107
    :goto_1
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    if-nez v3, :cond_5

    .line 2109
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDisabled(I)Z

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v3, :cond_5

    :cond_4
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsPrimaryUser:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledForUser:Landroid/util/SparseBooleanArray;

    .line 2112
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v1

    .line 2114
    :goto_2
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOut:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBouncer:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCredentialAttempted:Z

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    move v4, v1

    goto :goto_4

    :cond_7
    :goto_3
    move v4, v2

    :goto_4
    if-eqz p1, :cond_9

    .line 2118
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 2119
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isEncryptedOrLockdown(I)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 2120
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_5

    :cond_8
    move p0, v1

    goto :goto_6

    :cond_9
    :goto_5
    move p0, v2

    :goto_6
    if-eqz v0, :cond_a

    if-eqz v3, :cond_a

    if-eqz v4, :cond_a

    if-eqz p0, :cond_a

    move v1, v2

    :cond_a
    return v1
.end method

.method updateTelephonyCapable(Z)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2595
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2596
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyCapable:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2599
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyCapable:Z

    const/4 p1, 0x0

    .line 2600
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 2601
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_1

    .line 2603
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyCapable:Z

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onTelephonyCapable(Z)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public userNeedsStrongAuth()Z
    .locals 1

    .line 1124
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
