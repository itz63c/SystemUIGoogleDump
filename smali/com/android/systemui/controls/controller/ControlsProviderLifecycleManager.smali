.class public final Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;
.super Ljava/lang/Object;
.source "ControlsProviderLifecycleManager.kt"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Companion;,
        Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;,
        Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;,
        Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Suggest;,
        Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;,
        Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nControlsProviderLifecycleManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ControlsProviderLifecycleManager.kt\ncom/android/systemui/controls/controller/ControlsProviderLifecycleManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,343:1\n1819#2,2:344\n*E\n*S KotlinDebug\n*F\n+ 1 ControlsProviderLifecycleManager.kt\ncom/android/systemui/controls/controller/ControlsProviderLifecycleManager\n*L\n142#1,2:344\n*E\n"
.end annotation


# static fields
.field private static final BIND_FLAGS:I

.field public static final Companion:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Companion;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final actionCallbackService:Landroid/service/controls/IControlsActionCallback$Stub;

.field private bindTryCount:I

.field private final componentName:Landroid/content/ComponentName;

.field private final context:Landroid/content/Context;

.field private final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final intent:Landroid/content/Intent;

.field private onLoadCanceller:Ljava/lang/Runnable;

.field private final queuedServiceMethods:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "queuedServiceMethods"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;",
            ">;"
        }
    .end annotation
.end field

.field private requiresBound:Z

.field private final serviceConnection:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;

.field private final token:Landroid/os/IBinder;

.field private final user:Landroid/os/UserHandle;

.field private wrapper:Lcom/android/systemui/controls/controller/ServiceWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->Companion:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Companion;

    const v0, 0x4000101

    .line 79
    sput v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->BIND_FLAGS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/service/controls/IControlsActionCallback$Stub;Landroid/os/UserHandle;Landroid/content/ComponentName;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionCallbackService"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "user"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "componentName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 60
    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->actionCallbackService:Landroid/service/controls/IControlsActionCallback$Stub;

    .line 61
    iput-object p4, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->user:Landroid/os/UserHandle;

    .line 62
    iput-object p5, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->componentName:Landroid/content/ComponentName;

    .line 65
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->token:Landroid/os/IBinder;

    .line 68
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->queuedServiceMethods:Ljava/util/Set;

    .line 71
    const-class p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->TAG:Ljava/lang/String;

    .line 83
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 85
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->getToken()Landroid/os/IBinder;

    move-result-object p3

    const-string p4, "CALLBACK_TOKEN"

    invoke-virtual {p2, p4, p3}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 87
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const-string p3, "CALLBACK_BUNDLE"

    .line 85
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 83
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->intent:Landroid/content/Intent;

    .line 118
    new-instance p1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)V

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->serviceConnection:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;

    return-void
.end method

.method public static final synthetic access$bindService(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->bindService(Z)V

    return-void
.end method

.method public static final synthetic access$getActionCallbackService$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)Landroid/service/controls/IControlsActionCallback$Stub;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->actionCallbackService:Landroid/service/controls/IControlsActionCallback$Stub;

    return-object p0
.end method

.method public static final synthetic access$getBIND_FLAGS$cp()I
    .locals 1

    .line 57
    sget v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->BIND_FLAGS:I

    return v0
.end method

.method public static final synthetic access$getBindTryCount$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->bindTryCount:I

    return p0
.end method

.method public static final synthetic access$getContext$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getIntent$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)Landroid/content/Intent;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public static final synthetic access$getServiceConnection$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->serviceConnection:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getWrapper$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)Lcom/android/systemui/controls/controller/ServiceWrapper;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->wrapper:Lcom/android/systemui/controls/controller/ServiceWrapper;

    return-object p0
.end method

.method public static final synthetic access$handlePendingServiceMethods(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->handlePendingServiceMethods()V

    return-void
.end method

.method public static final synthetic access$queueServiceMethod(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->queueServiceMethod(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;)V

    return-void
.end method

.method public static final synthetic access$setBindTryCount$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->bindTryCount:I

    return-void
.end method

.method public static final synthetic access$setRequiresBound$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->requiresBound:Z

    return-void
.end method

.method public static final synthetic access$setWrapper$p(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Lcom/android/systemui/controls/controller/ServiceWrapper;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->wrapper:Lcom/android/systemui/controls/controller/ServiceWrapper;

    return-void
.end method

.method private final bindService(Z)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$bindService$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$bindService$1;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final handlePendingServiceMethods()V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->queuedServiceMethods:Ljava/util/Set;

    monitor-enter v0

    .line 138
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->queuedServiceMethods:Ljava/util/Set;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 139
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->queuedServiceMethods:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit v0

    .line 1819
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;

    .line 143
    invoke-virtual {v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;->run()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 137
    monitor-exit v0

    throw p0
.end method

.method private final invokeOrQueue(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->wrapper:Lcom/android/systemui/controls/controller/ServiceWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;->run()V

    .line 165
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-nez v0, :cond_1

    .line 168
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->queueServiceMethod(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;)V

    const/4 p1, 0x1

    .line 169
    invoke-direct {p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->bindService(Z)V

    :cond_1
    return-void
.end method

.method private final queueServiceMethod(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->queuedServiceMethods:Ljava/util/Set;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->queuedServiceMethods:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->wrapper:Lcom/android/systemui/controls/controller/ServiceWrapper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->wrapper:Lcom/android/systemui/controls/controller/ServiceWrapper;

    .line 150
    iget-boolean v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->requiresBound:Z

    if-eqz v0, :cond_1

    .line 152
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->TAG:Ljava/lang/String;

    const-string v0, "binderDied"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final cancelLoadTimeout()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->onLoadCanceller:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->onLoadCanceller:Ljava/lang/Runnable;

    return-void
.end method

.method public final cancelSubscription(Landroid/service/controls/IControlsSubscription;)V
    .locals 2

    const-string/jumbo v0, "subscription"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->TAG:Ljava/lang/String;

    const-string v1, "cancelSubscription: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->wrapper:Lcom/android/systemui/controls/controller/ServiceWrapper;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/controller/ServiceWrapper;->cancel(Landroid/service/controls/IControlsSubscription;)Z

    :goto_0
    return-void
.end method

.method public final getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->componentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getToken()Landroid/os/IBinder;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->token:Landroid/os/IBinder;

    return-object p0
.end method

.method public final getUser()Landroid/os/UserHandle;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->user:Landroid/os/UserHandle;

    return-object p0
.end method

.method public final maybeBindAndLoad(Landroid/service/controls/IControlsSubscriber$Stub;)V
    .locals 5

    const-string/jumbo v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$maybeBindAndLoad$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$maybeBindAndLoad$1;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Landroid/service/controls/IControlsSubscriber$Stub;)V

    .line 187
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x14

    .line 182
    invoke-interface {v0, v1, v3, v4, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->onLoadCanceller:Ljava/lang/Runnable;

    .line 189
    new-instance v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Load;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Landroid/service/controls/IControlsSubscriber$Stub;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->invokeOrQueue(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;)V

    return-void
.end method

.method public final maybeBindAndLoadSuggested(Landroid/service/controls/IControlsSubscriber$Stub;)V
    .locals 5

    const-string/jumbo v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$maybeBindAndLoadSuggested$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$maybeBindAndLoadSuggested$1;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Landroid/service/controls/IControlsSubscriber$Stub;)V

    .line 206
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x14

    .line 201
    invoke-interface {v0, v1, v3, v4, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->onLoadCanceller:Ljava/lang/Runnable;

    .line 208
    new-instance v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Suggest;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Suggest;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Landroid/service/controls/IControlsSubscriber$Stub;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->invokeOrQueue(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;)V

    return-void
.end method

.method public final maybeBindAndSendAction(Ljava/lang/String;Landroid/service/controls/actions/ControlAction;)V
    .locals 1

    const-string v0, "controlId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    new-instance v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Action;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Ljava/lang/String;Landroid/service/controls/actions/ControlAction;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->invokeOrQueue(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;)V

    return-void
.end method

.method public final maybeBindAndSubscribe(Ljava/util/List;Landroid/service/controls/IControlsSubscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/service/controls/IControlsSubscriber;",
            ")V"
        }
    .end annotation

    const-string v0, "controlIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "subscriber"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    new-instance v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$Subscribe;-><init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;Ljava/util/List;Landroid/service/controls/IControlsSubscriber;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->invokeOrQueue(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$ServiceMethod;)V

    return-void
.end method

.method public final startSubscription(Landroid/service/controls/IControlsSubscription;J)V
    .locals 2

    const-string/jumbo v0, "subscription"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->TAG:Ljava/lang/String;

    const-string v1, "startSubscription: "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->wrapper:Lcom/android/systemui/controls/controller/ServiceWrapper;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/controls/controller/ServiceWrapper;->request(Landroid/service/controls/IControlsSubscription;J)Z

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ControlsProviderLifecycleManager("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "component="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    const-string v1, ", user="

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    .line 286
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder(\"ControlsProviderLifecycleManager(\").apply {\n            append(\"component=$componentName\")\n            append(\", user=$user\")\n            append(\")\")\n        }.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final unbindService()V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->onLoadCanceller:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->onLoadCanceller:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 279
    invoke-direct {p0, v0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->bindService(Z)V

    return-void
.end method
