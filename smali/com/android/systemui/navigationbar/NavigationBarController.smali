.class public Lcom/android/systemui/navigationbar/NavigationBarController;
.super Ljava/lang/Object;
.source "NavigationBarController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field private static final TAG:Ljava/lang/String; = "NavigationBarController"


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field private final mAssistManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mNavBarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

.field mNavigationBars:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/navigationbar/NavigationBar;",
            ">;"
        }
    .end annotation
.end field

.field private final mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field private final mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private final mPipOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecentsOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/recents/Recents;",
            ">;"
        }
    .end annotation
.end field

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private final mSplitScreenOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

.field private final mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$cqoyLrDZbe4WtpR1gq1V54fbbdU(Lcom/android/systemui/navigationbar/NavigationBarController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/NavigationBarController;->lambda$onNavigationModeChanged$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Ldagger/Lazy;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/accessibility/SystemActions;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/navigationbar/NavigationBarOverlayController;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/WindowManager;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/systemui/recents/OverviewProxyService;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/model/SysUiState;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/recents/Recents;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/ShadeController;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/accessibility/SystemActions;",
            "Landroid/os/Handler;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/navigationbar/NavigationBarOverlayController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p13

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    .line 117
    new-instance v3, Lcom/android/settingslib/applications/InterestingConfigChanges;

    const v4, -0x3ffffcfc    # -2.000184f

    invoke-direct {v3, v4}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>(I)V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 147
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mContext:Landroid/content/Context;

    move-object v4, p2

    .line 148
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mWindowManager:Landroid/view/WindowManager;

    move-object v4, p3

    .line 149
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mAssistManagerLazy:Ldagger/Lazy;

    move-object v4, p4

    .line 150
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object v4, p5

    .line 151
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    move-object v4, p6

    .line 152
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object v4, p7

    .line 153
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object v4, p8

    .line 154
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    move-object v4, p9

    .line 155
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    move-object v4, p10

    .line 156
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v4, p11

    .line 157
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

    move-object/from16 v4, p12

    .line 158
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 159
    iput-object v2, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v4, p14

    .line 160
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mPipOptional:Ljava/util/Optional;

    move-object/from16 v4, p15

    .line 161
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mSplitScreenOptional:Ljava/util/Optional;

    move-object/from16 v4, p16

    .line 162
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mRecentsOptional:Ljava/util/Optional;

    move-object/from16 v4, p17

    .line 163
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mStatusBarLazy:Ldagger/Lazy;

    move-object/from16 v4, p18

    .line 164
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v4, p19

    .line 165
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object/from16 v4, p20

    .line 166
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

    move-object/from16 v4, p22

    .line 167
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v4, p21

    .line 168
    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mHandler:Landroid/os/Handler;

    .line 169
    const-class v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    iput-object v4, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 170
    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    move-object/from16 v2, p24

    .line 171
    invoke-interface {v2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-object/from16 v1, p23

    .line 173
    iput-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavBarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    return-void
.end method

.method private synthetic lambda$onNavigationModeChanged$0()V
    .locals 2

    const/4 v0, 0x0

    .line 197
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/navigationbar/NavigationBarController;->recreateNavigationBar(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private recreateNavigationBar(I)V
    .locals 2

    .line 221
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 222
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 226
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarController;->removeNavigationBar(I)V

    .line 227
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarController;->createNavigationBar(Landroid/view/Display;Landroid/os/Bundle;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    return-void
.end method

.method private removeNavigationBar(I)V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 322
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBar;->setAutoHideController(Lcom/android/systemui/statusbar/phone/AutoHideController;)V

    .line 323
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBar;->destroyView()V

    .line 324
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkNavBarModes(I)V
    .locals 0

    .line 330
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p0, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->checkNavBarModes()V

    :cond_0
    return-void
.end method

.method createNavigationBar(Landroid/view/Display;Landroid/os/Bundle;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .locals 30
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    if-nez v5, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 261
    :goto_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    .line 264
    :try_start_0
    invoke-interface {v3, v2}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 273
    iget-object v0, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mContext:Landroid/content/Context;

    goto :goto_1

    .line 274
    :cond_3
    iget-object v0, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    :goto_1
    move-object v7, v0

    .line 275
    new-instance v3, Lcom/android/systemui/navigationbar/NavigationBar;

    move-object v6, v3

    iget-object v8, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v9, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mAssistManagerLazy:Ldagger/Lazy;

    iget-object v10, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v11, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v12, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object v13, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    iget-object v14, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v15, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v0, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

    move-object/from16 v17, v0

    iget-object v0, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v18, v0

    iget-object v0, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v19, v0

    iget-object v0, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mPipOptional:Ljava/util/Optional;

    move-object/from16 v20, v0

    iget-object v0, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mSplitScreenOptional:Ljava/util/Optional;

    move-object/from16 v21, v0

    iget-object v0, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mRecentsOptional:Ljava/util/Optional;

    move-object/from16 v22, v0

    iget-object v0, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mStatusBarLazy:Ldagger/Lazy;

    move-object/from16 v23, v0

    iget-object v0, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v24, v0

    iget-object v0, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mNotificationRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-object/from16 v25, v0

    iget-object v0, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mSystemActions:Lcom/android/systemui/accessibility/SystemActions;

    move-object/from16 v26, v0

    iget-object v0, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    iget-object v0, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavBarOverlayController:Lcom/android/systemui/navigationbar/NavigationBarOverlayController;

    move-object/from16 v28, v0

    iget-object v0, v1, Lcom/android/systemui/navigationbar/NavigationBarController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v29, v0

    invoke-direct/range {v6 .. v29}, Lcom/android/systemui/navigationbar/NavigationBar;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Ldagger/Lazy;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/CommandQueue;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ldagger/Lazy;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/accessibility/SystemActions;Landroid/os/Handler;Lcom/android/systemui/navigationbar/NavigationBarOverlayController;Lcom/android/internal/logging/UiEventLogger;)V

    move-object/from16 v0, p2

    .line 299
    invoke-virtual {v3, v0}, Lcom/android/systemui/navigationbar/NavigationBar;->createView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v6

    .line 300
    new-instance v7, Lcom/android/systemui/navigationbar/NavigationBarController$1;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/navigationbar/NavigationBarController$1;-><init>(Lcom/android/systemui/navigationbar/NavigationBarController;ILcom/android/systemui/navigationbar/NavigationBar;Lcom/android/internal/statusbar/RegisterStatusBarResult;Landroid/view/Display;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    .line 269
    :catch_0
    sget-object v0, Lcom/android/systemui/navigationbar/NavigationBarController;->TAG:Ljava/lang/String;

    const-string v1, "Cannot get WindowManager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public createNavigationBars(ZLcom/android/internal/statusbar/RegisterStatusBarResult;)V
    .locals 5

    .line 239
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 240
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez p1, :cond_0

    .line 241
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    .line 242
    invoke-virtual {p0, v3, v4, p2}, Lcom/android/systemui/navigationbar/NavigationBarController;->createNavigationBar(Landroid/view/Display;Landroid/os/Bundle;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public disableAnimationsDuringHide(IJ)V
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p0, :cond_0

    .line 364
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/navigationbar/NavigationBar;->disableAnimationsDuringHide(J)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 398
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    if-lez p1, :cond_0

    .line 400
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 402
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {p3, p2}, Lcom/android/systemui/navigationbar/NavigationBar;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public finishBarAnimations(I)V
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p0, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->finishBarAnimations()V

    :cond_0
    return-void
.end method

.method public getAssistHandlerViewController()Lcom/android/systemui/assist/AssistHandleViewController;
    .locals 0

    .line 392
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarController;->getDefaultNavigationBar()Lcom/android/systemui/navigationbar/NavigationBar;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->getAssistHandlerViewController()Lcom/android/systemui/assist/AssistHandleViewController;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getDefaultNavigationBar()Lcom/android/systemui/navigationbar/NavigationBar;
    .locals 1

    .line 386
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    return-object p0
.end method

.method public getDefaultNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;
    .locals 1

    const/4 v0, 0x0

    .line 370
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarController;->getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    return-object p0
.end method

.method public getNavigationBarView(I)Lcom/android/systemui/navigationbar/NavigationBarView;
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    :goto_0
    return-object p0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 179
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_1

    .line 180
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarController;->recreateNavigationBar(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/navigationbar/NavigationBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onDisplayReady(I)V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    const/4 v0, 0x0

    .line 212
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/navigationbar/NavigationBarController;->createNavigationBar(Landroid/view/Display;Landroid/os/Bundle;Lcom/android/internal/statusbar/RegisterStatusBarResult;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .line 206
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarController;->removeNavigationBar(I)V

    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 1

    .line 194
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result p1

    if-eqz p1, :cond_0

    .line 196
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/navigationbar/NavigationBarController-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/NavigationBarController-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/NavigationBarController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public touchAutoDim(I)V
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p0, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->touchAutoDim()V

    :cond_0
    return-void
.end method

.method public transitionTo(IIZ)V
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarController;->mNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p0, :cond_0

    .line 356
    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/navigationbar/NavigationBar;->transitionTo(IZ)V

    :cond_0
    return-void
.end method
