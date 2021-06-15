.class public Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "EdgeBackGestureHandler.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/shared/tracing/ProtoTraceable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/settings/CurrentUserTracker;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;",
        ">;",
        "Lcom/android/systemui/shared/tracing/ProtoTraceable<",
        "Lcom/android/systemui/tracing/nano/SystemUiTraceProto;",
        ">;"
    }
.end annotation


# static fields
.field private static final ENABLE_PER_WINDOW_INPUT_ROTATION:Z

.field private static final MAX_LONG_PRESS_TIMEOUT:I


# instance fields
.field private mAllowGesture:Z

.field private final mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

.field private mBackGestureTfClassifierProvider:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

.field private mBottomGestureHeight:F

.field private final mContext:Landroid/content/Context;

.field private mDisabledForQuickstep:Z

.field private final mDisplayId:I

.field private final mDisplaySize:Landroid/graphics/Point;

.field private final mDownPoint:Landroid/graphics/PointF;

.field private mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

.field private mEdgeWidthLeft:I

.field private mEdgeWidthRight:I

.field private final mEndPoint:Landroid/graphics/PointF;

.field private final mExcludeRegion:Landroid/graphics/Region;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mGestureBlockingActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureBlockingActivityRunning:Z

.field private mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

.field private mGestureLog:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

.field private mInRejectedExclusion:Z

.field private mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field private mInputMonitor:Landroid/view/InputMonitor;

.field private mIsAttached:Z

.field private mIsBackGestureAllowed:Z

.field private mIsEnabled:Z

.field private mIsGesturalModeEnabled:Z

.field private mIsNavBarShownTransiently:Z

.field private mIsOnLeftEdge:Z

.field private mLeftInset:I

.field private mLogGesture:Z

.field private final mLongPressTimeout:I

.field private mMLEnableWidth:I

.field private mMLModelThreshold:F

.field private mMLResults:F

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field private mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private mPackageName:Ljava/lang/String;

.field private final mPipExcludedBounds:Landroid/graphics/Rect;

.field private final mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

.field private mPredictionLog:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProtoTracer:Lcom/android/systemui/tracing/ProtoTracer;

.field private mQuickSwitchListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

.field private mRightInset:I

.field private mStartingQuickstepRotation:I

.field private mStateChangeCallback:Ljava/lang/Runnable;

.field private mSysUiFlags:I

.field private final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field private final mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

.field private mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private mThresholdCrossed:Z

.field private mTouchSlop:F

.field private final mUnrestrictedExcludeRegion:Landroid/graphics/Region;

.field private mUseMLModel:Z

.field private final mViewConfiguration:Landroid/view/ViewConfiguration;

.field private mVocab:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public static synthetic $r8$lambda$pnKD_sJ_AQoKVUXkvmwEaDoHMYs(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;Landroid/view/InputEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tLJhVVQ9rTLXNzujC13aXAWGRDc(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onNavigationSettingsChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gestures.back_timeout"

    const/16 v1, 0xfa

    .line 100
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->MAX_LONG_PRESS_TIMEOUT:I

    const-string v0, "persist.debug.per_window_input_rotation"

    const/4 v1, 0x0

    .line 111
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->ENABLE_PER_WINDOW_INPUT_ROTATION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/shared/plugins/PluginManager;Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/tracing/ProtoTracer;Lcom/android/systemui/navigationbar/NavigationModeController;Landroid/view/ViewConfiguration;Landroid/view/WindowManager;Landroid/view/IWindowManager;Lcom/android/systemui/plugins/FalsingManager;)V
    .locals 2

    const-string v0, "EdgeBackGestureHandler"

    .line 291
    invoke-direct {p0, p6}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 113
    new-instance p6, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$1;

    invoke-direct {p6, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$1;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object p6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    .line 128
    new-instance p6, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$2;

    invoke-direct {p6, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$2;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object p6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mQuickSwitchListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 137
    new-instance p6, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$3;

    invoke-direct {p6, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$3;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object p6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 152
    new-instance p6, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$4;

    invoke-direct {p6, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$4;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object p6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 182
    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureBlockingActivities:Ljava/util/List;

    .line 184
    new-instance p6, Landroid/graphics/Point;

    invoke-direct {p6}, Landroid/graphics/Point;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 189
    new-instance p6, Landroid/graphics/Rect;

    invoke-direct {p6}, Landroid/graphics/Rect;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPipExcludedBounds:Landroid/graphics/Rect;

    .line 190
    new-instance p6, Landroid/graphics/Region;

    invoke-direct {p6}, Landroid/graphics/Region;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    .line 191
    new-instance p6, Landroid/graphics/Region;

    invoke-direct {p6}, Landroid/graphics/Region;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    const/4 p6, -0x1

    .line 203
    iput p6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    .line 208
    new-instance p6, Landroid/graphics/PointF;

    invoke-direct {p6}, Landroid/graphics/PointF;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 209
    new-instance p6, Landroid/graphics/PointF;

    invoke-direct {p6}, Landroid/graphics/PointF;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    const/4 p6, 0x0

    .line 210
    iput-boolean p6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mThresholdCrossed:Z

    .line 211
    iput-boolean p6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 212
    iput-boolean p6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    .line 213
    iput-boolean p6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    .line 242
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPredictionLog:Ljava/util/ArrayDeque;

    .line 243
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureLog:Ljava/util/ArrayDeque;

    .line 247
    new-instance v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    .line 276
    new-instance v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$6;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

    .line 292
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplayId:I

    .line 294
    iput-object p5, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 295
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 296
    iput-object p3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 297
    iput-object p4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    .line 298
    iput-object p7, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mProtoTracer:Lcom/android/systemui/tracing/ProtoTracer;

    .line 299
    iput-object p8, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 300
    iput-object p9, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 301
    iput-object p10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mWindowManager:Landroid/view/WindowManager;

    .line 302
    iput-object p11, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 303
    iput-object p12, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const p2, 0x104026e

    .line 305
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 304
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 307
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 308
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 310
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    const-string p3, "gesture_blocking_activities"

    const-string p4, "array"

    .line 311
    invoke-virtual {p1, p3, p4, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "No resource found for gesture-blocking activities"

    .line 315
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 317
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 318
    array-length p2, p1

    :goto_0
    if-ge p6, p2, :cond_1

    aget-object p3, p1, p6

    .line 319
    iget-object p4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureBlockingActivities:Ljava/util/List;

    .line 320
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p3

    .line 319
    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to add gesture blocking activities"

    .line 324
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    :cond_1
    :goto_1
    sget p1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->MAX_LONG_PRESS_TIMEOUT:I

    .line 328
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p2

    .line 327
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLongPressTimeout:I

    .line 330
    new-instance p1, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    iget-object p2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 331
    invoke-virtual {p2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    new-instance p4, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    invoke-direct {p1, p2, p3, p4}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 333
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateCurrentUserResources()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)I
    .locals 0

    .line 96
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplayId:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateMLModelState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;II)Z
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->sendEvent(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Landroid/graphics/PointF;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Lcom/android/systemui/recents/OverviewProxyService;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;I)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->logGesture(I)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;I)I
    .locals 0

    .line 96
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiFlags:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Landroid/graphics/Region;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Landroid/graphics/Region;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;I)I
    .locals 0

    .line 96
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Landroid/content/Context;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;Landroid/content/res/Configuration;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateDisabledForQuickstep(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;Z)Z
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureBlockingActivityRunning:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Z
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isGestureBlockingActivityRunning()Z

    move-result p0

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPackageName:Ljava/lang/String;

    return-object p1
.end method

.method private cancelGesture(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 696
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 697
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    .line 698
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    .line 699
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    .line 700
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 701
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 702
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    .line 525
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 526
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/systemui/R$dimen;->navigation_edge_panel_width:I

    .line 527
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v1, Lcom/android/systemui/R$dimen;->navigation_edge_panel_height:I

    .line 528
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/16 v4, 0x7e8

    const v5, 0x800128

    const/4 v6, -0x3

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 535
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EdgeBackGestureHandler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 538
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->nav_bar_edge_panel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v7, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const/4 p0, 0x0

    .line 539
    iput p0, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 540
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    return-object v7
.end method

.method private disposeInputChannel()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->dispose()V

    .line 423
    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_1

    .line 426
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 427
    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_1
    return-void
.end method

.method private getBackGesturePredictionsCategory(III)I
    .locals 9

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return v0

    :cond_0
    int-to-double v1, p1

    .line 595
    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    cmpg-double v1, v1, v4

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-gtz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    sub-int p1, v3, p1

    move v1, v2

    :goto_0
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    new-array v6, v4, [J

    int-to-long v7, v3

    const/4 v3, 0x0

    aput-wide v7, v6, v3

    aput-object v6, v5, v3

    new-array v6, v4, [J

    int-to-long v7, p1

    aput-wide v7, v6, v3

    aput-object v6, v5, v4

    new-array p1, v4, [J

    int-to-long v6, v1

    aput-wide v6, p1, v3

    aput-object p1, v5, v2

    const/4 p1, 0x3

    new-array v1, v4, [J

    int-to-long v6, p3

    aput-wide v6, v1, v3

    aput-object v1, v5, p1

    const/4 p1, 0x4

    new-array p3, v4, [J

    int-to-long v1, p2

    aput-wide v1, p3, v3

    aput-object p3, v5, p1

    .line 611
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackGestureTfClassifierProvider:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    invoke-virtual {p1, v5}, Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;->predict([Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLResults:F

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, p1, p2

    if-nez p2, :cond_2

    return v0

    .line 615
    :cond_2
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLModelThreshold:F

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_3

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    return v4
.end method

.method private isGestureBlockingActivityRunning()Z
    .locals 2

    .line 911
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 912
    :cond_0
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    :goto_0
    if-eqz v0, :cond_1

    .line 914
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPackageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "_UNKNOWN"

    .line 916
    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPackageName:Ljava/lang/String;

    :goto_1
    if-eqz v0, :cond_2

    .line 918
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureBlockingActivities:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method private isWithinTouchRegion(II)Z
    .locals 13

    int-to-float v0, p2

    .line 620
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBottomGestureHeight:F

    sub-float/2addr v2, v3

    cmpl-float v0, v0, v2

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    return v2

    .line 627
    :cond_0
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr v0, v3

    const/4 v3, 0x2

    mul-int/2addr v0, v3

    if-le p1, v0, :cond_1

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mRightInset:I

    add-int/2addr v1, v4

    mul-int/2addr v1, v3

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    return v2

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPipExcludedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 638
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mVocab:Ljava/util/Map;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 639
    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    .line 644
    :goto_0
    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    iget v5, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr v4, v5

    const/4 v6, 0x1

    if-lt p1, v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget v7, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    sub-int/2addr v4, v7

    iget v7, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mRightInset:I

    sub-int/2addr v4, v7

    if-lt p1, v4, :cond_4

    goto :goto_1

    :cond_4
    move v4, v2

    goto :goto_2

    :cond_5
    :goto_1
    move v4, v6

    :goto_2
    if-eqz v4, :cond_9

    .line 651
    iget v7, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLEnableWidth:I

    add-int/2addr v5, v7

    if-lt p1, v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v7

    iget v7, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mRightInset:I

    sub-int/2addr v5, v7

    if-lt p1, v5, :cond_6

    goto :goto_3

    :cond_6
    move v5, v2

    goto :goto_4

    :cond_7
    :goto_3
    move v5, v6

    :goto_4
    if-nez v5, :cond_9

    .line 653
    iget-boolean v5, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    if-eqz v5, :cond_9

    .line 654
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->getBackGesturePredictionsCategory(III)I

    move-result v5

    if-eq v5, v1, :cond_9

    if-ne v5, v6, :cond_8

    move v4, v6

    goto :goto_5

    :cond_8
    move v4, v2

    .line 660
    :cond_9
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPredictionLog:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v5, 0xa

    if-lt v1, v5, :cond_a

    .line 661
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPredictionLog:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 663
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPredictionLog:Ljava/util/ArrayDeque;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    .line 664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v5, v3

    const/4 v0, 0x4

    iget v7, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLResults:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v0

    const/4 v0, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v0

    const-string v0, "Prediction [%d,%d,%d,%d,%f,%d]"

    .line 663
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 666
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPredictionLog:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "NoBackGesture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsNavBarShownTransiently:Z

    if-eqz v0, :cond_b

    .line 671
    iput-boolean v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    return v4

    .line 675
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v4, :cond_c

    .line 678
    iget-object v7, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    xor-int/lit8 v12, p1, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/android/systemui/recents/OverviewProxyService;->notifyBackAction(ZIIZZ)V

    .line 681
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p1, Landroid/graphics/PointF;->x:F

    .line 682
    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 683
    iput-boolean v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    .line 684
    invoke-direct {p0, v3}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->logGesture(I)V

    :cond_c
    return v2

    .line 689
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    .line 690
    iput-boolean v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    return v4
.end method

.method private logGesture(I)V
    .locals 13

    .line 706
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 709
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    .line 712
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mVocab:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mVocab:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 713
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    move-object v12, v0

    const/16 v1, 0xe0

    .line 715
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    float-to-int v3, v2

    .line 716
    iget-boolean v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    .line 718
    :goto_1
    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v5, v0

    float-to-int v6, v2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v0

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    add-int v9, v0, v2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    iget v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mRightInset:I

    add-int/2addr v2, v10

    sub-int v10, v0, v2

    .line 723
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    if-eqz v0, :cond_3

    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLResults:F

    goto :goto_2

    :cond_3
    const/high16 p0, -0x40000000    # -2.0f

    :goto_2
    move v11, p0

    move v2, p1

    .line 715
    invoke-static/range {v1 .. v12}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIIIIIIIIIFLjava/lang/String;)V

    return-void
.end method

.method private onInputEvent(Landroid/view/InputEvent;)V
    .locals 3

    .line 545
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    return-void

    .line 546
    :cond_0
    check-cast p1, Landroid/view/MotionEvent;

    .line 547
    sget-boolean v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->ENABLE_PER_WINDOW_INPUT_ROTATION:Z

    if-eqz v0, :cond_1

    .line 548
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 549
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_1

    .line 551
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 552
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 553
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 554
    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0, v2}, Landroid/view/MotionEvent;->createRotateMatrix(III)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 557
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 12

    .line 727
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x1

    const-string v7, "NoBackGesture"

    const/4 v8, 0x0

    if-nez v0, :cond_5

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Start gesture: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    invoke-virtual {v0, v8}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->setBatchingEnabled(Z)V

    .line 736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v9, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    iget v10, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v0, v0, v9

    if-gtz v0, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v8

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    const/4 v0, 0x0

    .line 737
    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLResults:F

    .line 738
    iput-boolean v8, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    .line 739
    iput-boolean v8, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    .line 740
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledForQuickstep:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureBlockingActivityRunning:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiFlags:I

    .line 742
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 743
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-direct {p0, v0, v9}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isWithinTouchRegion(II)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    goto :goto_1

    :cond_1
    move v0, v8

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v0, :cond_2

    .line 745
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    iget-boolean v9, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    invoke-interface {v0, v9}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setIsLeftPanel(Z)V

    .line 746
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 748
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    if-eqz v0, :cond_3

    .line 749
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v9, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 750
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 751
    iput-boolean v8, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mThresholdCrossed:Z

    .line 755
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureLog:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->size()I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_4

    .line 756
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureLog:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 758
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureLog:Ljava/util/ArrayDeque;

    const/16 v9, 0xb

    new-array v9, v9, [Ljava/lang/Object;

    .line 760
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v8

    iget-boolean v8, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v9, v6

    iget-boolean v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v9, v4

    const/4 v4, 0x3

    iget-boolean v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v9, v4

    const/4 v4, 0x4

    iget v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiFlags:I

    .line 761
    invoke-static {v6}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(I)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v9, v4

    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    aput-object v4, v9, v5

    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    .line 762
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v3

    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v2

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mRightInset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    aput-object v1, v9, v0

    const-string v0, "Gesture [%d,alw=%B,%B,%B,%B,disp=%s,wl=%d,il=%d,wr=%d,ir=%d,excl=%s]"

    .line 758
    invoke-static {v0, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 764
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureLog:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 766
    :cond_5
    iget-boolean v9, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    if-nez v9, :cond_6

    iget-boolean v9, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    if-eqz v9, :cond_f

    .line 767
    :cond_6
    iget-boolean v9, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mThresholdCrossed:Z

    if-nez v9, :cond_e

    .line 768
    iget-object v9, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    int-to-float v10, v10

    iput v10, v9, Landroid/graphics/PointF;->x:F

    .line 769
    iget-object v9, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    int-to-float v10, v10

    iput v10, v9, Landroid/graphics/PointF;->y:F

    if-ne v0, v5, :cond_8

    .line 771
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v0, :cond_7

    .line 772
    invoke-direct {p0, v3}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->logGesture(I)V

    const-string v0, "Cancel back: multitouch"

    .line 774
    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 779
    :cond_7
    iput-boolean v8, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    return-void

    :cond_8
    if-ne v0, v4, :cond_e

    .line 782
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    sub-long/2addr v3, v9

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLongPressTimeout:I

    int-to-long v9, v0

    cmp-long v0, v3, v9

    const-string v3, "  "

    if-lez v0, :cond_a

    .line 783
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v0, :cond_9

    .line 784
    invoke-direct {p0, v2}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->logGesture(I)V

    .line 785
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel back [longpress]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLongPressTimeout:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 787
    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_9
    iput-boolean v8, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    return-void

    .line 796
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 797
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v4, v2, v0

    if-lez v4, :cond_c

    .line 798
    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTouchSlop:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_c

    .line 799
    iget-boolean v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v4, :cond_b

    .line 800
    invoke-direct {p0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->logGesture(I)V

    .line 801
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 803
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel back [vertical move]: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTouchSlop:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_b
    iput-boolean v8, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    return-void

    :cond_c
    cmpl-float v1, v0, v2

    if-lez v1, :cond_e

    .line 809
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTouchSlop:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    .line 810
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v0, :cond_d

    .line 811
    iput-boolean v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mThresholdCrossed:Z

    .line 813
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v0}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 814
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    invoke-virtual {v0, v6}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->setBatchingEnabled(Z)V

    goto :goto_2

    .line 816
    :cond_d
    invoke-direct {p0, v5}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->logGesture(I)V

    .line 822
    :cond_e
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v0, :cond_f

    .line 824
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 828
    :cond_f
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mProtoTracer:Lcom/android/systemui/tracing/ProtoTracer;

    invoke-virtual {p0}, Lcom/android/systemui/tracing/ProtoTracer;->scheduleFrameUpdate()V

    return-void
.end method

.method private onNavigationSettingsChanged()V
    .locals 2

    .line 370
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isHandlingGestures()Z

    move-result v0

    .line 371
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateCurrentUserResources()V

    .line 372
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isHandlingGestures()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 373
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStateChangeCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private sendEvent(II)Z
    .locals 14

    .line 861
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 862
    new-instance v13, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x48

    const/16 v12, 0x101

    move-object v0, v13

    move-wide v1, v3

    move v5, p1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object v0, p0

    .line 867
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 868
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 869
    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v0

    return v0
.end method

.method private setEdgeBackPlugin(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    if-eqz v0, :cond_0

    .line 505
    invoke-interface {v0}, Lcom/android/systemui/plugins/Plugin;->onDestroy()V

    .line 507
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    .line 508
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setBackCallback(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;)V

    .line 509
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 510
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateDisplaySize()V

    return-void
.end method

.method private updateDisabledForQuickstep(Landroid/content/res/Configuration;)V
    .locals 2

    .line 832
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    .line 833
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledForQuickstep:Z

    return-void
.end method

.method private updateDisplaySize()V
    .locals 3

    .line 849
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    .line 850
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 851
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update display size: mDisplaySize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NoBackGesture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    if-eqz v0, :cond_0

    .line 856
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setDisplaySize(Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method private updateIsEnabled()V
    .locals 6

    .line 432
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsAttached:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsGesturalModeEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 433
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsEnabled:Z

    if-ne v0, v2, :cond_1

    return-void

    .line 436
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsEnabled:Z

    .line 437
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->disposeInputChannel()V

    .line 439
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    if-eqz v0, :cond_2

    .line 440
    invoke-interface {v0}, Lcom/android/systemui/plugins/Plugin;->onDestroy()V

    const/4 v0, 0x0

    .line 441
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    .line 444
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsEnabled:Z

    const-string v2, "EdgeBackGestureHandler"

    const-string v3, "NoBackGesture"

    if-nez v0, :cond_3

    .line 445
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->unregister()V

    const-string v0, "Unregister display listener"

    .line 447
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/shared/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 450
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 451
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplayId:I

    invoke-interface {v0, v1, v3}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Failed to unregister window manager callbacks"

    .line 457
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 461
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->register()V

    .line 462
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateDisplaySize()V

    const-string v0, "Register display listener"

    .line 464
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v3}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 467
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 468
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string/jumbo v4, "systemui"

    .line 467
    invoke-static {v4, v3, v0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 471
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplayId:I

    invoke-interface {v0, v3, v4}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "Failed to register window manager callbacks"

    .line 474
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    :goto_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplayId:I

    const-string v3, "edge-swipe"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 480
    new-instance v2, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 481
    invoke-virtual {v0}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 482
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 485
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->setEdgeBackPlugin(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V

    .line 486
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    const-class v2, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-interface {v0, p0, v2, v1}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 490
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateMLModelState()V

    return-void
.end method

.method private updateMLModelState()V
    .locals 6

    .line 561
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsEnabled:Z

    const/4 v1, 0x1

    const-string/jumbo v2, "systemui"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "use_back_gesture_ml_model"

    invoke-static {v2, v0, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    .line 564
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    if-ne v0, v4, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    const-string v0, "back_gesture_ml_model_name"

    const-string v4, "backgesture"

    .line 569
    invoke-static {v2, v0, v4}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 572
    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/android/systemui/SystemUIFactory;->createBackGestureTfClassifierProvider(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackGestureTfClassifierProvider:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    const v0, 0x3f666666    # 0.9f

    const-string v4, "back_gesture_ml_model_threshold"

    .line 573
    invoke-static {v2, v4, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLModelThreshold:F

    .line 575
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackGestureTfClassifierProvider:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 576
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackGestureTfClassifierProvider:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;->loadVocab(Landroid/content/res/AssetManager;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mVocab:Ljava/util/Map;

    .line 577
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    return-void

    .line 582
    :cond_2
    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    .line 583
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackGestureTfClassifierProvider:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    if-eqz v0, :cond_3

    .line 584
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;->release()V

    const/4 v0, 0x0

    .line 585
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackGestureTfClassifierProvider:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    :cond_3
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "EdgeBackGestureHandler:"

    .line 881
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAttached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsBackGestureAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsGesturalModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsGesturalModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsNavBarShownTransiently="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsNavBarShownTransiently:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mGestureBlockingActivityRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureBlockingActivityRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseMLModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisabledForQuickstep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledForQuickstep:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStartingQuickstepRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInRejectedExclusion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mExcludeRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUnrestrictedExcludeRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPipExcludedBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPipExcludedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEdgeWidthLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEdgeWidthRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLeftInset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRightInset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mRightInset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMLEnableWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLEnableWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMLModelThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLModelThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTouchSlop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTouchSlop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBottomGestureHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBottomGestureHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPredictionLog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPredictionLog:Ljava/util/ArrayDeque;

    const-string v2, "\n"

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mGestureLog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureLog:Ljava/util/ArrayDeque;

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEdgeBackPlugin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isHandlingGestures()Z
    .locals 1

    .line 514
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 838
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 839
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateDisabledForQuickstep(Landroid/content/res/Configuration;)V

    .line 843
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config changed: config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NoBackGesture"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateDisplaySize()V

    return-void
.end method

.method public onNavBarAttached()V
    .locals 2

    const/4 v0, 0x1

    .line 387
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsAttached:Z

    .line 388
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mProtoTracer:Lcom/android/systemui/tracing/ProtoTracer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tracing/ProtoTracer;->add(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V

    .line 389
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mQuickSwitchListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/model/SysUiState;->addCallback(Lcom/android/systemui/model/SysUiState$SysUiStateCallback;)V

    .line 391
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateIsEnabled()V

    .line 392
    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method

.method public onNavBarDetached()V
    .locals 2

    const/4 v0, 0x0

    .line 399
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsAttached:Z

    .line 400
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mProtoTracer:Lcom/android/systemui/tracing/ProtoTracer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tracing/ProtoTracer;->remove(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V

    .line 401
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mQuickSwitchListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 402
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/model/SysUiState;->removeCallback(Lcom/android/systemui/model/SysUiState$SysUiStateCallback;)V

    .line 403
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateIsEnabled()V

    .line 404
    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    return-void
.end method

.method public onNavBarTransientStateChanged(Z)V
    .locals 0

    .line 417
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsNavBarShownTransiently:Z

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    .line 411
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsGesturalModeEnabled:Z

    .line 412
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateIsEnabled()V

    .line 413
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateCurrentUserResources()V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;Landroid/content/Context;)V
    .locals 0

    .line 495
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->setEdgeBackPlugin(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 95
    check-cast p1, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onPluginConnected(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V
    .locals 1

    .line 500
    new-instance p1, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->setEdgeBackPlugin(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 95
    check-cast p1, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onPluginDisconnected(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V

    return-void
.end method

.method public onUserSwitched(I)V
    .locals 0

    .line 379
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateIsEnabled()V

    .line 380
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateCurrentUserResources()V

    return-void
.end method

.method public setInsets(II)V
    .locals 0

    .line 873
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    .line 874
    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mRightInset:I

    .line 875
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    if-eqz p0, :cond_0

    .line 876
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setInsets(II)V

    :cond_0
    return-void
.end method

.method public setPipStashExclusionBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 521
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPipExcludedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setStateChangeCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStateChangeCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public updateCurrentUserResources()V
    .locals 5

    .line 341
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 342
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getLeftSensitivity(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    .line 343
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getRightSensitivity(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    .line 344
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 345
    invoke-virtual {v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->areNavigationButtonForcedVisible()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    .line 347
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v3, 0x10501c5

    .line 348
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v3

    const-string/jumbo v3, "systemui"

    const-string v4, "back_gesture_bottom_height"

    .line 350
    invoke-static {v3, v4, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    .line 353
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBottomGestureHeight:F

    const/high16 v0, 0x41400000    # 12.0f

    .line 357
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLEnableWidth:I

    .line 358
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    if-le v0, v1, :cond_0

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLEnableWidth:I

    .line 359
    :cond_0
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLEnableWidth:I

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    if-le v0, v1, :cond_1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLEnableWidth:I

    :cond_1
    const/high16 v0, 0x3f400000    # 0.75f

    const-string v1, "back_gesture_slop_multiplier"

    .line 364
    invoke-static {v3, v1, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    .line 366
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTouchSlop:F

    return-void
.end method

.method public writeToProto(Lcom/android/systemui/tracing/nano/SystemUiTraceProto;)V
    .locals 1

    .line 923
    iget-object v0, p1, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    if-nez v0, :cond_0

    .line 924
    new-instance v0, Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    invoke-direct {v0}, Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;-><init>()V

    iput-object v0, p1, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    .line 926
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    iput-boolean p0, p1, Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;->allowGesture:Z

    return-void
.end method

.method public bridge synthetic writeToProto(Ljava/lang/Object;)V
    .locals 0

    .line 95
    check-cast p1, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->writeToProto(Lcom/android/systemui/tracing/nano/SystemUiTraceProto;)V

    return-void
.end method
