.class public final Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;
.super Lcom/google/android/systemui/columbus/gates/Gate;
.source "NavigationBarVisibility.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNavigationBarVisibility.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NavigationBarVisibility.kt\ncom/google/android/systemui/columbus/gates/NavigationBarVisibility\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,120:1\n1819#2,2:121\n1819#2,2:123\n*E\n*S KotlinDebug\n*F\n+ 1 NavigationBarVisibility.kt\ncom/google/android/systemui/columbus/gates/NavigationBarVisibility\n*L\n69#1,2:121\n81#1,2:123\n*E\n"
.end annotation


# instance fields
.field private final actionListener:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$actionListener$1;

.field private final assistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

.field private final commandQueueCallbacks:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$commandQueueCallbacks$1;

.field private final displayId:I

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

.field private final gateListener:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$gateListener$1;

.field private isKeyguardShowing:Z

.field private isNavigationGestural:Z

.field private isNavigationHidden:Z

.field private final keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

.field private final navigationModeGate:Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/android/systemui/assist/AssistManager;Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/actions/Action;",
            ">;",
            "Lcom/android/systemui/assist/AssistManager;",
            "Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;",
            "Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exceptions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assistManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardGate"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "navigationModeGate"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandQueue"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 25
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/systemui/columbus/gates/Gate;-><init>(Landroid/content/Context;Landroid/os/Handler;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->exceptions:Ljava/util/List;

    .line 21
    iput-object p4, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    .line 22
    iput-object p5, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->navigationModeGate:Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->displayId:I

    .line 28
    new-instance p1, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$commandQueueCallbacks$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$commandQueueCallbacks$1;-><init>(Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;)V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->commandQueueCallbacks:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$commandQueueCallbacks$1;

    .line 41
    instance-of p2, p3, Lcom/google/android/systemui/assist/AssistManagerGoogle;

    if-eqz p2, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/google/android/systemui/assist/AssistManagerGoogle;

    :cond_0
    iput-object v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->assistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    .line 42
    new-instance p2, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$gateListener$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$gateListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->gateListener:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$gateListener$1;

    .line 51
    new-instance p2, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$actionListener$1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$actionListener$1;-><init>(Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->actionListener:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$actionListener$1;

    .line 64
    invoke-virtual {p6, p1}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    return-void
.end method

.method public static final synthetic access$getDisplayId$p(Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->displayId:I

    return p0
.end method

.method public static final synthetic access$getExceptions$p(Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;)Ljava/util/List;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->exceptions:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getKeyguardGate$p(Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;)Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    return-object p0
.end method

.method public static final synthetic access$getNavigationModeGate$p(Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;)Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->navigationModeGate:Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;

    return-object p0
.end method

.method public static final synthetic access$setExceptionActive$p(Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->exceptionActive:Z

    return-void
.end method

.method public static final synthetic access$setNavigationHidden$p(Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->isNavigationHidden:Z

    return-void
.end method

.method public static final synthetic access$updateBlocking(Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->updateBlocking()V

    return-void
.end method

.method public static final synthetic access$updateKeyguardState(Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->updateKeyguardState()V

    return-void
.end method

.method public static final synthetic access$updateNavigationModeState(Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->updateNavigationModeState()V

    return-void
.end method

.method private final isActiveAssistantNga()Z
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->assistManager:Lcom/google/android/systemui/assist/AssistManagerGoogle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/assist/AssistManagerGoogle;->isActiveAssistantNga()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private final updateBlocking()V
    .locals 2

    .line 98
    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->isKeyguardShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    goto :goto_0

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->isNavigationGestural:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->isActiveAssistantNga()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {p0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    goto :goto_0

    .line 107
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->exceptionActive:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->isNavigationHidden:Z

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->setBlocking(Z)V

    :goto_0
    return-void
.end method

.method private final updateKeyguardState()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;->isKeyguardShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->isKeyguardShowing:Z

    .line 88
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->updateBlocking()V

    return-void
.end method

.method private final updateNavigationModeState()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->navigationModeGate:Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;->isNavigationGestural()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->isNavigationGestural:Z

    .line 93
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->updateBlocking()V

    return-void
.end method


# virtual methods
.method protected onActivate()V
    .locals 3

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->exceptionActive:Z

    .line 69
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->exceptions:Ljava/util/List;

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

    .line 70
    iget-object v2, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->actionListener:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$actionListener$1;

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/actions/Action;->registerListener(Lcom/google/android/systemui/columbus/actions/Action$Listener;)V

    .line 71
    iget-boolean v2, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->exceptionActive:Z

    invoke-virtual {v1}, Lcom/google/android/systemui/columbus/actions/Action;->isAvailable()Z

    move-result v1

    or-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->exceptionActive:Z

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->gateListener:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$gateListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    .line 74
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->updateKeyguardState()V

    .line 75
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->navigationModeGate:Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->gateListener:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$gateListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    .line 76
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->updateNavigationModeState()V

    .line 77
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->updateBlocking()V

    return-void
.end method

.method protected onDeactivate()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->exceptions:Ljava/util/List;

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

    .line 81
    iget-object v2, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->actionListener:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$actionListener$1;

    invoke-virtual {v1, v2}, Lcom/google/android/systemui/columbus/actions/Action;->unregisterListener(Lcom/google/android/systemui/columbus/actions/Action$Listener;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->navigationModeGate:Lcom/google/android/systemui/columbus/gates/NonGesturalNavigation;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->gateListener:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$gateListener$1;

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/columbus/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->keyguardGate:Lcom/google/android/systemui/columbus/gates/KeyguardVisibility;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->gateListener:Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility$gateListener$1;

    invoke-virtual {v0, p0}, Lcom/google/android/systemui/columbus/gates/Gate;->unregisterListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/google/android/systemui/columbus/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [isNavigationHidden -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->isNavigationHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; isNavigationGestural -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->isNavigationGestural:Z

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; isKeyguardShowing -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-boolean v1, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->isKeyguardShowing:Z

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; isActiveAssistantNga() -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->isActiveAssistantNga()Z

    move-result v1

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";; exceptionActive -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-boolean p0, p0, Lcom/google/android/systemui/columbus/gates/NavigationBarVisibility;->exceptionActive:Z

    .line 114
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
