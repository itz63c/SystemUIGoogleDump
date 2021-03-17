.class final Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;
.super Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;
.source "ConvenienceExtensions.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;
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
        "-",
        "Landroid/view/View;",
        ">;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.util.ConvenienceExtensionsKt$children$1"
    f = "ConvenienceExtensions.kt"
    l = {
        0x1a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $this_children:Landroid/view/ViewGroup;

.field I$0:I

.field I$1:I

.field label:I

.field private synthetic p$:Lkotlin/sequences/SequenceScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/sequences/SequenceScope<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lkotlin/coroutines/jvm/internal/RestrictedSuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->$this_children:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1
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

    new-instance v0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;

    iget-object p0, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->$this_children:Landroid/view/ViewGroup;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;-><init>(Landroid/view/ViewGroup;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/sequences/SequenceScope;

    iput-object p1, v0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->p$:Lkotlin/sequences/SequenceScope;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 65535
    iget v1, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->I$1:I

    iget v3, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->I$0:I

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65535
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 26
    iget-object p1, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->$this_children:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v1, 0x0

    add-int/lit8 v3, p1, -0x1

    const/high16 v4, -0x80000000

    if-eq p1, v4, :cond_4

    if-ltz v3, :cond_4

    :cond_2
    add-int/lit8 p1, v1, 0x1

    iget-object v4, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->p$:Lkotlin/sequences/SequenceScope;

    iget-object v5, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->$this_children:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iput p1, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->I$0:I

    iput v3, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->I$1:I

    iput v2, p0, Lcom/android/systemui/util/ConvenienceExtensionsKt$children$1;->label:I

    invoke-virtual {v4, v1, p0}, Lkotlin/sequences/SequenceScope;->yield(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_3

    return-object v0

    :cond_3
    move v1, p1

    :goto_0
    if-le v1, v3, :cond_2

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
