.class public Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "EdgeBackGestureHandler.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/shared/tracing/ProtoTraceable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/settings/CurrentUserTracker;",
        "Landroid/hardware/display/DisplayManager$DisplayListener;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;",
        ">;",
        "Lcom/android/systemui/shared/tracing/ProtoTraceable<",
        "Lcom/android/systemui/tracing/nano/SystemUiTraceProto;",
        ">;"
    }
.end annotation


# static fields
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

.field private mQuickSwitchListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

.field private mRightInset:I

.field private mStartingQuickstepRotation:I

.field private final mStateChangeCallback:Ljava/lang/Runnable;

.field private mSysUiFlags:I

.field private final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field private final mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

.field private mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private mThresholdCrossed:Z

.field private mTouchSlop:F

.field private final mUnrestrictedExcludeRegion:Landroid/graphics/Region;

.field private mUseMLModel:Z

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


# direct methods
.method public static synthetic $r8$lambda$QU8XX8oUJGI45YdmcosOVHjtyCM(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->lambda$updateIsEnabled$0(Ljava/lang/Runnable;)V

    return-void
.end method

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

    .line 92
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->MAX_LONG_PRESS_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/shared/plugins/PluginManager;Ljava/lang/Runnable;)V
    .locals 3

    const-string v0, "EdgeBackGestureHandler"

    .line 262
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-direct {p0, v1}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    .line 99
    new-instance v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$1;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    .line 114
    new-instance v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$2;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mQuickSwitchListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 123
    new-instance v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$3;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 138
    new-instance v1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$4;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureBlockingActivities:Ljava/util/List;

    .line 164
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 169
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPipExcludedBounds:Landroid/graphics/Rect;

    .line 170
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    .line 171
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    const/4 v1, -0x1

    .line 183
    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    .line 188
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    .line 189
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    const/4 v1, 0x0

    .line 190
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mThresholdCrossed:Z

    .line 191
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 192
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    .line 193
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    .line 222
    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPredictionLog:Ljava/util/ArrayDeque;

    .line 226
    new-instance v2, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$5;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    .line 252
    new-instance v2, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$6;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

    .line 263
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 264
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplayId:I

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 266
    iput-object p2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 267
    iput-object p3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 268
    iput-object p4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    .line 269
    iput-object p5, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStateChangeCallback:Ljava/lang/Runnable;

    const p2, 0x104025e

    .line 271
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 270
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 273
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 276
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    const-string p3, "gesture_blocking_activities"

    const-string p4, "array"

    .line 277
    invoke-virtual {p1, p3, p4, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    const-string p1, "No resource found for gesture-blocking activities"

    .line 281
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 283
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 284
    array-length p2, p1

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object p3, p1, v1

    .line 285
    iget-object p4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureBlockingActivities:Ljava/util/List;

    .line 286
    invoke-static {p3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p3

    .line 285
    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "Failed to add gesture blocking activities"

    .line 290
    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    :cond_1
    :goto_1
    sget p1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->MAX_LONG_PRESS_TIMEOUT:I

    .line 294
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p2

    .line 293
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLongPressTimeout:I

    .line 296
    new-instance p1, Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    iget-object p2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 297
    invoke-virtual {p2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object p3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    new-instance p4, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler-$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler-$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    invoke-direct {p1, p2, p3, p4}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 299
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateCurrentUserResources()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplayId:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;II)Z
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->sendEvent(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Landroid/graphics/PointF;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Lcom/android/systemui/recents/OverviewProxyService;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->logGesture(I)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;I)I
    .locals 0

    .line 88
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiFlags:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Landroid/graphics/Region;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Landroid/graphics/Region;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;I)I
    .locals 0

    .line 88
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateDisabledForQuickstep()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureBlockingActivityRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)Z
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isGestureBlockingActivityRunning()Z

    move-result p0

    return p0
.end method

.method static synthetic access$802(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateMLModelState()V

    return-void
.end method

.method private cancelGesture(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 645
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 646
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    .line 647
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    .line 648
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    .line 649
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 650
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 651
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private createLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    .line 488
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 489
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/android/systemui/R$dimen;->navigation_edge_panel_width:I

    .line 490
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v1, Lcom/android/systemui/R$dimen;->navigation_edge_panel_height:I

    .line 491
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/16 v4, 0x7e8

    const v5, 0x800128

    const/4 v6, -0x3

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 498
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 500
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

    .line 501
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->nav_bar_edge_panel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v7, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const/4 p0, 0x0

    .line 502
    iput p0, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 503
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    return-object v7
.end method

.method private disposeInputChannel()V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->dispose()V

    .line 386
    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 390
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

    .line 548
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

    .line 564
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackGestureTfClassifierProvider:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    invoke-virtual {p1, v5}, Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;->predict([Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLResults:F

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, p1, p2

    if-nez p2, :cond_2

    return v0

    .line 568
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

    .line 833
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 834
    :cond_0
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    :goto_0
    if-eqz v0, :cond_1

    .line 836
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPackageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v1, "_UNKNOWN"

    .line 838
    iput-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPackageName:Ljava/lang/String;

    :goto_1
    if-eqz v0, :cond_2

    .line 840
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

    .line 573
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBottomGestureHeight:F

    sub-float/2addr v2, v3

    cmpl-float v0, v0, v2

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    return v2

    .line 580
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

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPipExcludedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mVocab:Ljava/util/Map;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 592
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

    .line 596
    :goto_0
    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLEnableWidth:I

    iget v5, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr v5, v4

    const/4 v6, 0x1

    if-le p1, v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v4

    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mRightInset:I

    sub-int/2addr v5, v4

    if-lt p1, v5, :cond_4

    goto :goto_1

    :cond_4
    move v4, v2

    goto :goto_2

    :cond_5
    :goto_1
    move v4, v6

    :goto_2
    if-nez v4, :cond_9

    .line 600
    iget-boolean v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    if-eqz v4, :cond_8

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->getBackGesturePredictionsCategory(III)I

    move-result v4

    if-eq v4, v1, :cond_8

    if-ne v4, v6, :cond_7

    :cond_6
    :goto_3
    move v4, v6

    goto :goto_4

    :cond_7
    move v4, v2

    goto :goto_4

    .line 606
    :cond_8
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr v1, v4

    if-le p1, v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mRightInset:I

    sub-int/2addr v1, v4

    if-lt p1, v1, :cond_7

    goto :goto_3

    .line 612
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPredictionLog:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v5, 0xa

    if-lt v1, v5, :cond_a

    .line 613
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPredictionLog:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 615
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPredictionLog:Ljava/util/ArrayDeque;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 616
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLResults:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v5, v3

    const/4 v0, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v0

    const-string v0, "[%d,%d,%d,%f,%d]"

    .line 615
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 619
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsNavBarShownTransiently:Z

    if-eqz v0, :cond_b

    .line 620
    iput-boolean v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    return v4

    .line 624
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_d

    if-eqz v4, :cond_c

    .line 627
    iget-object v7, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    iget-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    xor-int/lit8 v12, p1, 0x1

    invoke-virtual/range {v7 .. v12}, Lcom/android/systemui/recents/OverviewProxyService;->notifyBackAction(ZIIZZ)V

    .line 630
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p1, Landroid/graphics/PointF;->x:F

    .line 631
    iput p2, p1, Landroid/graphics/PointF;->y:F

    .line 632
    iput-boolean v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    .line 633
    invoke-direct {p0, v3}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->logGesture(I)V

    :cond_c
    return v2

    .line 638
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    .line 639
    iput-boolean v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    return v4
.end method

.method private synthetic lambda$updateIsEnabled$0(Ljava/lang/Runnable;)V
    .locals 0

    .line 429
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private logGesture(I)V
    .locals 13

    .line 655
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 658
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    .line 661
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

    .line 662
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    move-object v12, v0

    const/16 v1, 0xe0

    .line 664
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->y:F

    float-to-int v3, v2

    .line 665
    iget-boolean v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    .line 667
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

    .line 672
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    if-eqz v0, :cond_3

    iget p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLResults:F

    goto :goto_2

    :cond_3
    const/high16 p0, -0x40000000    # -2.0f

    :goto_2
    move v11, p0

    move v2, p1

    .line 664
    invoke-static/range {v1 .. v12}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(IIIIIIIIIIFLjava/lang/String;)V

    return-void
.end method

.method private onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    .line 508
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 509
    check-cast p1, Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 9

    .line 676
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 680
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->setBatchingEnabled(Z)V

    .line 681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    const/4 v0, 0x0

    .line 682
    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLResults:F

    .line 683
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    .line 684
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    .line 685
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledForQuickstep:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureBlockingActivityRunning:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiFlags:I

    .line 687
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 688
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isWithinTouchRegion(II)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v1, :cond_2

    .line 690
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setIsLeftPanel(Z)V

    .line 691
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 693
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    if-eqz v0, :cond_d

    .line 694
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 695
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 696
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mThresholdCrossed:Z

    goto/16 :goto_3

    .line 698
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    if-eqz v3, :cond_d

    .line 699
    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mThresholdCrossed:Z

    if-nez v3, :cond_c

    .line 700
    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 701
    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEndPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x5

    const-string v4, "NoBackGesture"

    if-ne v0, v3, :cond_6

    .line 703
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    .line 704
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->logGesture(I)V

    const-string v0, "Cancel back: multitouch"

    .line 706
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 711
    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    return-void

    :cond_6
    const/4 v5, 0x2

    if-ne v0, v5, :cond_c

    .line 714
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLongPressTimeout:I

    int-to-long v7, v0

    cmp-long v0, v5, v7

    const-string v5, "  "

    if-lez v0, :cond_8

    .line 715
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    .line 716
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->logGesture(I)V

    .line 717
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel back [longpress]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLongPressTimeout:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 719
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_7
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    return-void

    .line 728
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 729
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v7, v6, v0

    if-lez v7, :cond_a

    .line 730
    iget v7, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTouchSlop:F

    cmpl-float v7, v6, v7

    if-lez v7, :cond_a

    .line 731
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v1, :cond_9

    const/16 v1, 0x8

    .line 732
    invoke-direct {p0, v1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->logGesture(I)V

    .line 733
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    .line 735
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel back [vertical move]: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTouchSlop:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_9
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLogGesture:Z

    return-void

    :cond_a
    cmpl-float v2, v0, v6

    if-lez v2, :cond_c

    .line 741
    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTouchSlop:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_c

    .line 742
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v0, :cond_b

    .line 743
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mThresholdCrossed:Z

    .line 745
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v0}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 746
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->setBatchingEnabled(Z)V

    goto :goto_2

    .line 748
    :cond_b
    invoke-direct {p0, v3}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->logGesture(I)V

    .line 754
    :cond_c
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v0, :cond_d

    .line 756
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 760
    :cond_d
    :goto_3
    const-class p0, Lcom/android/systemui/tracing/ProtoTracer;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tracing/ProtoTracer;

    invoke-virtual {p0}, Lcom/android/systemui/tracing/ProtoTracer;->scheduleFrameUpdate()V

    return-void
.end method

.method private onNavigationSettingsChanged()V
    .locals 2

    .line 333
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isHandlingGestures()Z

    move-result v0

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateCurrentUserResources()V

    .line 335
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->isHandlingGestures()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 336
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStateChangeCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private sendEvent(II)Z
    .locals 14

    .line 794
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 795
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

    .line 800
    iget-object v0, v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {v13, v0}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 801
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 802
    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result v0

    return v0
.end method

.method private setEdgeBackPlugin(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    if-eqz v0, :cond_0

    .line 468
    invoke-interface {v0}, Lcom/android/systemui/plugins/Plugin;->onDestroy()V

    .line 470
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    .line 471
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackCallback:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setBackCallback(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin$BackCallback;)V

    .line 472
    iget-object p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->createLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 473
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateDisplaySize()V

    return-void
.end method

.method private updateDisabledForQuickstep()V
    .locals 3

    .line 764
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    .line 765
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledForQuickstep:Z

    return-void
.end method

.method private updateDisplaySize()V
    .locals 2

    .line 787
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 788
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    if-eqz v0, :cond_0

    .line 789
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setDisplaySize(Landroid/graphics/Point;)V

    :cond_0
    return-void
.end method

.method private updateIsEnabled()V
    .locals 6

    .line 395
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsAttached:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsGesturalModeEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 396
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsEnabled:Z

    if-ne v0, v2, :cond_1

    return-void

    .line 399
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsEnabled:Z

    .line 400
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->disposeInputChannel()V

    .line 402
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    if-eqz v0, :cond_2

    .line 403
    invoke-interface {v0}, Lcom/android/systemui/plugins/Plugin;->onDestroy()V

    const/4 v0, 0x0

    .line 404
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    .line 407
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsEnabled:Z

    const-string v2, "EdgeBackGestureHandler"

    if-nez v0, :cond_3

    .line 408
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->unregister()V

    .line 409
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 410
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/shared/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 411
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 412
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-static {v0}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 415
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplayId:I

    .line 416
    invoke-interface {v0, v1, v3}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    const-string v1, "Failed to unregister window manager callbacks"

    .line 419
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 423
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->register()V

    .line 424
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateDisplaySize()V

    .line 425
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 426
    invoke-virtual {v3}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v3

    .line 425
    invoke-virtual {v0, p0, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 427
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v3}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 428
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler-$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOnPropertiesChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string v4, "systemui"

    invoke-static {v4, v0, v3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 433
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplayId:I

    .line 434
    invoke-interface {v0, v3, v4}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "Failed to register window manager callbacks"

    .line 437
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    :goto_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplayId:I

    const-string v3, "edge-swipe"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    .line 443
    new-instance v2, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 444
    invoke-virtual {v0}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 445
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler-$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;)V

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInputEventReceiver:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    .line 448
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->setEdgeBackPlugin(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V

    .line 449
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    const-class v2, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-interface {v0, p0, v2, v1}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 453
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateMLModelState()V

    return-void
.end method

.method private updateMLModelState()V
    .locals 6

    .line 514
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsEnabled:Z

    const/4 v1, 0x1

    const-string v2, "systemui"

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

    .line 517
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    if-ne v0, v4, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    const-string v0, "back_gesture_ml_model_name"

    const-string v4, "backgesture"

    .line 522
    invoke-static {v2, v0, v4}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 525
    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/android/systemui/SystemUIFactory;->createBackGestureTfClassifierProvider(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackGestureTfClassifierProvider:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    const v0, 0x3f666666    # 0.9f

    const-string v4, "back_gesture_ml_model_threshold"

    .line 526
    invoke-static {v2, v4, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLModelThreshold:F

    .line 528
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackGestureTfClassifierProvider:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 529
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackGestureTfClassifierProvider:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;->loadVocab(Landroid/content/res/AssetManager;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mVocab:Ljava/util/Map;

    .line 530
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    return-void

    .line 535
    :cond_2
    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUseMLModel:Z

    .line 536
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackGestureTfClassifierProvider:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    if-eqz v0, :cond_3

    .line 537
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;->release()V

    const/4 v0, 0x0

    .line 538
    iput-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBackGestureTfClassifierProvider:Lcom/android/systemui/navigationbar/gestural/BackGestureTfClassifierProvider;

    :cond_3
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "EdgeBackGestureHandler:"

    .line 814
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsBackGestureAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisabledForQuickstep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisabledForQuickstep:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mStartingQuickstepRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInRejectedExclusion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mInRejectedExclusion:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mExcludeRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUnrestrictedExcludeRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mUnrestrictedExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAttached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEdgeWidthLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEdgeWidthRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsNavBarShownTransiently="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsNavBarShownTransiently:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPredictionLog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPredictionLog:Ljava/util/ArrayDeque;

    const-string v2, ";"

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
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

    .line 477
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

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    .line 777
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mStartingQuickstepRotation:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 778
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateDisabledForQuickstep()V

    .line 781
    :cond_0
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mDisplayId:I

    if-ne p1, v0, :cond_1

    .line 782
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateDisplaySize()V

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onNavBarAttached()V
    .locals 2

    const/4 v0, 0x1

    .line 350
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsAttached:Z

    .line 351
    const-class v0, Lcom/android/systemui/tracing/ProtoTracer;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tracing/ProtoTracer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tracing/ProtoTracer;->add(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V

    .line 352
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mQuickSwitchListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 353
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/model/SysUiState;->addCallback(Lcom/android/systemui/model/SysUiState$SysUiStateCallback;)V

    .line 354
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateIsEnabled()V

    .line 355
    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    return-void
.end method

.method public onNavBarDetached()V
    .locals 2

    const/4 v0, 0x0

    .line 362
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsAttached:Z

    .line 363
    const-class v0, Lcom/android/systemui/tracing/ProtoTracer;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tracing/ProtoTracer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tracing/ProtoTracer;->remove(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V

    .line 364
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mQuickSwitchListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/model/SysUiState;->removeCallback(Lcom/android/systemui/model/SysUiState$SysUiStateCallback;)V

    .line 366
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateIsEnabled()V

    .line 367
    invoke-virtual {p0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    return-void
.end method

.method public onNavBarTransientStateChanged(Z)V
    .locals 0

    .line 380
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsNavBarShownTransiently:Z

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    .line 374
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsGesturalModeEnabled:Z

    .line 375
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateIsEnabled()V

    .line 376
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateCurrentUserResources()V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;Landroid/content/Context;)V
    .locals 0

    .line 458
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->setEdgeBackPlugin(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    .line 88
    check-cast p1, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onPluginConnected(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V
    .locals 1

    .line 463
    new-instance p1, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/systemui/navigationbar/gestural/NavigationBarEdgePanel;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->setEdgeBackPlugin(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    .line 88
    check-cast p1, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->onPluginDisconnected(Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;)V

    return-void
.end method

.method public onUserSwitched(I)V
    .locals 0

    .line 342
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateIsEnabled()V

    .line 343
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateCurrentUserResources()V

    return-void
.end method

.method public setInsets(II)V
    .locals 0

    .line 806
    iput p1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mLeftInset:I

    .line 807
    iput p2, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mRightInset:I

    .line 808
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeBackPlugin:Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;

    if-eqz p0, :cond_0

    .line 809
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/NavigationEdgeBackPlugin;->setInsets(II)V

    :cond_0
    return-void
.end method

.method public setPipStashExclusionBounds(Landroid/graphics/Rect;)V
    .locals 0

    .line 484
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mPipExcludedBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public updateCurrentUserResources()V
    .locals 5

    .line 303
    const-class v0, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationModeController;->getCurrentUserContext()Landroid/content/Context;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getLeftSensitivity(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    .line 306
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->getRightSensitivity(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    .line 307
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mGestureNavigationSettingsObserver:Lcom/android/internal/policy/GestureNavigationSettingsObserver;

    .line 308
    invoke-virtual {v1}, Lcom/android/internal/policy/GestureNavigationSettingsObserver;->areNavigationButtonForcedVisible()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsBackGestureAllowed:Z

    .line 310
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const v3, 0x10501bf

    .line 311
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, v3

    const-string v3, "systemui"

    const-string v4, "back_gesture_bottom_height"

    .line 313
    invoke-static {v3, v4, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    .line 316
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mBottomGestureHeight:F

    const/high16 v0, 0x41400000    # 12.0f

    .line 320
    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLEnableWidth:I

    .line 321
    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthRight:I

    if-le v0, v1, :cond_0

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLEnableWidth:I

    .line 322
    :cond_0
    iget v0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLEnableWidth:I

    iget v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mEdgeWidthLeft:I

    if-le v0, v1, :cond_1

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMLEnableWidth:I

    :cond_1
    const/high16 v0, 0x3f400000    # 0.75f

    const-string v1, "back_gesture_slop_multiplier"

    .line 327
    invoke-static {v3, v1, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    .line 329
    iget-object v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mTouchSlop:F

    return-void
.end method

.method public writeToProto(Lcom/android/systemui/tracing/nano/SystemUiTraceProto;)V
    .locals 1

    .line 845
    iget-object v0, p1, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    if-nez v0, :cond_0

    .line 846
    new-instance v0, Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    invoke-direct {v0}, Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;-><init>()V

    iput-object v0, p1, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    .line 848
    :cond_0
    iget-object p1, p1, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->edgeBackGestureHandler:Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mAllowGesture:Z

    iput-boolean p0, p1, Lcom/android/systemui/tracing/nano/EdgeBackGestureHandlerProto;->allowGesture:Z

    return-void
.end method

.method public bridge synthetic writeToProto(Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p1, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->writeToProto(Lcom/android/systemui/tracing/nano/SystemUiTraceProto;)V

    return-void
.end method
