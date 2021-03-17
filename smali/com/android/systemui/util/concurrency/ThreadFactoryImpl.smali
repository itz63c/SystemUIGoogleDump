.class Lcom/android/systemui/util/concurrency/ThreadFactoryImpl;
.super Ljava/lang/Object;
.source "ThreadFactoryImpl.java"

# interfaces
.implements Lcom/android/systemui/util/concurrency/ThreadFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildDelayableExecutorOnNewThread(Ljava/lang/String;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 34
    new-instance p0, Landroid/os/HandlerThread;

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 36
    new-instance p1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;-><init>(Landroid/os/Looper;)V

    return-object p1
.end method

.method public buildExecutorOnNewThread(Ljava/lang/String;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/concurrency/ThreadFactoryImpl;->buildDelayableExecutorOnNewThread(Ljava/lang/String;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p0

    return-object p0
.end method
