.class public final Lcom/google/android/systemui/columbus/actions/LaunchApp;
.super Lcom/google/android/systemui/columbus/actions/UserAction;
.source "LaunchApp.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/actions/LaunchApp$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLaunchApp.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LaunchApp.kt\ncom/google/android/systemui/columbus/actions/LaunchApp\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,162:1\n1819#2,2:163\n*E\n*S KotlinDebug\n*F\n+ 1 LaunchApp.kt\ncom/google/android/systemui/columbus/actions/LaunchApp\n*L\n143#1,2:163\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/actions/LaunchApp$Companion;


# instance fields
.field private final availableApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final availableShortcuts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final bgHandler:Landroid/os/Handler;

.field private final broadcastReceiver:Lcom/google/android/systemui/columbus/actions/LaunchApp$broadcastReceiver$1;

.field private currentApp:Ljava/lang/String;

.field private currentShortcut:Ljava/lang/String;

.field private final gateListener:Lcom/google/android/systemui/columbus/actions/LaunchApp$gateListener$1;

.field private final launcherApps:Landroid/content/pm/LauncherApps;

.field private final mainHandler:Landroid/os/Handler;

.field private final settingsListener:Lcom/google/android/systemui/columbus/actions/LaunchApp$settingsListener$1;

.field private final tag:Ljava/lang/String;

.field private final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/actions/LaunchApp$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/actions/LaunchApp$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->Companion:Lcom/google/android/systemui/columbus/actions/LaunchApp$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/LauncherApps;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/google/android/systemui/columbus/ColumbusSettings;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcherApps"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastDispatcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columbusSettings"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardVisibility"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mainHandler"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgHandler"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiEventLogger"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/columbus/actions/UserAction;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    .line 31
    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->launcherApps:Landroid/content/pm/LauncherApps;

    .line 35
    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->mainHandler:Landroid/os/Handler;

    .line 36
    iput-object p7, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->bgHandler:Landroid/os/Handler;

    .line 37
    iput-object p8, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const-string p1, "Columbus/LaunchApp"

    .line 41
    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->tag:Ljava/lang/String;

    .line 43
    new-instance p1, Lcom/google/android/systemui/columbus/actions/LaunchApp$settingsListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp$settingsListener$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->settingsListener:Lcom/google/android/systemui/columbus/actions/LaunchApp$settingsListener$1;

    .line 54
    new-instance v1, Lcom/google/android/systemui/columbus/actions/LaunchApp$broadcastReceiver$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp$broadcastReceiver$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    iput-object v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->broadcastReceiver:Lcom/google/android/systemui/columbus/actions/LaunchApp$broadcastReceiver$1;

    .line 59
    new-instance p2, Lcom/google/android/systemui/columbus/actions/LaunchApp$gateListener$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp$gateListener$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->gateListener:Lcom/google/android/systemui/columbus/actions/LaunchApp$gateListener$1;

    .line 66
    new-instance p6, Ljava/util/LinkedHashMap;

    invoke-direct {p6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableApps:Ljava/util/Map;

    .line 67
    new-instance p6, Ljava/util/LinkedHashMap;

    invoke-direct {p6}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableShortcuts:Ljava/util/Map;

    const-string p6, ""

    .line 69
    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Ljava/lang/String;

    .line 70
    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    .line 73
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string p6, "android.intent.action.PACKAGE_ADDED"

    .line 74
    invoke-virtual {v2, p6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p6, "android.intent.action.PACKAGE_REMOVED"

    .line 75
    invoke-virtual {v2, p6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p6, "android.intent.action.PACKAGE_CHANGED"

    .line 76
    invoke-virtual {v2, p6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p3

    .line 77
    invoke-static/range {v0 .. v6}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/Object;)V

    .line 78
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->updateAvailableAppsAndShortcutsAsync()V

    .line 80
    invoke-virtual {p4, p1}, Lcom/google/android/systemui/columbus/ColumbusSettings;->registerColumbusSettingsChangeListener(Lcom/google/android/systemui/columbus/ColumbusSettings$ColumbusSettingsChangeListener;)V

    .line 81
    invoke-virtual {p4}, Lcom/google/android/systemui/columbus/ColumbusSettings;->selectedApp()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Ljava/lang/String;

    .line 82
    invoke-virtual {p4}, Lcom/google/android/systemui/columbus/ColumbusSettings;->selectedAppShortcut()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    .line 84
    invoke-virtual {p5, p2}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    .line 86
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->updateAvailable()V

    return-void
.end method

.method public static final synthetic access$addShortcutsForApp(Lcom/google/android/systemui/columbus/actions/LaunchApp;Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->addShortcutsForApp(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method public static final synthetic access$getAvailableApps$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Ljava/util/Map;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableApps:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getAvailableShortcuts$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Ljava/util/Map;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableShortcuts:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$getMainHandler$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->mainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$setCurrentApp$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setCurrentShortcut$p(Lcom/google/android/systemui/columbus/actions/LaunchApp;Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$updateAvailable(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->updateAvailable()V

    return-void
.end method

.method public static final synthetic access$updateAvailableAppsAndShortcutsAsync(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->updateAvailableAppsAndShortcutsAsync()V

    return-void
.end method

.method private final addShortcutsForApp(Landroid/content/pm/ApplicationInfo;)V
    .locals 4

    .line 130
    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    const/16 v1, 0x9

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 132
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 135
    :try_start_0
    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->launcherApps:Landroid/content/pm/LauncherApps;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 137
    instance-of v0, p1, Ljava/lang/SecurityException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    throw p1

    :cond_1
    :goto_0
    const-string v0, "Columbus/LaunchApp"

    const-string v1, "Failed to query for shortcuts"

    .line 138
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    goto :goto_3

    .line 1819
    :cond_2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    .line 144
    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableShortcuts:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "it.id"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method private final updateAvailable()V
    .locals 4

    .line 104
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->usingShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableShortcuts:Ljava/util/Map;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    goto :goto_2

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableApps:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    :goto_2
    return-void
.end method

.method private final updateAvailableAppsAndShortcutsAsync()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->bgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp$updateAvailableAppsAndShortcutsAsync$1;-><init>(Lcom/google/android/systemui/columbus/actions/LaunchApp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final usingShortcut()Z
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Ljava/lang/String;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method


# virtual methods
.method public getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->usingShortcut()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableShortcuts:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    if-nez p1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_LAUNCH_SHORTCUT:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 93
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->launcherApps:Landroid/content/pm/LauncherApps;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/content/pm/LauncherApps;->startShortcut(Landroid/content/pm/ShortcutInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->availableApps:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-nez p1, :cond_2

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_LAUNCH_APP:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {v0, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/Action;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 152
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/LaunchApp;->usingShortcut()Z

    move-result v0

    const-string v1, "Launch "

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " shortcut "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentShortcut:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 155
    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchApp;->currentApp:Ljava/lang/String;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
