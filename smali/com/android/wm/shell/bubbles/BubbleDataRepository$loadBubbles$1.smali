.class final Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BubbleDataRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/bubbles/BubbleDataRepository;->loadBubbles(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/Job;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBubbleDataRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BubbleDataRepository.kt\ncom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,183:1\n1517#2:184\n1588#2,3:185\n1328#2:188\n1414#2,5:189\n1445#2:194\n1470#2,3:195\n1473#2,3:205\n1571#2,9:208\n1819#2:217\n256#2,2:218\n1820#2:222\n1580#2:223\n355#3,7:198\n1#4:220\n1#4:221\n*E\n*S KotlinDebug\n*F\n+ 1 BubbleDataRepository.kt\ncom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1\n*L\n137#1:184\n137#1,3:185\n153#1:188\n153#1,5:189\n159#1:194\n159#1,3:195\n159#1,3:205\n162#1,9:208\n162#1:217\n164#1,2:218\n162#1:222\n162#1:223\n159#1,7:198\n162#1:221\n*E\n"
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.wm.shell.bubbles.BubbleDataRepository$loadBubbles$1"
    f = "BubbleDataRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $cb:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/util/List<",
            "+",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field private synthetic p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;


# direct methods
.method constructor <init>(Lcom/android/wm/shell/bubbles/BubbleDataRepository;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wm/shell/bubbles/BubbleDataRepository;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->$cb:Lkotlin/jvm/functions/Function1;

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

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->$cb:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v1, p0, p2}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleDataRepository;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->p$:Lkotlinx/coroutines/CoroutineScope;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 65535
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->label:I

    if-nez v0, :cond_b

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 128
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->access$getPersistentRepository$p(Lcom/android/wm/shell/bubbles/BubbleDataRepository;)Lcom/android/wm/shell/bubbles/storage/BubblePersistentRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/storage/BubblePersistentRepository;->readFromDisk()Ljava/util/List;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->access$getVolatileRepository$p(Lcom/android/wm/shell/bubbles/BubbleDataRepository;)Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->addBubbles(Ljava/util/List;)V

    .line 1517
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1589
    check-cast v2, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    .line 137
    new-instance v3, Lcom/android/wm/shell/bubbles/ShortcutKey;

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getUserId()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/android/wm/shell/bubbles/ShortcutKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    .line 1328
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1414
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1415
    check-cast v3, Lcom/android/wm/shell/bubbles/ShortcutKey;

    .line 154
    invoke-static {v1}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->access$getLauncherApps$p(Lcom/android/wm/shell/bubbles/BubbleDataRepository;)Landroid/content/pm/LauncherApps;

    move-result-object v4

    .line 155
    new-instance v5, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v5}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 156
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/ShortcutKey;->getPkg()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    move-result-object v5

    const/16 v6, 0x411

    .line 157
    invoke-virtual {v5, v6}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/ShortcutKey;->getUserId()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 154
    invoke-virtual {v4, v5, v3}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    .line 158
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 1416
    :cond_1
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 1445
    :cond_2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1470
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1471
    move-object v3, v2

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    .line 159
    new-instance v4, Lcom/android/wm/shell/bubbles/ShortcutKey;

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v5

    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    const-string v6, "it.`package`"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, v5, v3}, Lcom/android/wm/shell/bubbles/ShortcutKey;-><init>(ILjava/lang/String;)V

    .line 355
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1472
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 358
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1472
    :cond_3
    check-cast v3, Ljava/util/List;

    .line 1473
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 162
    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    .line 1571
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1819
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1579
    check-cast v3, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    .line 163
    new-instance v4, Lcom/android/wm/shell/bubbles/ShortcutKey;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getUserId()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/wm/shell/bubbles/ShortcutKey;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    if-nez v4, :cond_6

    goto :goto_5

    .line 256
    :cond_6
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/content/pm/ShortcutInfo;

    .line 164
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getShortcutId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_4

    :cond_8
    move-object v6, v5

    :goto_4
    move-object v9, v6

    check-cast v9, Landroid/content/pm/ShortcutInfo;

    if-nez v9, :cond_9

    goto :goto_5

    .line 165
    :cond_9
    new-instance v5, Lcom/android/wm/shell/bubbles/Bubble;

    .line 166
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 168
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getDesiredHeight()I

    move-result v10

    .line 169
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getDesiredHeightResId()I

    move-result v11

    .line 170
    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->getTitle()Ljava/lang/String;

    move-result-object v12

    .line 171
    invoke-static {v1}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->access$getMainExecutor$p(Lcom/android/wm/shell/bubbles/BubbleDataRepository;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object v13

    move-object v7, v5

    .line 165
    invoke-direct/range {v7 .. v13}, Lcom/android/wm/shell/bubbles/Bubble;-><init>(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;IILjava/lang/String;Ljava/util/concurrent/Executor;)V

    :goto_5
    if-eqz v5, :cond_5

    .line 1579
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 174
    :cond_a
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->access$getMainExecutor$p(Lcom/android/wm/shell/bubbles/BubbleDataRepository;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance v0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1$1;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->$cb:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, p0, v2}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
