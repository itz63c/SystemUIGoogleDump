.class public Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;
.super Ljava/lang/Object;
.source "StatusBarRemoteInputCallback.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$ChallengeReceiver;
    }
.end annotation


# instance fields
.field private final mActionClickLogger:Lcom/android/systemui/statusbar/ActionClickLogger;

.field private final mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field protected mChallengeReceiver:Landroid/content/BroadcastReceiver;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mContext:Landroid/content/Context;

.field private mDisabled2:I

.field private final mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private mMainHandler:Landroid/os/Handler;

.field private mPendingRemoteInputView:Landroid/view/View;

.field private mPendingWorkRemoteInputView:Landroid/view/View;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;


# direct methods
.method public static synthetic $r8$lambda$IWBq3eUXUP2ntf5CBR8b4j2v5-w(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->lambda$onWorkChallengeChanged$0(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_bdBd-ekd1iJtRgWnBaKr-GFlE0(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->lambda$onWorkChallengeChanged$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$bOlisl9GEcFswvLAPM6kQOi_yYI(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->lambda$onWorkChallengeChanged$1(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fTrXqC707aAoIoFE5t21T8x_U8c(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->lambda$handleRemoteViewClick$3(Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/ActionClickLogger;)V
    .locals 9

    move-object v0, p0

    move-object v7, p1

    move-object/from16 v8, p9

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$ChallengeReceiver;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$ChallengeReceiver;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mChallengeReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mMainHandler:Landroid/os/Handler;

    .line 93
    iput-object v7, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mContext:Landroid/content/Context;

    move-object v1, p6

    .line 94
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v1, p8

    .line 95
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 96
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mChallengeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DEVICE_LOCKED_CHANGED"

    invoke-direct {v4, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-object v1, p3

    .line 98
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object v1, p4

    .line 99
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 100
    move-object v1, p5

    check-cast v1, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v2, p7

    .line 101
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 102
    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 103
    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 104
    iput-object v8, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 105
    invoke-virtual {v8, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    move-object/from16 v1, p10

    .line 106
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mActionClickLogger:Lcom/android/systemui/statusbar/ActionClickLogger;

    .line 107
    new-instance v1, Lcom/android/systemui/ActivityIntentHelper;

    invoke-direct {v1, p1}, Lcom/android/systemui/ActivityIntentHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    move-object v1, p2

    .line 108
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    return-object p0
.end method

.method private synthetic lambda$handleRemoteViewClick$3(Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;)Z
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mActionClickLogger:Lcom/android/systemui/statusbar/ActionClickLogger;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ActionClickLogger;->logKeyguardGone(Landroid/app/PendingIntent;)V

    .line 262
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :catch_0
    invoke-interface {p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;->handleClick()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 269
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->closeShadeIfOpen()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onWorkChallengeChanged$0(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingWorkRemoteInputView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->callOnClick()Z

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingWorkRemoteInputView:Landroid/view/View;

    .line 164
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setFinishScrollingCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onWorkChallengeChanged$1(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 161
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback-$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback-$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    .line 166
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->scrollTo(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 168
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setFinishScrollingCallback(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 171
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onWorkChallengeChanged$2()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingWorkRemoteInputView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 147
    :goto_0
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    return-void

    .line 151
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_2
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 155
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 156
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz v2, :cond_3

    .line 157
    check-cast v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 159
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->makeActionsVisibile()V

    .line 160
    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback-$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback-$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public disable(IIIZ)V
    .locals 0

    .line 279
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getDisplayId()I

    move-result p2

    if-ne p1, p2, :cond_0

    .line 280
    iput p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mDisabled2:I

    :cond_0
    return-void
.end method

.method public handleRemoteViewClick(Landroid/view/View;Landroid/app/PendingIntent;ZLcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;)Z
    .locals 1

    .line 253
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    invoke-interface {p4}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;->handleClick()Z

    move-result p0

    return p0

    .line 255
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mActionClickLogger:Lcom/android/systemui/statusbar/ActionClickLogger;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/ActionClickLogger;->logWaitingToCloseKeyguard(Landroid/app/PendingIntent;)V

    .line 256
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mActivityIntentHelper:Lcom/android/systemui/ActivityIntentHelper;

    .line 257
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v0

    .line 256
    invoke-virtual {p1, p3, v0}, Lcom/android/systemui/ActivityIntentHelper;->wouldLaunchResolverActivity(Landroid/content/Intent;I)Z

    move-result p1

    .line 258
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback-$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p4}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback-$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;)V

    const/4 p0, 0x0

    invoke-interface {p3, v0, p0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public onLockedRemoteInput(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;)V
    .locals 1

    .line 127
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isPinned()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setLeaveOpenOnKeyguardHide(Z)V

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    .line 131
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingRemoteInputView:Landroid/view/View;

    return-void
.end method

.method public onLockedWorkRemoteInput(ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;)V
    .locals 0

    .line 200
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels()V

    const/4 p2, 0x0

    .line 201
    invoke-virtual {p0, p1, p2, p2}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z

    .line 204
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingWorkRemoteInputView:Landroid/view/View;

    return-void
.end method

.method public onMakeExpandedVisibleForRemoteInput(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 0

    if-nez p3, :cond_0

    .line 184
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p3}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->onLockedRemoteInput(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isChildInGroup()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result p2

    if-nez p2, :cond_1

    .line 189
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mGroupExpansionManager:Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/render/GroupExpansionManager;->toggleGroupExpansion(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    :cond_1
    const/4 p0, 0x1

    .line 191
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 192
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->setOnExpandedVisibleListener(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingRemoteInputView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 114
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 115
    invoke-interface {p1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->leaveOpenOnKeyguardHide()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz v0, :cond_3

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->isKeyguardRequested()Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    .line 118
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingRemoteInputView:Landroid/view/View;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback-$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback-$$ExternalSyntheticLambda1;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingRemoteInputView:Landroid/view/View;

    :cond_3
    return-void
.end method

.method protected onWorkChallengeChanged()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->updatePublicMode()V

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingWorkRemoteInputView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 137
    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isAnyProfilePublicMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback-$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback-$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;)V

    .line 176
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/phone/ShadeController;->postOnShadeExpanded(Ljava/lang/Runnable;)V

    .line 177
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->instantExpandNotificationsPanel()V

    :cond_0
    return-void
.end method

.method public shouldHandleRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;)Z
    .locals 0

    .line 246
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mDisabled2:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method startWorkChallengeIfNecessary(ILandroid/content/IntentSender;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mPendingWorkRemoteInputView:Landroid/view/View;

    .line 213
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1, v0, v0, p1}, Landroid/app/KeyguardManager;->createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 218
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.systemui.statusbar.work_challenge_unlocked_notification_action"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.extra.INTENT"

    .line 219
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.INDEX"

    .line 220
    invoke-virtual {v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback;->mContext:Landroid/content/Context;

    const/high16 p2, 0x54000000

    invoke-static {p0, v1, v2, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 232
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0

    .line 230
    invoke-virtual {p1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 234
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/app/IActivityManager;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p0, 0x1

    return p0
.end method
