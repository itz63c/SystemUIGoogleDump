.class public Lcom/android/systemui/statusbar/KeyguardIndicationController;
.super Ljava/lang/Object;
.source "KeyguardIndicationController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;
    }
.end annotation


# instance fields
.field private mAlignmentIndication:Ljava/lang/String;

.field private final mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryLevel:I

.field private mBatteryOverheated:Z

.field private mBatteryPresent:Z

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mChargingSpeed:I

.field private mChargingTimeRemaining:J

.field private mChargingWattage:I

.field private final mClippingParams:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

.field private final mContext:Landroid/content/Context;

.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private mDozing:Z

.field private mEnableBatteryDefender:Z

.field private final mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mHandler:Landroid/os/Handler;

.field private mHideTransientMessageOnScreenOff:Z

.field private final mIActivityManager:Landroid/app/IActivityManager;

.field private mIndicationArea:Landroid/view/ViewGroup;

.field protected mInitialTextColorState:Landroid/content/res/ColorStateList;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLockIconController:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mLockScreenMode:I

.field private mMessageToShowOnScreenOn:Ljava/lang/String;

.field private mPowerCharged:Z

.field private mPowerPluggedIn:Z

.field private mPowerPluggedInWired:Z

.field private mRestingIndication:Ljava/lang/String;

.field protected mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private final mTickReceiver:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private mTransientIndication:Ljava/lang/CharSequence;

.field private mTransientTextIsError:Z

.field private mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUserManager:Landroid/os/UserManager;

.field private mVisible:Z

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;


# direct methods
.method public static synthetic $r8$lambda$_EbDkTOKzRYp9bqhb01jE2aOQq0(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isOrganizationOwnedDevice()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ahsxqAoPkEAyY6JeiJNYK1QRiY8(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->lambda$new$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$veVef2JZ9Ngmg90fg-JGRmA3GxQ(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wdh_kG9qK46pWv10q_3OP7pBhYY(Lcom/android/systemui/statusbar/KeyguardIndicationController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->lambda$updateLogoutView$2(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/app/IBatteryStats;Landroid/os/UserManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 2

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryPresent:Z

    .line 153
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mClippingParams:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    .line 821
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTickReceiver:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 831
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    .line 1078
    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$6;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 176
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 177
    iput-object p7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 178
    iput-object p8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 179
    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 180
    iput-object p4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 181
    iput-object p5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 182
    iput-object p6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 183
    new-instance p7, Lcom/android/systemui/statusbar/KeyguardIndicationController-$$ExternalSyntheticLambda1;

    invoke-direct {p7, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-interface {p6, p7}, Lcom/android/systemui/dock/DockManager;->addAlignmentStateListener(Lcom/android/systemui/dock/DockManager$AlignmentStateListener;)V

    .line 185
    new-instance p6, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const-string p7, "Doze:KeyguardIndication"

    .line 186
    invoke-virtual {p2, p7}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->setTag(Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->build()Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p2

    const-string p7, "KeyguardIndication"

    invoke-direct {p6, p2, p7}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V

    iput-object p6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    .line 187
    iput-object p9, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 188
    iput-object p10, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUserManager:Landroid/os/UserManager;

    .line 189
    iput-object p11, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 190
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 191
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIActivityManager:Landroid/app/IActivityManager;

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 194
    invoke-virtual {p5, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 195
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {p4, p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 196
    invoke-interface {p3, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/view/ViewGroup;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    .line 97
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/content/Context;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    .line 97
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$1302(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryPresent:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryOverheated:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryOverheated:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mEnableBatteryDefender:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/KeyguardIndicationController;J)J
    .locals 0

    .line 97
    iput-wide p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingTimeRemaining:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/internal/app/IBatteryStats;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mClippingParams:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/CharSequence;ZZ)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Landroid/os/Handler;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHideTransientMessageOnScreenOff:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIconController:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showSwipeUpToUnlock()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z
    .locals 0

    .line 97
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    return p0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)Z
    .locals 0

    .line 97
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)I
    .locals 0

    .line 97
    iput p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingWattage:I

    return p1
.end method

.method private animateText(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/String;)V
    .locals 5

    .line 720
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$integer;->wired_charging_keyguard_text_animation_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 722
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$integer;->wired_charging_keyguard_text_animation_duration_up:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 724
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$integer;->wired_charging_keyguard_text_animation_duration_down:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 726
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 727
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mClippingParams:Lcom/android/internal/widget/ViewClippingUtil$ClippingParameters;

    const/4 v4, 0x1

    invoke-static {p1, v4, v3}, Lcom/android/internal/widget/ViewClippingUtil;->setClippingDeactivated(Landroid/view/View;ZLcom/android/internal/widget/ViewClippingUtil$ClippingParameters;)V

    .line 728
    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-float v0, v0

    .line 729
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 730
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v3, v1

    .line 731
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/String;I)V

    .line 732
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private getOrganizationOwnedDeviceOrganizationName()Ljava/lang/CharSequence;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getWorkProfileOrganizationName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTrustManagedIndication()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private getWorkProfileOrganizationName()Ljava/lang/CharSequence;
    .locals 2

    .line 479
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getWorkProfileUserId(I)I

    move-result v0

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 483
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getWorkProfileUserId(I)I
    .locals 1

    .line 487
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/UserInfo;

    .line 488
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget p0, p1, Landroid/content/pm/UserInfo;->id:I

    return p0

    :cond_1
    const/16 p0, -0x2710

    return p0
.end method

.method private handleAlignStateChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 233
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->dock_alignment_slow_charging:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 236
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->dock_alignment_not_charging:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 239
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAlignmentIndication:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 240
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAlignmentIndication:Ljava/lang/String;

    const/4 p1, 0x0

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    :cond_2
    return-void
.end method

.method private isOrganizationOwnedDevice()Z
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isDeviceManaged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 465
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

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

.method private synthetic lambda$new$0(I)V
    .locals 0

    .line 184
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->handleAlignStateChanged(I)V

    return-void
.end method

.method private synthetic lambda$new$1(I)V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController-$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$updateLogoutView$2(Landroid/view/View;)V
    .locals 2

    .line 447
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 450
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, v1}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "KeyguardIndication"

    const-string v0, "Failed to logout user"

    .line 453
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private showSwipeUpToUnlock()V
    .locals 3

    .line 847
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-eqz v0, :cond_0

    return-void

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 852
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->keyguard_retry:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 853
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncerMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 854
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 855
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->keyguard_unlock:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;ZZ)V

    const-wide/16 v0, 0x1388

    .line 857
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method private showTransientIndication(Ljava/lang/CharSequence;ZZ)V
    .locals 2

    .line 575
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 576
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHideTransientMessageOnScreenOff:Z

    .line 577
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextIsError:Z

    .line 578
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 579
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 580
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 582
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {p1, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    const-wide/16 p1, 0x1388

    .line 583
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    .line 586
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    return-void
.end method

.method private updateAlignment()V
    .locals 4

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAlignmentIndication:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    invoke-direct {v2}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAlignmentIndication:Ljava/lang/String;

    .line 402
    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 403
    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorError(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setTextColor(Landroid/content/res/ColorStateList;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object p0

    .line 404
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->build()Lcom/android/systemui/keyguard/KeyguardIndication;

    move-result-object p0

    const/4 v2, 0x1

    .line 399
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    goto :goto_0

    .line 407
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    :goto_0
    return-void
.end method

.method private updateBattery(Z)V
    .locals 4

    .line 328
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    const/4 v1, 0x3

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mEnableBatteryDefender:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    goto :goto_1

    .line 329
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    move-result-object v0

    .line 334
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    invoke-direct {v3}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;-><init>()V

    .line 337
    invoke-virtual {v3, v0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 338
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setTextColor(Landroid/content/res/ColorStateList;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object p0

    .line 339
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->build()Lcom/android/systemui/keyguard/KeyguardIndication;

    move-result-object p0

    .line 334
    invoke-virtual {v2, v1, p0, p1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    :goto_1
    return-void
.end method

.method private updateDisclosure()V
    .locals 6

    .line 278
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController-$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 279
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getOrganizationOwnedDeviceOrganizationName()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 281
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->do_disclosure_with_name:I

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/systemui/R$string;->do_disclosure_generic:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 284
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    new-instance v4, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    invoke-direct {v4}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;-><init>()V

    .line 287
    invoke-virtual {v4, v0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 288
    invoke-virtual {v0, v4}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setTextColor(Landroid/content/res/ColorStateList;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->build()Lcom/android/systemui/keyguard/KeyguardIndication;

    move-result-object v0

    .line 284
    invoke-virtual {v3, v1, v0, v2}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    goto :goto_1

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    .line 295
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isKeyguardLayoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateResting()V

    :cond_2
    return-void
.end method

.method private updateIndications(ZI)V
    .locals 1

    .line 266
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateOwnerInfo()V

    .line 267
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateBattery(Z)V

    .line 268
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateUserLocked(I)V

    .line 269
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateTransient()V

    .line 270
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTrustGrantedIndication()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTrustManagedIndication()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateTrust(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 271
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateAlignment()V

    .line 272
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateLogoutView()V

    .line 273
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateResting()V

    return-void
.end method

.method private updateLogoutView()V
    .locals 6

    .line 431
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isKeyguardLayoutEnabled()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 432
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    return-void

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLogoutEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 436
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    invoke-direct {v3}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 441
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040397

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 443
    invoke-virtual {v3, v4}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setTextColor(Landroid/content/res/ColorStateList;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/systemui/R$drawable;->logout_button_background:I

    .line 444
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setBackground(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/KeyguardIndicationController-$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    .line 446
    invoke-virtual {v3, v4}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setClickListener(Landroid/view/View$OnClickListener;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object p0

    .line 456
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->build()Lcom/android/systemui/keyguard/KeyguardIndication;

    move-result-object p0

    .line 438
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    goto :goto_1

    .line 459
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    :goto_1
    return-void
.end method

.method private updateOwnerInfo()V
    .locals 4

    .line 301
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->isKeyguardLayoutEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 302
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 308
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 309
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 308
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 315
    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    invoke-direct {v3}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;-><init>()V

    .line 318
    invoke-virtual {v3, v0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 319
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setTextColor(Landroid/content/res/ColorStateList;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object p0

    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->build()Lcom/android/systemui/keyguard/KeyguardIndication;

    move-result-object p0

    .line 315
    invoke-virtual {v2, v1, p0, v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    goto :goto_0

    .line 323
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    :goto_0
    return-void
.end method

.method private updateResting()V
    .locals 4

    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRestingIndication:Ljava/lang/String;

    const/4 v1, 0x7

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    .line 413
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hasIndications()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    invoke-direct {v2}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRestingIndication:Ljava/lang/String;

    .line 417
    invoke-virtual {v2, v3}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 418
    invoke-virtual {v2, p0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setTextColor(Landroid/content/res/ColorStateList;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object p0

    .line 419
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->build()Lcom/android/systemui/keyguard/KeyguardIndication;

    move-result-object p0

    const/4 v2, 0x0

    .line 414
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    goto :goto_0

    .line 422
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    :goto_0
    return-void
.end method

.method private updateTransient()V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextIsError:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->showTransient(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    .line 367
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideTransient()V

    :goto_0
    return-void
.end method

.method private updateTrust(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    .line 373
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 374
    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    new-instance p3, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    invoke-direct {p3}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;-><init>()V

    .line 378
    invoke-virtual {p3, p2}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 379
    invoke-virtual {p2, p0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setTextColor(Landroid/content/res/ColorStateList;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object p0

    .line 380
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->build()Lcom/android/systemui/keyguard/KeyguardIndication;

    move-result-object p0

    .line 375
    invoke-virtual {p1, v2, p0, v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    goto :goto_0

    .line 382
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 383
    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 384
    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 385
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    new-instance p2, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    invoke-direct {p2}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;-><init>()V

    .line 388
    invoke-virtual {p2, p3}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object p2

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 389
    invoke-virtual {p2, p0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setTextColor(Landroid/content/res/ColorStateList;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object p0

    .line 390
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->build()Lcom/android/systemui/keyguard/KeyguardIndication;

    move-result-object p0

    .line 385
    invoke-virtual {p1, v2, p0, v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    goto :goto_0

    .line 393
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    invoke-virtual {p0, v2}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    :goto_0
    return-void
.end method

.method private updateUserLocked(I)V
    .locals 4

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_0

    .line 349
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    invoke-direct {v1}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    .line 352
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040481

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 354
    invoke-virtual {v1, p0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->setTextColor(Landroid/content/res/ColorStateList;)Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    move-result-object p0

    .line 355
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->build()Lcom/android/systemui/keyguard/KeyguardIndication;

    move-result-object p0

    const/4 v1, 0x0

    .line 349
    invoke-virtual {p1, v0, p0, v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->updateIndication(ILcom/android/systemui/keyguard/KeyguardIndication;Z)V

    goto :goto_0

    .line 358
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected computePowerIndication()Ljava/lang/String;
    .locals 8

    .line 770
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    if-eqz v0, :cond_0

    .line 771
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->keyguard_charged:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 775
    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 776
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryOverheated:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 777
    sget v1, Lcom/android/systemui/R$string;->keyguard_plugged_in_charging_limited:I

    .line 778
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {p0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 781
    :cond_1
    iget-wide v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingTimeRemaining:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    .line 782
    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    const/4 v7, 0x2

    if-eqz v6, :cond_8

    .line 783
    iget v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    if-eqz v6, :cond_6

    if-eq v6, v7, :cond_4

    if-eqz v1, :cond_3

    .line 796
    sget v6, Lcom/android/systemui/R$string;->keyguard_indication_charging_time:I

    goto :goto_1

    .line 797
    :cond_3
    sget v6, Lcom/android/systemui/R$string;->keyguard_plugged_in:I

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 786
    sget v6, Lcom/android/systemui/R$string;->keyguard_indication_charging_time_fast:I

    goto :goto_1

    .line 787
    :cond_5
    sget v6, Lcom/android/systemui/R$string;->keyguard_plugged_in_charging_fast:I

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    .line 791
    sget v6, Lcom/android/systemui/R$string;->keyguard_indication_charging_time_slowly:I

    goto :goto_1

    .line 792
    :cond_7
    sget v6, Lcom/android/systemui/R$string;->keyguard_plugged_in_charging_slowly:I

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_9

    .line 802
    sget v6, Lcom/android/systemui/R$string;->keyguard_indication_charging_time_wireless:I

    goto :goto_1

    .line 803
    :cond_9
    sget v6, Lcom/android/systemui/R$string;->keyguard_plugged_in_wireless:I

    :goto_1
    if-eqz v1, :cond_a

    .line 807
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v5}, Landroid/text/format/Formatter;->formatShortElapsedTimeRoundingUpToMinutes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 809
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    invoke-virtual {p0, v6, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 812
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p0, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "KeyguardIndicationController:"

    .line 862
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTransientTextIsError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextIsError:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInitialTextColorState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerPluggedInWired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerPluggedIn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerCharged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mChargingSpeed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mChargingWattage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingWattage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMessageToShowOnScreenOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mMessageToShowOnScreenOn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBatteryLevel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBatteryPresent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTextView.getText(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 874
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  computePowerIndication(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 877
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 259
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object p0
.end method

.method getTrustGrantedIndication()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 527
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->keyguard_indication_trust_unlocked:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideTransientIndication()V
    .locals 3

    .line 593
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 594
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 595
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHideTransientMessageOnScreenOff:Z

    .line 596
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 597
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideTransient()V

    .line 598
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    :cond_0
    return-void
.end method

.method public hideTransientIndicationDelayed(J)V
    .locals 1

    .line 551
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 552
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 551
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected isKeyguardLayoutEnabled()Z
    .locals 1

    .line 427
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockScreenMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onUnlockedChanged()V
    .locals 1

    .line 882
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    return-void
.end method

.method public setIndicationArea(Landroid/view/ViewGroup;)V
    .locals 4

    .line 200
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    .line 201
    sget v0, Lcom/android/systemui/R$id;->keyguard_indication_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 204
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    sget v1, Lcom/android/systemui/R$id;->keyguard_indication_text_bottom:I

    .line 205
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockScreenMode:I

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    const/4 p1, 0x0

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateDisclosure()V

    .line 211
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_1

    .line 213
    new-instance p1, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 219
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 220
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_REMOVED"

    .line 221
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_1
    return-void
.end method

.method public setLockIconController(Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockIconController:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    return-void
.end method

.method setPowerPluggedIn(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 535
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return-void
.end method

.method public setStatusBarKeyguardViewManager(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 0

    .line 818
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-void
.end method

.method protected setVisible(Z)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 497
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    .line 498
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 502
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 503
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    .line 505
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndication(Z)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 508
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    :cond_3
    :goto_1
    return-void
.end method

.method public showTransientIndication(I)V
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showTransientIndication(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 566
    invoke-direct {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;ZZ)V

    return-void
.end method

.method protected final updateIndication(Z)V
    .locals 11

    .line 603
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/wakelock/SettableWakeLock;->setAcquired(Z)V

    .line 607
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    if-nez v0, :cond_1

    return-void

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 617
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 618
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 622
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 623
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    goto :goto_1

    .line 624
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryPresent:Z

    if-nez v0, :cond_3

    .line 626
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 627
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAlignmentIndication:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 628
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAlignmentIndication:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    .line 629
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$color;->misalignment_text_color:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 630
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mEnableBatteryDefender:Z

    if-eqz v0, :cond_5

    goto :goto_0

    .line 638
    :cond_5
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object p1

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 639
    invoke-virtual {p1, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 640
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    goto :goto_1

    .line 631
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_7

    .line 633
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->animateText(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/String;)V

    goto :goto_1

    .line 635
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    :goto_1
    return-void

    .line 647
    :cond_8
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 649
    iget v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockScreenMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 650
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 651
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateIndications(ZI)V

    goto/16 :goto_b

    .line 655
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTrustGrantedIndication()Ljava/lang/String;

    move-result-object v4

    .line 656
    invoke-direct {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTrustManagedIndication()Ljava/lang/String;

    move-result-object v6

    .line 659
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-nez v7, :cond_b

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mEnableBatteryDefender:Z

    if-eqz v7, :cond_a

    goto :goto_2

    :cond_a
    move-object v7, v3

    goto :goto_3

    .line 660
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->computePowerIndication()Ljava/lang/String;

    move-result-object v7

    .line 662
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    move-result v8

    if-nez v8, :cond_c

    .line 663
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const v0, 0x1040481

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(I)V

    goto/16 :goto_6

    .line 665
    :cond_c
    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x2

    if-nez v8, :cond_e

    if-eqz v7, :cond_d

    .line 666
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-virtual {p1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 667
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->keyguard_indication_trust_unlocked_plugged_in:I

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    aput-object v6, v4, v1

    aput-object v7, v4, v5

    invoke-virtual {p1, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 670
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, p1, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    .line 671
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryPresent:Z

    xor-int/lit8 v1, p1, 0x1

    goto :goto_4

    .line 673
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    .line 675
    :goto_4
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientTextIsError:Z

    move v10, v1

    move v1, p1

    move p1, v10

    goto/16 :goto_9

    .line 676
    :cond_e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_10

    iget-object v8, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 677
    invoke-virtual {v8, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v8

    if-eqz v8, :cond_10

    if-eqz v7, :cond_f

    .line 679
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$string;->keyguard_indication_trust_unlocked_plugged_in:I

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v4, v6, v1

    aput-object v7, v6, v5

    invoke-virtual {p1, v0, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 682
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, p1, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    .line 683
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryPresent:Z

    :goto_5
    xor-int/2addr p1, v5

    goto :goto_9

    .line 685
    :cond_f
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p1, v4, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    goto :goto_6

    .line 687
    :cond_10
    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAlignmentIndication:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 688
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAlignmentIndication:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    .line 690
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryPresent:Z

    xor-int/lit8 v1, p1, 0x1

    move p1, v1

    move v1, v5

    goto :goto_9

    .line 691
    :cond_11
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-nez v4, :cond_14

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mEnableBatteryDefender:Z

    if-eqz v4, :cond_12

    goto :goto_7

    .line 701
    :cond_12
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 702
    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 703
    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result p1

    if-nez p1, :cond_13

    .line 704
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p1, v6, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    goto :goto_6

    .line 706
    :cond_13
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRestingIndication:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    :goto_6
    move p1, v1

    goto :goto_9

    :cond_14
    :goto_7
    if-eqz p1, :cond_15

    .line 696
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-direct {p0, p1, v7}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->animateText(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Ljava/lang/String;)V

    goto :goto_8

    .line 698
    :cond_15
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p1, v7, v3}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->switchIndication(Ljava/lang/CharSequence;Lcom/android/systemui/keyguard/KeyguardIndication;)V

    .line 700
    :goto_8
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryPresent:Z

    goto :goto_5

    .line 709
    :goto_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v1, :cond_16

    .line 710
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getColorError(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_a

    :cond_16
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    .line 709
    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-eqz p1, :cond_17

    .line 713
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_17
    :goto_b
    return-void
.end method
