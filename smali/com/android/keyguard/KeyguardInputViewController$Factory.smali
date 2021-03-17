.class public Lcom/android/keyguard/KeyguardInputViewController$Factory;
.super Ljava/lang/Object;
.source "KeyguardInputViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardInputViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private final mIsNewLayoutEnabled:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field private mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

.field private final mResources:Landroid/content/res/Resources;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/FeatureFlags;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 174
    iput-object p2, p0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 175
    iput-object p3, p0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    .line 176
    iput-object p4, p0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    .line 177
    iput-object p5, p0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 178
    iput-object p6, p0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 179
    iput-object p7, p0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mResources:Landroid/content/res/Resources;

    .line 180
    iput-object p8, p0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    .line 181
    iput-object p9, p0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 182
    iput-object p10, p0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 183
    invoke-virtual {p11}, Lcom/android/systemui/statusbar/FeatureFlags;->isKeyguardLayoutEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mIsNewLayoutEnabled:Z

    return-void
.end method


# virtual methods
.method public create(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;)Lcom/android/keyguard/KeyguardInputViewController;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 189
    instance-of v2, v1, Lcom/android/keyguard/KeyguardPatternView;

    if-eqz v2, :cond_0

    .line 190
    new-instance v2, Lcom/android/keyguard/KeyguardPatternViewController;

    move-object v4, v1

    check-cast v4, Lcom/android/keyguard/KeyguardPatternView;

    iget-object v5, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    move-object v3, v2

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/keyguard/KeyguardPatternViewController;-><init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;)V

    return-object v2

    .line 193
    :cond_0
    instance-of v2, v1, Lcom/android/keyguard/KeyguardPasswordView;

    if-eqz v2, :cond_1

    .line 194
    new-instance v2, Lcom/android/keyguard/KeyguardPasswordViewController;

    move-object v4, v1

    check-cast v4, Lcom/android/keyguard/KeyguardPasswordView;

    iget-object v5, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mResources:Landroid/content/res/Resources;

    move-object v3, v2

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v13}, Lcom/android/keyguard/KeyguardPasswordViewController;-><init>(Lcom/android/keyguard/KeyguardPasswordView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;)V

    return-object v2

    .line 198
    :cond_1
    instance-of v2, v1, Lcom/android/keyguard/KeyguardPINView;

    if-eqz v2, :cond_2

    .line 199
    new-instance v2, Lcom/android/keyguard/KeyguardPinViewController;

    move-object v4, v1

    check-cast v4, Lcom/android/keyguard/KeyguardPINView;

    iget-object v5, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-boolean v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mIsNewLayoutEnabled:Z

    move-object v3, v2

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v13}, Lcom/android/keyguard/KeyguardPinViewController;-><init>(Lcom/android/keyguard/KeyguardPINView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/systemui/classifier/FalsingCollector;Z)V

    return-object v2

    .line 203
    :cond_2
    instance-of v2, v1, Lcom/android/keyguard/KeyguardSimPinView;

    if-eqz v2, :cond_3

    .line 204
    new-instance v2, Lcom/android/keyguard/KeyguardSimPinViewController;

    move-object v4, v1

    check-cast v4, Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v5, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-boolean v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mIsNewLayoutEnabled:Z

    move-object v3, v2

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v14}, Lcom/android/keyguard/KeyguardSimPinViewController;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Z)V

    return-object v2

    .line 209
    :cond_3
    instance-of v2, v1, Lcom/android/keyguard/KeyguardSimPukView;

    if-eqz v2, :cond_4

    .line 210
    new-instance v2, Lcom/android/keyguard/KeyguardSimPukViewController;

    move-object v4, v1

    check-cast v4, Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v5, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-boolean v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mIsNewLayoutEnabled:Z

    move-object v3, v2

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    invoke-direct/range {v3 .. v14}, Lcom/android/keyguard/KeyguardSimPukViewController;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Z)V

    return-object v2

    .line 217
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find controller for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
