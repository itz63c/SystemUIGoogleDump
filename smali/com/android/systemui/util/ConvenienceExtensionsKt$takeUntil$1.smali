.class final Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "ConvenienceExtensions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/ConvenienceExtensionsKt;->takeUntil(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/sequences/SequenceScope<",
        "-TT;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.util.ConvenienceExtensionsKt$takeUntil$1"
    f = "ConvenienceExtensions.kt"
    l = {
        0x20
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $pred:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $this_takeUntil:Lkotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field private synthetic p$:Lkotlin/sequences/SequenceScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/sequences/SequenceScope<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;->$this_takeUntil:Lkotlin/sequences/Sequence;

    iput-object p2, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;->$pred:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;

    iget-object v1, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;->$this_takeUntil:Lkotlin/sequences/Sequence;

    iget-object p0, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;->$pred:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/sequences/SequenceScope;

    iput-object p1, v0, Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;->p$:Lkotlin/sequences/SequenceScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP1;TP2;)TR;"
        }
    .end annotation

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 65535
    iget v1, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;->L$1:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;->L$0:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .line 34
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65535
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 31
    iget-object p1, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;->$this_takeUntil:Lkotlin/sequences/Sequence;

    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v3, p1

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 32
    iget-object p1, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;->p$:Lkotlin/sequences/SequenceScope;

    iput-object v3, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;->label:I

    invoke-virtual {p1, v1, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 33
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$takeUntil$1;->$pred:Lkotlin/jvm/functions/Function1;

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 34
    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
