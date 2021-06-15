.class public final Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "KeyguardDeferredSetup.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKeyguardDeferredSetup.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyguardDeferredSetup.kt\ncom/google/android/systemui/columbus/gates/KeyguardDeferredSetup\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n1819#2,2:67\n1819#2,2:69\n*E\n*S KotlinDebug\n*F\n+ 1 KeyguardDeferredSetup.kt\ncom/google/android/systemui/columbus/gates/KeyguardDeferredSetup\n*L\n40#1,2:67\n50#1,2:69\n*E\n"
.end annotation


# instance fields
.field private final actionListener:Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup$actionListener$1;

.field private final deferredSetupGate:Lcom/google/android/systemui/columbus/gates/DeferredSetup;

.field private exceptionActive:Z

.field private final exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final gateListener:Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup$gateListener$1;

.field private final keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/gates/DeferredSetup;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;",
            "Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;",
            "Lcom/google/android/systemui/columbus/gates/DeferredSetup;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exceptions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardGate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deferredSetupGate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 22
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;Landroid/os/Handler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->exceptions:Ljava/util/List;

    .line 19
    iput-object p3, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    .line 20
    iput-object p4, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->deferredSetupGate:Lcom/google/android/systemui/columbus/gates/DeferredSetup;

    .line 24
    new-instance p1, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup$gateListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup$gateListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->gateListener:Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup$gateListener$1;

    .line 29
    new-instance p1, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup$actionListener$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup$actionListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->actionListener:Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup$actionListener$1;

    return-void
.end method

.method public static final synthetic access$getExceptions$p(Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;)Ljava/util/List;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->exceptions:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setExceptionActive$p(Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;Z)V
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->exceptionActive:Z

    return-void
.end method

.method public static final synthetic access$updateBlocking(Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->updateBlocking()V

    return-void
.end method

.method private final updateBlocking()V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->exceptionActive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->deferredSetupGate:Lcom/google/android/systemui/columbus/gates/DeferredSetup;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 56
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    return-void
.end method


# virtual methods
.method protected onActivate()V
    .locals 4

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->exceptionActive:Z

    .line 40
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->exceptions:Ljava/util/List;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/actions/Action;

    .line 41
    iget-boolean v2, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->exceptionActive:Z

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable()Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->exceptionActive:Z

    .line 42
    iget-object v2, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->actionListener:Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup$actionListener$1;

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/actions/Action;->registerListener(Lcom/google/android/systemui/columbus/actions/Action$Listener;)V

    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->gateListener:Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup$gateListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    .line 45
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->deferredSetupGate:Lcom/google/android/systemui/columbus/gates/DeferredSetup;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->gateListener:Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup$gateListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    .line 46
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->updateBlocking()V

    return-void
.end method

.method protected onDeactivate()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->exceptions:Ljava/util/List;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/actions/Action;

    .line 50
    iget-object v2, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->actionListener:Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup$actionListener$1;

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/actions/Action;->unregisterListener(Lcom/google/android/systemui/columbus/actions/Action$Listener;)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->gateListener:Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup$gateListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    .line 52
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->deferredSetupGate:Lcom/google/android/systemui/columbus/gates/DeferredSetup;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->gateListener:Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup$gateListener$1;

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/columbus/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [deferredSetupComplete -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->deferredSetupGate:Lcom/google/android/systemui/columbus/gates/DeferredSetup;

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; keyguardVisible -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; exceptionActive -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/gates/KeyguardDeferredSetup;->exceptionActive:Z

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
