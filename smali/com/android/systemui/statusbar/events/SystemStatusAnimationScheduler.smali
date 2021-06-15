.class public final Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;
.super Ljava/lang/Object;
.source "SystemStatusAnimationScheduler.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$Companion;,
        Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$ChipAnimatorAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSystemStatusAnimationScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SystemStatusAnimationScheduler.kt\ncom/android/systemui/statusbar/events/SystemStatusAnimationScheduler\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,373:1\n1571#2,9:374\n1819#2:383\n1820#2:385\n1580#2:386\n1571#2,9:387\n1819#2:396\n1820#2:398\n1580#2:399\n1819#2,2:400\n1819#2,2:402\n1819#2,2:404\n1#3:384\n1#3:397\n*E\n*S KotlinDebug\n*F\n+ 1 SystemStatusAnimationScheduler.kt\ncom/android/systemui/statusbar/events/SystemStatusAnimationScheduler\n*L\n218#1,9:374\n218#1:383\n218#1:385\n218#1:386\n231#1,9:387\n231#1:396\n231#1:398\n231#1:399\n249#1,2:400\n253#1,2:402\n257#1,2:404\n218#1:384\n231#1:397\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$Companion;


# instance fields
.field private animationState:I

.field private cancelExecutionRunnable:Ljava/lang/Runnable;

.field private final chipAnimationController:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

.field private final chipUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final coordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

.field private final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private hasPersistentDot:Z

.field private final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

.field private final statusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

.field private final systemAnimatorAdapter:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;

.field private final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field private final systemUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->Companion:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/events/SystemEventCoordinator;Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 1

    const-string v0, "coordinator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chipAnimationController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusBarWindowController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "systemClock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->coordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    .line 60
    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->chipAnimationController:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    .line 61
    iput-object p3, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->statusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    .line 62
    iput-object p4, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 63
    iput-object p5, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 87
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    .line 90
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->attachScheduler(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V

    .line 278
    new-instance p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemUpdateListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemUpdateListener$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->systemUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 282
    new-instance p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->systemAnimatorAdapter:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;

    .line 292
    new-instance p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$chipUpdateListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$chipUpdateListener$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->chipUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method public static final synthetic access$getChipAnimationController$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->chipAnimationController:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    return-object p0
.end method

.method public static final synthetic access$getChipUpdateListener$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->chipUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method public static final synthetic access$getExecutor$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/util/concurrency/DelayableExecutor;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    return-object p0
.end method

.method public static final synthetic access$getScheduledEvent$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/statusbar/events/StatusEvent;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    return-object p0
.end method

.method public static final synthetic access$getStatusBarWindowController$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->statusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    return-object p0
.end method

.method public static final synthetic access$getSystemAnimatorAdapter$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->systemAnimatorAdapter:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$systemAnimatorAdapter$1;

    return-object p0
.end method

.method public static final synthetic access$getSystemUpdateListener$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->systemUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method public static final synthetic access$notifySystemAnimationUpdate(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifySystemAnimationUpdate(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static final synthetic access$notifySystemFinish(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifySystemFinish()V

    return-void
.end method

.method public static final synthetic access$notifySystemStart(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifySystemStart()V

    return-void
.end method

.method public static final synthetic access$notifyTransitionToPersistentDot(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)Landroid/animation/Animator;
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifyTransitionToPersistentDot()Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setAnimationState$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->animationState:I

    return-void
.end method

.method public static final synthetic access$setCancelExecutionRunnable$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Ljava/lang/Runnable;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->cancelExecutionRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$setScheduledEvent$p(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;Lcom/android/systemui/statusbar/events/StatusEvent;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    return-void
.end method

.method private final clearDotIfVisible()V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifyHidePersistentDot()Landroid/animation/Animator;

    return-void
.end method

.method private final isImmersiveIndicatorEnabled()Z
    .locals 2

    const-string p0, "privacy"

    const-string v0, "enable_immersive_indicator"

    const/4 v1, 0x1

    .line 70
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private final isTooEarly()Z
    .locals 4

    .line 136
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p0}, Lcom/android/systemui/util/time/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Process;->getStartUptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final notifyHidePersistentDot()Landroid/animation/Animator;
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    .line 1571
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1579
    check-cast v2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    .line 232
    invoke-interface {v2}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;->onHidePersistentDot()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1579
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->animationState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    .line 236
    iput v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->animationState:I

    .line 239
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_3

    .line 240
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 241
    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private final notifySystemAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 257
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    .line 257
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;->onSystemChromeAnimationUpdate(Landroid/animation/ValueAnimator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final notifySystemFinish()V
    .locals 1

    .line 253
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    .line 253
    invoke-interface {v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;->onSystemChromeAnimationEnd()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final notifySystemStart()V
    .locals 1

    .line 249
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    .line 249
    invoke-interface {v0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;->onSystemChromeAnimationStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final notifyTransitionToPersistentDot()Landroid/animation/Animator;
    .locals 2

    .line 218
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    .line 1571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1579
    check-cast v1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    .line 219
    invoke-interface {v1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;->onSystemStatusAnimationTransitionToPersistentDot()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1579
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_2

    .line 222
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 223
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private final scheduleEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V
    .locals 3

    .line 143
    iget v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->animationState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 144
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->shouldUpdateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->updateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V

    :goto_1
    return-void

    .line 154
    :cond_3
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    .line 157
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 158
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->hasPersistentDot:Z

    .line 162
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$scheduleEvent$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$scheduleEvent$1;-><init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V

    const-wide/16 v1, 0x64

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->cancelExecutionRunnable:Ljava/lang/Runnable;

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->coordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->startObserving()V

    .line 266
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->addCallback(Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;)V

    return-void
.end method

.method public final getAnimationState()I
    .locals 0

    .line 78
    iget p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->animationState:I

    return p0
.end method

.method public final getHasPersistentDot()Z
    .locals 0

    .line 82
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->hasPersistentDot:Z

    return p0
.end method

.method public final onStatusEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->isTooEarly()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->isImmersiveIndicatorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 100
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 101
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getPriority()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    if-nez v1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getPriority()I

    move-result v1

    :goto_0
    if-gt v0, v1, :cond_3

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduledEvent:Lcom/android/systemui/statusbar/events/StatusEvent;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->shouldUpdateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 106
    :cond_3
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getShowAnimation()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 107
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->scheduleEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V

    goto :goto_2

    .line 108
    :cond_4
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/StatusEvent;->getForceVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    .line 109
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->hasPersistentDot:Z

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->notifyTransitionToPersistentDot()Landroid/animation/Animator;

    :cond_5
    :goto_2
    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 273
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->listeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 274
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->coordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemEventCoordinator;->stopObserving()V

    :cond_0
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p1, Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->removeCallback(Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;)V

    return-void
.end method

.method public final setShouldShowPersistentPrivacyIndicator(Z)V
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->hasPersistentDot:Z

    if-eq v0, p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->isImmersiveIndicatorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 128
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->hasPersistentDot:Z

    if-nez p1, :cond_1

    .line 131
    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->clearDotIfVisible()V

    :cond_1
    :goto_0
    return-void
.end method
