.class public abstract Lcom/android/systemui/util/concurrency/SysUIConcurrencyModule;
.super Ljava/lang/Object;
.source "SysUIConcurrencyModule.java"


# direct methods
.method public static provideBackgroundDelayableExecutor(Landroid/os/Looper;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 1

    .line 119
    new-instance v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static provideBackgroundExecutor(Landroid/os/Looper;)Ljava/util/concurrent/Executor;
    .locals 1

    .line 100
    new-instance v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static provideBackgroundRepeatableExecutor(Lcom/android/systemui/util/concurrency/DelayableExecutor;)Lcom/android/systemui/util/concurrency/RepeatableExecutor;
    .locals 1

    .line 149
    new-instance v0, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/RepeatableExecutorImpl;-><init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    return-object v0
.end method

.method public static provideBgHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static provideBgLooper()Landroid/os/Looper;
    .locals 3

    .line 46
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SysUiBg"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 48
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 49
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static provideDelayableExecutor(Landroid/os/Looper;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 1

    .line 109
    new-instance v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static provideExecutor(Landroid/os/Looper;)Ljava/util/concurrent/Executor;
    .locals 1

    .line 80
    new-instance v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static provideLongRunningExecutor(Landroid/os/Looper;)Ljava/util/concurrent/Executor;
    .locals 1

    .line 90
    new-instance v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static provideLongRunningLooper()Landroid/os/Looper;
    .locals 3

    .line 57
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SysUiLng"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 60
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static provideMainDelayableExecutor(Landroid/os/Looper;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 1

    .line 129
    new-instance v0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static provideUiBackgroundExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 171
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
