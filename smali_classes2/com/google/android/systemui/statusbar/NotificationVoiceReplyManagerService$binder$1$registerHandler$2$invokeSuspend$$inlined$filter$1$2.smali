.class public final Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2$invokeSuspend$$inlined$filter$1$2;
.super Ljava/lang/Object;
.source "Collect.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2$invokeSuspend$$inlined$filter$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "Lcom/google/android/systemui/statusbar/StartVoiceReplyData;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollect.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Collect.kt\nkotlinx/coroutines/flow/FlowKt__CollectKt$collect$3\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 4 NotificationVoiceReplyManagerService.kt\ncom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2\n*L\n1#1,135:1\n54#2:136\n21#3:137\n22#3:139\n92#4:138\n*E\n"
.end annotation


# instance fields
.field final synthetic $this_unsafeFlow$inlined:Lkotlinx/coroutines/flow/FlowCollector;

.field final synthetic this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2$invokeSuspend$$inlined$filter$1;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2$invokeSuspend$$inlined$filter$1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2$invokeSuspend$$inlined$filter$1$2;->$this_unsafeFlow$inlined:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2$invokeSuspend$$inlined$filter$1$2;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2$invokeSuspend$$inlined$filter$1;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2$invokeSuspend$$inlined$filter$1$2;->$this_unsafeFlow$inlined:Lkotlinx/coroutines/flow/FlowCollector;

    .line 137
    move-object v1, p1

    check-cast v1, Lcom/google/android/systemui/statusbar/StartVoiceReplyData;

    .line 92
    invoke-virtual {v1}, Lcom/google/android/systemui/statusbar/StartVoiceReplyData;->getUserId()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2$invokeSuspend$$inlined$filter$1$2;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2$invokeSuspend$$inlined$filter$1;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1$registerHandler$2$invokeSuspend$$inlined$filter$1;->this$0:Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/NotificationVoiceReplyManagerService$binder$1;->getUserId()I

    move-result p0

    if-ne v1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 22
    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1
    return-object p0
.end method
