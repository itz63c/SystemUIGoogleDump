.class public abstract Lkotlinx/coroutines/channels/Send;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.source "AbstractChannel.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1012
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract completeResumeSend(Ljava/lang/Object;)V
.end method

.method public abstract getPollResult()Ljava/lang/Object;
.end method

.method public abstract tryResumeSend(Ljava/lang/Object;)Ljava/lang/Object;
.end method
