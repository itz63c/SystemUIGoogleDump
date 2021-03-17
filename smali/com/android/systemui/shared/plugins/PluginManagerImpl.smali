.class public Lcom/android/systemui/shared/plugins/PluginManagerImpl;
.super Landroid/content/BroadcastReceiver;
.source "PluginManagerImpl.java"

# interfaces
.implements Lcom/android/systemui/shared/plugins/PluginManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/plugins/PluginManagerImpl$CrashWhilePluginActiveException;,
        Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginExceptionHandler;,
        Lcom/android/systemui/shared/plugins/PluginManagerImpl$ClassLoaderFilter;,
        Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mClassLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFactory:Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

.field private mHasOneShot:Z

.field private final mIsDebuggable:Z

.field private mListening:Z

.field private mLooper:Landroid/os/Looper;

.field private final mOneShotPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParentClassLoader:Lcom/android/systemui/shared/plugins/PluginManagerImpl$ClassLoaderFilter;

.field private final mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

.field private final mPluginInitializer:Lcom/android/systemui/shared/plugins/PluginInitializer;

.field private final mPluginMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/systemui/plugins/PluginListener<",
            "*>;",
            "Lcom/android/systemui/shared/plugins/PluginInstanceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mPluginPrefs:Lcom/android/systemui/shared/plugins/PluginPrefs;

.field private final mWhitelistedPlugins:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const-class v0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginInitializer;)V
    .locals 6

    .line 84
    new-instance v2, Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

    invoke-direct {v2}, Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;-><init>()V

    invoke-interface {p2}, Lcom/android/systemui/shared/plugins/PluginInitializer;->isDebuggable()Z

    move-result v3

    .line 85
    invoke-static {}, Ljava/lang/Thread;->getUncaughtExceptionPreHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 84
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;ZLjava/lang/Thread$UncaughtExceptionHandler;Lcom/android/systemui/shared/plugins/PluginInitializer;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;ZLjava/lang/Thread$UncaughtExceptionHandler;Lcom/android/systemui/shared/plugins/PluginInitializer;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 90
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 67
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    .line 70
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mOneShotPackages:Landroid/util/ArraySet;

    .line 71
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mWhitelistedPlugins:Landroid/util/ArraySet;

    .line 91
    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mFactory:Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

    .line 93
    invoke-interface {p5}, Lcom/android/systemui/shared/plugins/PluginInitializer;->getBgLooper()Landroid/os/Looper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mLooper:Landroid/os/Looper;

    .line 94
    iput-boolean p3, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mIsDebuggable:Z

    .line 95
    invoke-interface {p5, p1}, Lcom/android/systemui/shared/plugins/PluginInitializer;->getWhitelistedPlugins(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 96
    new-instance p2, Lcom/android/systemui/shared/plugins/PluginPrefs;

    invoke-direct {p2, p1}, Lcom/android/systemui/shared/plugins/PluginPrefs;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginPrefs:Lcom/android/systemui/shared/plugins/PluginPrefs;

    .line 97
    invoke-interface {p5, p1}, Lcom/android/systemui/shared/plugins/PluginInitializer;->getPluginEnabler(Landroid/content/Context;)Lcom/android/systemui/shared/plugins/PluginEnabler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

    .line 98
    iput-object p5, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginInitializer:Lcom/android/systemui/shared/plugins/PluginInitializer;

    .line 100
    new-instance p1, Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginExceptionHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p4, p2}, Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginExceptionHandler;-><init>(Lcom/android/systemui/shared/plugins/PluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/android/systemui/shared/plugins/PluginManagerImpl$1;)V

    .line 102
    invoke-static {p1}, Ljava/lang/Thread;->setUncaughtExceptionPreHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 104
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/android/systemui/shared/plugins/PluginManagerImpl$1;

    invoke-direct {p2, p0, p5}, Lcom/android/systemui/shared/plugins/PluginManagerImpl$1;-><init>(Lcom/android/systemui/shared/plugins/PluginManagerImpl;Lcom/android/systemui/shared/plugins/PluginInitializer;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/plugins/PluginManagerImpl;)Landroid/util/ArrayMap;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private clearClassLoader(Ljava/lang/String;)Z
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPluginPackageWhitelisted(Ljava/lang/String;)Z
    .locals 3

    .line 371
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mWhitelistedPlugins:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 372
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 374
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 377
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isPluginWhitelisted(Landroid/content/ComponentName;)Z
    .locals 3

    .line 385
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mWhitelistedPlugins:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 386
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 388
    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 391
    :cond_1
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private startListening()V
    .locals 2

    .line 194
    iget-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mListening:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 195
    iput-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mListening:Z

    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 198
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.action.PLUGIN_CHANGED"

    .line 200
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.action.DISABLE_PLUGIN"

    .line 201
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 202
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private stopListening()V
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mListening:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mHasOneShot:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mListening:Z

    .line 212
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 161
    invoke-static {p2}, Lcom/android/systemui/shared/plugins/PluginManager$Helper;->getAction(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/systemui/plugins/Plugin;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/PluginListener<",
            "TT;>;",
            "Ljava/lang/Class;",
            "Z)V"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginPrefs:Lcom/android/systemui/shared/plugins/PluginPrefs;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/plugins/PluginPrefs;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mFactory:Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;

    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mLooper:Landroid/os/Looper;

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-object v7, p3

    move-object v8, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;->createPluginInstanceManager(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;ZLandroid/os/Looper;Ljava/lang/Class;Lcom/android/systemui/shared/plugins/PluginManagerImpl;)Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->loadAll()V

    .line 175
    monitor-enter p0

    .line 176
    :try_start_0
    iget-object p3, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-direct {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->startListening()V

    return-void

    :catchall_0
    move-exception p1

    .line 177
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public dependsOn(Lcom/android/systemui/plugins/Plugin;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/systemui/plugins/Plugin;",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 336
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 337
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 338
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->dependsOn(Lcom/android/systemui/plugins/Plugin;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 342
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getClassLoader(Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;
    .locals 4

    .line 302
    iget-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mIsDebuggable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->isPluginPackageWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    sget-object p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get class loader for non-whitelisted plugin. Src:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pkg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    return-object p0

    .line 311
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    .line 313
    invoke-static {v1, v3, p1, v0, v2}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;ZLandroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;)V

    .line 314
    new-instance v1, Ldalvik/system/PathClassLoader;

    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 315
    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->getParentClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 318
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method getParentClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    .line 327
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mParentClassLoader:Lcom/android/systemui/shared/plugins/PluginManagerImpl$ClassLoaderFilter;

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Lcom/android/systemui/shared/plugins/PluginManagerImpl$ClassLoaderFilter;

    const-class v1, Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.android.systemui.plugin"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/shared/plugins/PluginManagerImpl$ClassLoaderFilter;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mParentClassLoader:Lcom/android/systemui/shared/plugins/PluginManagerImpl$ClassLoaderFilter;

    .line 332
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mParentClassLoader:Lcom/android/systemui/shared/plugins/PluginManagerImpl$ClassLoaderFilter;

    return-object p0
.end method

.method public getPluginEnabler()Lcom/android/systemui/shared/plugins/PluginEnabler;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginEnabler:Lcom/android/systemui/shared/plugins/PluginEnabler;

    return-object p0
.end method

.method public getWhitelistedPlugins()[Ljava/lang/String;
    .locals 1

    .line 117
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mWhitelistedPlugins:Landroid/util/ArraySet;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public handleWtfs()V
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginInitializer:Lcom/android/systemui/shared/plugins/PluginInitializer;

    invoke-interface {p0}, Lcom/android/systemui/shared/plugins/PluginInitializer;->handleWtfs()V

    return-void
.end method

.method public isDebuggable()Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mIsDebuggable:Z

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const-string p1, "android.intent.action.USER_UNLOCKED"

    .line 217
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 218
    monitor-enter p0

    .line 219
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    .line 220
    invoke-virtual {p2}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->loadAll()V

    goto :goto_0

    .line 222
    :cond_0
    monitor-exit p0

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const-string p1, "com.android.systemui.action.DISABLE_PLUGIN"

    .line 223
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x6

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    .line 224
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 226
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 225
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 227
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->isPluginWhitelisted(Landroid/content/ComponentName;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 231
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->getPluginEnabler()Lcom/android/systemui/shared/plugins/PluginEnabler;

    move-result-object p2

    invoke-interface {p2, p1, v1}, Lcom/android/systemui/shared/plugins/PluginEnabler;->setDisabled(Landroid/content/ComponentName;I)V

    .line 232
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 235
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 238
    iget-object v3, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mOneShotPackages:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_4

    .line 239
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v5, "stat_sys_warning"

    const-string v6, "drawable"

    const-string v7, "android"

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 241
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "system_notification_accent_color"

    const-string v7, "color"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    .line 245
    :try_start_1
    iget-object v7, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 246
    invoke-virtual {v7, p1, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-object v7, p1

    .line 250
    :goto_1
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    const-string v10, "ALR"

    invoke-direct {v8, v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v8, 0x0

    .line 253
    invoke-virtual {v3, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 254
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 255
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 256
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v8, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    .line 257
    invoke-virtual {v8, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Plugin \""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\" has updated"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 258
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v5, "Restart SysUI for changes to take effect."

    .line 259
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 260
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.android.systemui.action.RESTART"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "package://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 261
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 260
    invoke-virtual {v5, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    .line 262
    iget-object v7, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    const/high16 v8, 0x2000000

    invoke-static {v7, v6, v5, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 263
    new-instance v6, Landroid/app/Notification$Action$Builder;

    const/4 v7, 0x0

    const-string v8, "Restart SysUI"

    invoke-direct {v6, v7, v8, v5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 264
    iget-object v5, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    const-class v6, Landroid/app/NotificationManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 265
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v5, v0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 267
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->clearClassLoader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 268
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_5

    .line 269
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reloading "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 271
    :cond_5
    sget-object v0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reloading "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 274
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    .line 277
    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->getPluginEnabler()Lcom/android/systemui/shared/plugins/PluginEnabler;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/systemui/shared/plugins/PluginEnabler;->getDisableReason(Landroid/content/ComponentName;)I

    move-result v0

    if-eq v0, v4, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    if-ne v0, v1, :cond_8

    .line 281
    :cond_7
    sget-object v0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-enabling previously disabled plugin that has been updated: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->getPluginEnabler()Lcom/android/systemui/shared/plugins/PluginEnabler;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/systemui/shared/plugins/PluginEnabler;->setEnabled(Landroid/content/ComponentName;)V

    .line 286
    :cond_8
    monitor-enter p0

    :try_start_2
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 287
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 288
    iget-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    .line 289
    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->onPackageChange(Ljava/lang/String;)V

    goto :goto_3

    .line 292
    :cond_9
    iget-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    .line 293
    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->onPackageRemoved(Ljava/lang/String;)V

    goto :goto_4

    .line 296
    :cond_a
    monitor-exit p0

    :goto_5
    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/plugins/PluginListener<",
            "*>;)V"
        }
    .end annotation

    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    monitor-exit p0

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/shared/plugins/PluginInstanceManager;

    invoke-virtual {p1}, Lcom/android/systemui/shared/plugins/PluginInstanceManager;->destroy()V

    .line 187
    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 188
    invoke-direct {p0}, Lcom/android/systemui/shared/plugins/PluginManagerImpl;->stopListening()V

    .line 190
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
