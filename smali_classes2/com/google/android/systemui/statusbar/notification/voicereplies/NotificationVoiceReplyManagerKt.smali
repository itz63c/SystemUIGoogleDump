.class public final Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;
.super Ljava/lang/Object;
.source "NotificationVoiceReplyManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationVoiceReplyManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,779:1\n714#1:791\n144#2:780\n145#2:782\n1#3:781\n197#4,8:783\n197#4,8:792\n*E\n*S KotlinDebug\n*F\n+ 1 NotificationVoiceReplyManager.kt\ncom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt\n*L\n717#1:791\n693#1:780\n693#1:782\n714#1,8:783\n717#1,8:792\n*E\n"
.end annotation


# direct methods
.method public static final Subscription(Lkotlin/jvm/functions/Function0;)Lcom/android/systemui/statusbar/notification/people/Subscription;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/android/systemui/statusbar/notification/people/Subscription;"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/SafeSubscription;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/statusbar/notification/voicereplies/SafeSubscription;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public static final synthetic access$distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOrPut(Ljava/util/Map;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->getOrPut(Ljava/util/Map;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getReplyButton(Landroid/view/View;Landroid/app/RemoteInput;)Landroid/widget/Button;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt;->getReplyButton(Landroid/view/View;Landroid/app/RemoteInput;)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method static final synthetic collectLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    .line 734
    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$collectLatest$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$collectLatest$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p2}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/flow/Flow<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-TT;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lkotlinx/coroutines/flow/Flow<",
            "TT;>;"
        }
    .end annotation

    .line 723
    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$distinctUntilChanged$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$distinctUntilChanged$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->flow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method private static final getOrPut(Ljava/util/Map;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;",
            "Lkotlin/jvm/functions/Function0<",
            "+TV;>;)TV;"
        }
    .end annotation

    .line 712
    new-instance v0, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$getOrPut$1;

    invoke-direct {v0, p2}, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$getOrPut$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method private static final getReplyButton(Landroid/view/View;Landroid/app/RemoteInput;)Landroid/widget/Button;
    .locals 4

    const v0, 0x10201b1

    .line 690
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    move-object p0, v0

    goto :goto_1

    .line 691
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 692
    :cond_1
    sget-object v1, Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$getReplyButton$1;->INSTANCE:Lcom/google/android/systemui/statusbar/notification/voicereplies/NotificationVoiceReplyManagerKt$getReplyButton$1;

    invoke-static {p0, v1}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    :goto_1
    if-nez p0, :cond_2

    goto :goto_7

    .line 144
    :cond_2
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    const v3, 0x102042a

    .line 694
    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    :goto_2
    move-object v2, v0

    goto :goto_4

    .line 695
    :cond_4
    instance-of v3, v2, [Ljava/lang/Object;

    if-eqz v3, :cond_5

    check-cast v2, [Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    if-nez v2, :cond_6

    goto :goto_2

    .line 696
    :cond_6
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    move-result-object v2

    :goto_4
    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_5

    .line 697
    :cond_7
    invoke-static {v2, p1}, Lkotlin/sequences/SequencesKt;->contains(Lkotlin/sequences/Sequence;Ljava/lang/Object;)Z

    move-result v2

    :goto_5
    if-eqz v2, :cond_3

    goto :goto_6

    :cond_8
    move-object v1, v0

    .line 693
    :goto_6
    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_9

    goto :goto_7

    .line 700
    :cond_9
    instance-of p0, v1, Landroid/widget/Button;

    if-eqz p0, :cond_a

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    :cond_a
    :goto_7
    return-object v0
.end method
