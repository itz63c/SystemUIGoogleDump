.class public final Lkotlinx/coroutines/channels/SendElement;
.super Lkotlinx/coroutines/channels/Send;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractChannel.kt\nkotlinx/coroutines/channels/SendElement\n*L\n1#1,1072:1\n*E\n"
.end annotation


# instance fields
.field public final cont:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final pollResult:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cont"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1035
    invoke-direct {p0}, Lkotlinx/coroutines/channels/Send;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/SendElement;->pollResult:Ljava/lang/Object;

    iput-object p2, p0, Lkotlinx/coroutines/channels/SendElement;->cont:Lkotlinx/coroutines/CancellableContinuation;

    return-void
.end method


# virtual methods
.method public completeResumeSend(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1037
    iget-object p0, p0, Lkotlinx/coroutines/channels/SendElement;->cont:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/CancellableContinuation;->completeResume(Ljava/lang/Object;)V

    return-void
.end method

.method public getPollResult()Ljava/lang/Object;
    .locals 0

    .line 1033
    iget-object p0, p0, Lkotlinx/coroutines/channels/SendElement;->pollResult:Ljava/lang/Object;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendElement("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/SendElement;->getPollResult()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public tryResumeSend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1036
    iget-object p0, p0, Lkotlinx/coroutines/channels/SendElement;->cont:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {p0, v0, p1}, Lkotlinx/coroutines/CancellableContinuation;->tryResume(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
