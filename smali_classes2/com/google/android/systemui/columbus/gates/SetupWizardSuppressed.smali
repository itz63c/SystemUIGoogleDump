.class public final Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "SetupWizardSuppressed.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSetupWizardSuppressed.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SetupWizardSuppressed.kt\ncom/google/android/systemui/columbus/gates/SetupWizardSuppressed\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,155:1\n1819#2,2:156\n*E\n*S KotlinDebug\n*F\n+ 1 SetupWizardSuppressed.kt\ncom/google/android/systemui/columbus/gates/SetupWizardSuppressed\n*L\n90#1,2:156\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$Companion;

.field private static final DEFAULT_LAUNCHER_CHANGE_ACTIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final actionListener:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$actionListener$1;

.field private final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final broadcastReceiver:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$broadcastReceiver$1;

.field private defaultLauncher:Landroid/content/ComponentName;

.field private final gateListener:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$gateListener$1;

.field private final keyguardVisibility:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

.field private launcherIsShowing:Z

.field private listening:Z

.field private final setupWizardAction:Lcom/google/android/systemui/columbus/actions/SetupWizardAction;

.field private final taskStackChangeListener:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$taskStackChangeListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->Companion:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$Companion;

    const-string v0, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 152
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->DEFAULT_LAUNCHER_CHANGE_ACTIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/actions/SetupWizardAction;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setupWizardAction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardVisibility"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 31
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;Landroid/os/Handler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 27
    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->setupWizardAction:Lcom/google/android/systemui/columbus/actions/SetupWizardAction;

    .line 28
    iput-object p3, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 29
    iput-object p4, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->keyguardVisibility:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    .line 33
    new-instance p1, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$actionListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$actionListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->actionListener:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$actionListener$1;

    .line 43
    new-instance p1, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$broadcastReceiver$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$broadcastReceiver$1;-><init>(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->broadcastReceiver:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$broadcastReceiver$1;

    .line 50
    new-instance p1, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$gateListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$gateListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->gateListener:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$gateListener$1;

    .line 59
    new-instance p1, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$taskStackChangeListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$taskStackChangeListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->taskStackChangeListener:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$taskStackChangeListener$1;

    return-void
.end method

.method public static final synthetic access$getKeyguardVisibility$p(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;)Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->keyguardVisibility:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    return-object p0
.end method

.method public static final synthetic access$getSetupWizardAction$p(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;)Lcom/google/android/systemui/columbus/actions/SetupWizardAction;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->setupWizardAction:Lcom/google/android/systemui/columbus/actions/SetupWizardAction;

    return-object p0
.end method

.method public static final synthetic access$onSetupWizardActionAvailable(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->onSetupWizardActionAvailable()V

    return-void
.end method

.method public static final synthetic access$onSetupWizardActionUnavailable(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->onSetupWizardActionUnavailable()V

    return-void
.end method

.method public static final synthetic access$updateBlocking(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->updateBlocking()V

    return-void
.end method

.method public static final synthetic access$updateCurrentDefaultLauncher(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->updateCurrentDefaultLauncher()V

    return-void
.end method

.method public static final synthetic access$updateLauncherIsShowing(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->updateLauncherIsShowing(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method private final onSetupWizardActionAvailable()V
    .locals 8

    .line 84
    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->listening:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->listening:Z

    .line 89
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    sget-object v1, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->DEFAULT_LAUNCHER_CHANGE_ACTIONS:Ljava/util/List;

    .line 1819
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    invoke-virtual {v3, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->broadcastReceiver:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$broadcastReceiver$1;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/Object;)V

    .line 92
    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->keyguardVisibility:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->gateListener:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$gateListener$1;

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    .line 93
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->taskStackChangeListener:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$taskStackChangeListener$1;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 94
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->updateCurrentDefaultLauncher()V

    const/4 v1, 0x0

    .line 95
    invoke-static {p0, v1, v0, v1}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->updateLauncherIsShowing$default(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;Landroid/app/ActivityManager$RunningTaskInfo;ILjava/lang/Object;)V

    return-void
.end method

.method private final onSetupWizardActionUnavailable()V
    .locals 2

    .line 99
    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->listening:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->listening:Z

    .line 104
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->broadcastReceiver:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$broadcastReceiver$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->keyguardVisibility:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->gateListener:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$gateListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    .line 106
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->taskStackChangeListener:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$taskStackChangeListener$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method private final updateBlocking()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->setupWizardAction:Lcom/google/android/systemui/columbus/actions/SetupWizardAction;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->launcherIsShowing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method

.method private final updateCurrentDefaultLauncher()V
    .locals 6

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 117
    iput-object v1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->defaultLauncher:Landroid/content/ComponentName;

    goto :goto_2

    :cond_0
    const/high16 v1, -0x80000000

    .line 121
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    move-object v3, v2

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 122
    iget v5, v4, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v5, v1, :cond_2

    .line 123
    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 124
    iget v1, v4, Landroid/content/pm/ResolveInfo;->priority:I

    goto :goto_1

    :cond_2
    if-ne v5, v1, :cond_1

    goto :goto_0

    .line 129
    :cond_3
    iput-object v3, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->defaultLauncher:Landroid/content/ComponentName;

    :goto_2
    return-void
.end method

.method private final updateLauncherIsShowing(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->defaultLauncher:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 137
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->launcherIsShowing:Z

    return-void
.end method

.method static synthetic updateLauncherIsShowing$default(Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;Landroid/app/ActivityManager$RunningTaskInfo;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 135
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    const-string p2, "getInstance().runningTask"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->updateLauncherIsShowing(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method


# virtual methods
.method protected onActivate()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->setupWizardAction:Lcom/google/android/systemui/columbus/actions/SetupWizardAction;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->actionListener:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$actionListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/actions/Action;->registerListener(Lcom/google/android/systemui/columbus/actions/Action$Listener;)V

    .line 72
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->setupWizardAction:Lcom/google/android/systemui/columbus/actions/SetupWizardAction;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->onSetupWizardActionAvailable()V

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->updateBlocking()V

    return-void
.end method

.method protected onDeactivate()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->setupWizardAction:Lcom/google/android/systemui/columbus/actions/SetupWizardAction;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->actionListener:Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed$actionListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/actions/Action;->unregisterListener(Lcom/google/android/systemui/columbus/actions/Action$Listener;)V

    .line 80
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->onSetupWizardActionUnavailable()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [setupWizardAvailable -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->setupWizardAction:Lcom/google/android/systemui/columbus/actions/SetupWizardAction;

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable()Z

    move-result v1

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; homePackage -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/SetupWizardSuppressed;->defaultLauncher:Landroid/content/ComponentName;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    .line 142
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
