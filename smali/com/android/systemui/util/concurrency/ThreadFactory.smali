.class public interface abstract Lcom/android/systemui/util/concurrency/ThreadFactory;
.super Ljava/lang/Object;
.source "ThreadFactory.java"


# virtual methods
.method public abstract buildDelayableExecutorOnHandler(Landroid/os/Handler;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
.end method

.method public abstract buildExecutorOnNewThread(Ljava/lang/String;)Ljava/util/concurrent/Executor;
.end method

.method public abstract builderHandlerOnNewThread(Ljava/lang/String;)Landroid/os/Handler;
.end method
