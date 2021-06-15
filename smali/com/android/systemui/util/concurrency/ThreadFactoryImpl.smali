.class Lcom/android/systemui/util/concurrency/ThreadFactoryImpl;
.super Ljava/lang/Object;
.source "ThreadFactoryImpl.java"

# interfaces
.implements Lcom/android/systemui/util/concurrency/ThreadFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildDelayableExecutorOnHandler(Landroid/os/Handler;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 52
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/concurrency/ThreadFactoryImpl;->buildDelayableExecutorOnLooper(Landroid/os/Looper;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p0

    return-object p0
.end method

.method public buildDelayableExecutorOnLooper(Landroid/os/Looper;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 57
    new-instance p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object p0
.end method

.method public buildDelayableExecutorOnNewThread(Ljava/lang/String;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 1

    .line 45
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 47
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/concurrency/ThreadFactoryImpl;->buildDelayableExecutorOnLooper(Landroid/os/Looper;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p0

    return-object p0
.end method

.method public buildExecutorOnNewThread(Ljava/lang/String;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/concurrency/ThreadFactoryImpl;->buildDelayableExecutorOnNewThread(Ljava/lang/String;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p0

    return-object p0
.end method

.method public builderHandlerOnNewThread(Ljava/lang/String;)Landroid/os/Handler;
    .locals 0

    .line 33
    new-instance p0, Landroid/os/HandlerThread;

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 35
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object p1
.end method
